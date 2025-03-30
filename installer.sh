apt install wget gnupg
mkdir -p $PREFIX/etc/apt/sources.list.d
wget https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/ivam3-termux-packages.list -O $PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list
curl -fsSL "https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/dists/stable/public_key.gpg" \
|gpg --dearmor|tee "$PREFIX/etc/apt/trusted.gpg.d/ivam3.gpg" >/dev/null
apt update
yes|apt install wget gnupg && \
mkdir -p $PREFIX/etc/apt/sources.list.d && \
wget https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/ivam3-termux-packages.list -O \
$PREFIX/etc/apt/sources.list.d/ivam3-termux-packages.list && \
curl -fsSL "https://raw.githubusercontent.com/ivam3/termux-packages/gh-pages/dists/stable/public_key.gpg" \
|gpg --dearmor|tee "$PREFIX/etc/apt/trusted.gpg.d/ivam3.gpg" >/dev/null && \
apt update
