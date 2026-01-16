# 🚀 Guide de Déploiement Rapide

## Configuration des Variables d'Environnement

Créez un fichier `.env` à la racine du projet avec le contenu suivant :

```env
WEATHER_API_KEY=votre_cle_api_ici
PORT=3000
```

> **Important**: Ne commitez JAMAIS le fichier `.env` ! Il est déjà dans `.gitignore`.

## Options de Déploiement

### 🎯 Render.com (Recommandé - Gratuit)

1. Allez sur [render.com](https://render.com) et créez un compte
2. Cliquez sur "New +" → "Web Service"
3. Connectez votre dépôt GitHub
4. Configurez :
   - **Name**: nom-de-votre-app
   - **Environment**: Node
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
5. Dans "Environment Variables", ajoutez :
   - `WEATHER_API_KEY` = votre clé API
6. Cliquez sur "Create Web Service"
7. Votre app sera accessible sur `https://nom-de-votre-app.onrender.com`

### 🚂 Railway.app (Gratuit avec crédits)

1. Allez sur [railway.app](https://railway.app) et créez un compte
2. Cliquez sur "New Project" → "Deploy from GitHub repo"
3. Sélectionnez votre dépôt
4. Dans "Variables", ajoutez `WEATHER_API_KEY`
5. Railway déploie automatiquement
6. Vous obtiendrez une URL publique

### ⚡ Vercel (Gratuit)

1. Installez Vercel CLI : `npm install -g vercel`
2. Dans le dossier du projet : `vercel`
3. Suivez les instructions
4. Dans le dashboard Vercel → Settings → Environment Variables
5. Ajoutez `WEATHER_API_KEY`
6. Redéployez si nécessaire

## 🔑 Obtenir une Clé API WeatherAPI

1. Allez sur [weatherapi.com](https://www.weatherapi.com/)
2. Créez un compte gratuit
3. Copiez votre clé API depuis le dashboard
4. Utilisez-la dans votre fichier `.env` ou dans les variables d'environnement de votre plateforme

## ✅ Vérification après Déploiement

1. Vérifiez que l'application charge correctement
2. Testez la géolocalisation
3. Vérifiez que les données météo s'affichent
4. Testez l'enregistrement d'une position

## 🔒 Sécurité

- ✅ Votre clé API est protégée (dans les variables d'environnement)
- ✅ Le fichier `.env` n'est jamais commité
- ✅ La clé n'est jamais exposée au client
