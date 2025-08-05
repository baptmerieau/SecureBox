# SecureBox 🔐

SecureBox est un script bash de sécurisation Linux destiné à automatiser les bonnes pratiques de base sur un serveur Debian/Ubuntu.

## ⚙️ Fonctionnalités actuelles

- Mise à jour automatique des paquets
- Activation du pare-feu UFW (SSH autorisé)
- Installation et activation de Fail2Ban
- Sécurisation du SSH (désactivation du root login)

## 🚀 Utilisation

```bash
git clone https://github.com/baptmerieau/SecureBox.git
cd SecureBox
chmod +x securebox.sh
./securebox.sh
