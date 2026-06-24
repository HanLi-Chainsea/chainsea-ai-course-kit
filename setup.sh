#!/usr/bin/env bash
# 一鍵把筆記本環境裝好。避開系統 Python 的 externally-managed 限制(用 venv)。
set -e
echo "建立 venv 並安裝 ipykernel…(第一次約 30 秒)"
python3 -m venv .venv-course
./.venv-course/bin/pip install -q --upgrade pip
./.venv-course/bin/pip install -q ipykernel pydantic python-dotenv
./.venv-course/bin/python -m ipykernel install --user --name course --display-name "Python (課程)"
echo ""
echo "✓ 完成!回筆記本 → 右上角 Select Kernel → 選「Python (課程)」→ 一路按 ▶"
echo "  (想跑 M12 真 AI:再跑 ./.venv-course/bin/pip install -r m12-crew-starter/requirements.txt 並設好金鑰)"
