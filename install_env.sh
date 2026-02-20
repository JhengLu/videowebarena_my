#!/bin/bash
set -e

VENV_DIR="venv"
PYTHON="${PYTHON:-python3}"

# Install uv if not available
if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin:$PATH"
fi

# Create venv if it doesn't exist
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment..."
    $PYTHON -m venv "$VENV_DIR"
fi

echo "Installing requirements with uv..."
uv pip install --no-build-isolation -r requirements.txt --python "$VENV_DIR/bin/python"

echo "Done! Activate with: source $VENV_DIR/bin/activate"
