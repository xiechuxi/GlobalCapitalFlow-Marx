#!/usr/bin/env sh
# 安装 global-capital-flow-marx skill 到用户级 skills 目录
# 用法: ./install.sh [copilot|agents|claude|<自定义 skills 目录>]

set -eu

SKILL_NAME="global-capital-flow-marx"
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SKILL_DIR=$(dirname "$SCRIPT_DIR")

usage() {
  cat <<'EOF'
用法: install.sh [目标]

目标:
  copilot   ~/.copilot/skills/<name>     GitHub Copilot CLI（默认）
  agents    ~/.agents/skills/<name>      VS Code / 通用 Agent Skills
  claude    ~/.claude/skills/<name>      Claude Code
  <路径>     <路径>/<name>                自定义 skills 根目录

示例:
  ./install.sh agents
  ./install.sh ~/my-skills
EOF
}

target="${1:-copilot}"

case "$target" in
  -h|--help|help)
    usage
    exit 0
    ;;
  copilot) root="$HOME/.copilot/skills" ;;
  agents)  root="$HOME/.agents/skills" ;;
  claude)  root="$HOME/.claude/skills" ;;
  *)       root="$target" ;;
esac

dest="$root/$SKILL_NAME"

if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
  echo "错误: 未找到 $SKILL_DIR/SKILL.md" >&2
  exit 1
fi

mkdir -p "$root"
rm -rf "$dest"
cp -R "$SKILL_DIR" "$dest"

echo "已安装到: $dest"
echo "包含文件:"
find "$dest" -type f | sed "s|$dest/|  |"
echo
echo "验证: 在支持的客户端中打开新会话，输入 /$SKILL_NAME 或直接描述要拆解的事件。"
