# ⚙️ Configuration

## Créer le fichier .env

Créez un fichier nommé `.env` à la racine du projet avec le contenu suivant :

```env
WEATHER_API_KEY=votre_cle_api_ici
PORT=3000
```

### Étapes détaillées

1. **Obtenir une clé API WeatherAPI**
   - Allez sur https://www.weatherapi.com/
   - Créez un compte gratuit
   - Copiez votre clé API depuis le dashboard

2. **Créer le fichier .env**
   - À la racine du projet (même niveau que `index.js`)
   - Remplacez `votre_cle_api_ici` par votre vraie clé API
   - Exemple :
     ```env
     WEATHER_API_KEY=abc123def456ghi789
     PORT=3000
     ```

3. **Vérifier**
   - Le fichier `.env` est déjà dans `.gitignore`
   - Il ne sera jamais commité sur GitHub
   - Vos clés API restent sécurisées

## Variables d'environnement

| Variable | Description | Requis | Défaut |
|----------|-------------|--------|--------|
| `WEATHER_API_KEY` | Clé API WeatherAPI.com | ✅ Oui | - |
| `PORT` | Port du serveur | ❌ Non | 3000 |

## Pour le déploiement

Sur les plateformes de déploiement (Render, Railway, etc.), ajoutez ces variables dans la section "Environment Variables" du dashboard, **pas** dans un fichier `.env`.
