#!/bin/bash
# 网页内容获取工具 - Web Content Fetcher
# 按优先级尝试多个服务获取网页 Markdown 内容
# 带 fallback 机制：一个服务失败自动换下一个

URL="$1"

if [ -z "$URL" ]; then
    echo "用法: $0 <url>"
    exit 1
fi

echo "=== 开始获取: $URL ===" >&2

# Fallback 链：按优先级尝试
SERVICES=(
    "r.jina.ai"
    "markdown.new"
    "defuddle.md"
)

for service in "${SERVICES[@]}"; do
    echo "--- 尝试 $service ---" >&2
    result=$(curl -s --max-time 30 "https://$service/$URL" 2>&1)
    exit_code=$?

    if [ $exit_code -eq 0 ] && [ -n "$result" ] && [ ${#result} -gt 100 ]; then
        echo "✅ $service 成功（${#result} 字符）" >&2
        echo "$result"
        exit 0
    fi

    if [ $exit_code -ne 0 ]; then
        echo "❌ $service 连接失败（exit code: $exit_code）" >&2
    elif [ -z "$result" ]; then
        echo "❌ $service 返回空内容" >&2
    else
        echo "❌ $service 内容不足（${#result} 字符）" >&2
    fi
done

# 所有服务都失败了，输出提示让 agent 用 web_fetch 工具
echo "⚠️ 所有外部服务均失败，请使用内置 web_fetch 工具作为最终 fallback" >&2
cat <<'FALLBACK_PROMPT'
FETCH_FAILED
FALLBACK_PROMPT
exit 1
