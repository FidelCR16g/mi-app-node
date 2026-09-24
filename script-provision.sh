#!/usr/bin/env bash
set -euo pipefail
echo "=== Actualizando paquetes del sistema ==="
sudo apt-get update -y
sudo apt-get install -y curl build-essential net-tools nginx git
export HOME="/home/vagrant"
export NVM_DIR="$HOME/.nvm"
echo "=== Instalando NVM ==="
if [ ! -d "$NVM_DIR" ]; then
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
fi
echo 'export NVM_DIR="$HOME/.nvm"' >> "$HOME/.bashrc"
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> "$HOME/.bashrc"
. "$HOME/.nvm/nvm.sh"
echo "=== Instalando Node.js v22 ==="
nvm install 22
nvm alias default 22
nvm use default
echo "=== Verificando instalación ==="
node -v # v22.19.0
npm -v # 10.9.3
echo "=== OK ==="

