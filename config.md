## Configurações Iniciais para o Debian
se vier com o gnome default (provavel)

### 1. Atualizar o sistema
```bash

sudo aptupdate -y
sudo aptupgrade -y
```

### Instalar extensões e ajustes

```bash

sudo aptinstall gnome-shell-extension-dash-to-dock -y
sudo aptinstall gnome-tweaks -y
sudo aptinstall gnome-extensions-app -y
```
### Ativar botões de minimizar, maximizar e fechar

```bash

gsettings set org.gnome.desktop.wm.preferences button-layout "appmenu:minimize,maximize,close"
```

### Fastfetch

```bash
sudo aptinstall fastfetch -y
```
### Shell Fish
```bash
sudo aptinstall fish -y
```

### Definir como shell padrão
```bash
chsh -s $(which fish)
```

### Linguagens / compiladores
### Go
```bash
sudo aptinstall golang -y
```
### C++
```bash
sudo aptinstall g++ -y
```
### Git e GitHub
```bash
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@exemplo.com"
```
### Gerar chave SSH
```bash
ssh-keygen -t ed25519 -C "seuemail@exemplo.com"
```
Exibir chave pública
```bash
cat ~/.ssh/id_ed25519.pub
```
### IDE Zed
```bash
curl -f https://zed.dev/install.sh | sh
```
### Assembly (x86-64)
### Instalar NASM e Linker
```bash
sudo aptinstall nasm binutils -y
```
### Compilar e linkar um programa simples
```bash
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
```
### Extenções para as animações
### Compiz Windows Effect:
https://extensions.gnome.org/extension/3210/compiz-windows-effect/

### dash to dock: https://extensions.gnome.org/extension/307/dash-to-dock/

### para minimizar pela dock:
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'

### Compiz Magic Lamp Effect:
https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/

### Vídeo sobre configuração MacOS:
https://www.youtube.com/watch?v=ZlvIcv8FPE4
