# 📤 Configuration Git et Push

## ✅ Étape 1 : Commit effectué

Votre code a été commité avec le message : "Amélioration du design et préparation pour le déploiement"

## 🔗 Étape 2 : Créer un dépôt sur GitHub

1. Allez sur [github.com](https://github.com)
2. Cliquez sur le bouton "+" en haut à droite → "New repository"
3. Donnez un nom à votre dépôt (ex: `weather-api-app`)
4. **Ne cochez PAS** "Initialize with README" (vous avez déjà un README)
5. Cliquez sur "Create repository"

## 🚀 Étape 3 : Connecter et pousser

Une fois votre dépôt créé sur GitHub, exécutez ces commandes :

```bash
# Ajouter le remote (remplacez USERNAME et REPO_NAME)
git remote add origin https://github.com/USERNAME/REPO_NAME.git

# Renommer la branche en main (si nécessaire)
git branch -M main

# Pousser le code
git push -u origin main
```

### Exemple complet :

```bash
git remote add origin https://github.com/votre-username/weather-api-app.git
git branch -M main
git push -u origin main
```

## 🔐 Si vous utilisez l'authentification

Si GitHub vous demande une authentification :

1. **Option 1 : Token d'accès personnel**
   - Allez dans GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Créez un nouveau token avec les permissions `repo`
   - Utilisez le token comme mot de passe lors du push

2. **Option 2 : GitHub CLI**
   ```bash
   gh auth login
   git push -u origin main
   ```

## 📝 Commandes Git utiles

```bash
# Voir l'état
git status

# Voir l'historique
git log

# Ajouter des fichiers modifiés
git add .

# Faire un commit
git commit -m "Votre message"

# Pousser les changements
git push

# Voir les remotes configurés
git remote -v
```

## ⚠️ Note importante

Le fichier `.env` avec votre clé API **ne sera PAS** poussé sur GitHub (il est dans `.gitignore`). C'est normal et sécurisé !

Pour le déploiement, vous devrez ajouter la variable `WEATHER_API_KEY` dans les paramètres de votre plateforme de déploiement.
