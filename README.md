# 🌤️ Application Météo avec Géolocalisation

Une application web moderne pour consulter la météo en fonction de votre localisation et enregistrer vos positions avec votre humeur.

## ✨ Fonctionnalités

- 📍 Géolocalisation automatique
- 🌡️ Affichage de la température et conditions météo
- 💨 Qualité de l'air (index DEFRA et PM2.5)
- 😊 Enregistrement de votre humeur avec chaque position
- 📊 Historique de toutes vos localisations
- 🎨 Interface moderne et responsive

## 🚀 Installation locale

### Prérequis

- Node.js (version 14 ou supérieure)
- npm (version 6 ou supérieure)
- Une clé API WeatherAPI.com (gratuite sur [weatherapi.com](https://www.weatherapi.com/))

### Étapes

1. **Cloner ou télécharger le projet**

2. **Installer les dépendances**
   ```bash
   npm install
   ```

3. **Configurer les variables d'environnement**
   
   Créez un fichier `.env` à la racine du projet :
   ```env
   WEATHER_API_KEY=votre_cle_api_ici
   PORT=3000
   ```
   
   > 💡 Vous pouvez copier `.env.example` et le renommer en `.env`

4. **Démarrer le serveur**
   ```bash
   npm start
   ```

5. **Ouvrir dans le navigateur**
   
   Accédez à `http://localhost:3000`

## 🌐 Déploiement en ligne

Pour permettre à d'autres personnes d'accéder à votre application, vous devez la déployer sur une plateforme cloud. Voici plusieurs options :

### Option 1: Render (Recommandé - Gratuit)

1. **Créer un compte sur [Render.com](https://render.com/)**

2. **Créer un nouveau "Web Service"**
   - Connectez votre dépôt GitHub (ou uploadez le code)
   - Sélectionnez le dépôt du projet

3. **Configurer le service**
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Environment**: `Node`

4. **Ajouter les variables d'environnement**
   - Dans la section "Environment Variables", ajoutez :
     - `WEATHER_API_KEY` = votre clé API météo
   - Le `PORT` est automatiquement défini par Render

5. **Déployer**
   - Cliquez sur "Create Web Service"
   - Votre application sera accessible via une URL comme `https://votre-app.onrender.com`

### Option 2: Railway (Gratuit avec crédits)

1. **Créer un compte sur [Railway.app](https://railway.app/)**

2. **Créer un nouveau projet**
   - Cliquez sur "New Project"
   - Sélectionnez "Deploy from GitHub repo" ou "Empty Project"

3. **Configurer**
   - Si vous utilisez GitHub, connectez votre dépôt
   - Railway détecte automatiquement Node.js

4. **Variables d'environnement**
   - Dans "Variables", ajoutez :
     - `WEATHER_API_KEY` = votre clé API météo

5. **Déployer**
   - Railway déploie automatiquement
   - Vous obtiendrez une URL publique

### Option 3: Heroku (Payant après essai gratuit)

1. **Installer Heroku CLI**
   ```bash
   # Windows
   # Téléchargez depuis https://devcenter.heroku.com/articles/heroku-cli
   ```

2. **Se connecter à Heroku**
   ```bash
   heroku login
   ```

3. **Créer une application**
   ```bash
   heroku create nom-de-votre-app
   ```

4. **Configurer les variables d'environnement**
   ```bash
   heroku config:set WEATHER_API_KEY=votre_cle_api_ici
   ```

5. **Déployer**
   ```bash
   git push heroku main
   ```

### Option 4: Vercel (Gratuit)

1. **Installer Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Déployer**
   ```bash
   vercel
   ```

3. **Configurer les variables d'environnement**
   - Dans le dashboard Vercel, allez dans Settings > Environment Variables
   - Ajoutez `WEATHER_API_KEY`

### Option 5: Votre propre serveur VPS

Si vous avez un serveur VPS (DigitalOcean, AWS EC2, etc.) :

1. **Installer Node.js sur le serveur**
   ```bash
   curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```

2. **Cloner le projet**
   ```bash
   git clone votre-repo
   cd votre-projet
   npm install
   ```

3. **Créer le fichier .env**
   ```bash
   nano .env
   # Ajoutez WEATHER_API_KEY=votre_cle
   ```

4. **Utiliser PM2 pour gérer le processus**
   ```bash
   npm install -g pm2
   pm2 start index.js --name weather-app
   pm2 save
   pm2 startup
   ```

5. **Configurer un reverse proxy (Nginx)**
   - Configurez Nginx pour pointer vers `http://localhost:3000`

## 🔒 Sécurité - Protection de la clé API

✅ **Déjà configuré dans ce projet :**

- Le fichier `.env` est dans `.gitignore` (ne sera jamais commité)
- La clé API est stockée dans les variables d'environnement
- La clé n'est jamais exposée dans le code client

⚠️ **Important :**
- Ne partagez JAMAIS votre fichier `.env`
- Ne commitez JAMAIS votre clé API sur GitHub
- Utilisez toujours les variables d'environnement de la plateforme de déploiement

## 📁 Structure du projet

```
Projet-Weather-API/
├── index.js              # Serveur Express et API
├── package.json          # Dépendances et scripts
├── .env                  # Variables d'environnement (NE PAS COMMITER)
├── .env.example         # Exemple de configuration
├── .gitignore           # Fichiers à ignorer par Git
├── weatherApp.db        # Base de données SQLite
└── public/
    ├── index.html       # Page principale
    └── all.html         # Page de liste des positions
```

## 🛠️ Technologies utilisées

- **Backend**: Node.js, Express.js
- **Base de données**: SQLite3
- **Frontend**: HTML, CSS, JavaScript, Bootstrap 5
- **API externe**: WeatherAPI.com
- **Icônes**: Bootstrap Icons

## 📝 Notes

- La base de données SQLite (`weatherApp.db`) sera créée automatiquement au premier lancement
- Pour un déploiement en production, considérez l'utilisation d'une base de données plus robuste (PostgreSQL, MongoDB)
- Les plateformes de déploiement gratuites peuvent avoir des limitations (temps d'inactivité, ressources)

## 🐛 Dépannage

**Erreur "Clé API non configurée"**
- Vérifiez que le fichier `.env` existe et contient `WEATHER_API_KEY`
- En production, vérifiez les variables d'environnement dans le dashboard de votre plateforme

**Erreur de port**
- Le port est automatiquement géré par les plateformes de déploiement
- En local, utilisez le port 3000 ou modifiez `PORT` dans `.env`

**Base de données non accessible**
- Vérifiez les permissions d'écriture dans le répertoire du projet
- Certaines plateformes nécessitent un stockage persistant pour SQLite

## 📄 Licence

ISC

---

**Créé avec ❤️ pour suivre la météo et votre humeur !**
