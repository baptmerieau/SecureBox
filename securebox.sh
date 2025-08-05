#!/bin/bash

echo "🔐 Lancement de SecureBox : sécurisation du système Linux..."

# Mettre à jour les paquets
echo "📦 Mise à jour des paquets..."
sudo apt update && sudo apt upgrade -y

# Activer le pare-feu ufw
echo "🧱 Activation du pare-feu UFW..."
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

# Installer Fail2Ban
echo "🚨 Installation de Fail2Ban..."
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

# Désactiver l'utilisateur root via SSH
echo "🔒 Sécurisation SSH : désactivation du login root..."
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd

echo "✅ Sécurisation terminée !"
