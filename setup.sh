#!/usr/bin/env bash
# 一鍵把筆記本環境裝好。避開系統 Python 的 externally-managed 限制(用 venv,不碰系統)。
set -e

echo "▶ 建立 venv 並安裝 ipykernel…(第一次約 30 秒)"
if ! python3 -m venv .venv-course 2>/tmp/venv_err; then
  echo "✗ 建 venv 失敗。多半是缺 python3-venv,試試:"
  echo "    sudo apt-get update && sudo apt-get install -y python3-venv"
  echo "  （錯誤詳情:$(cat /tmp/venv_err)）"
  exit 1
fi
./.venv-course/bin/pip install -q --upgrade pip
./.venv-course/bin/pip install -q ipykernel pydantic python-dotenv
./.venv-course/bin/python -m ipykernel install --user --name course --display-name "Python (課程)" >/dev/null

PYBIN="$(pwd)/.venv-course/bin/python"
echo ""
echo "✓ 完成!環境在:$PYBIN"
echo ""
echo "在筆記本選 kernel(看不到「Python (課程)」或「course」都對,看不到就用這個更穩):"
echo "   右上角 Select Kernel → Select Another Kernel… → Python Environments…"
echo "   → 選路徑是這個的:$PYBIN"
echo "   （清單沒更新就按刷新 🔄,或 Ctrl/Cmd+Shift+P → Developer: Reload Window）"
echo ""
echo "想跑 M12 真 AI:再跑  ./.venv-course/bin/pip install -r m12-crew-starter/requirements.txt  並設好金鑰"
