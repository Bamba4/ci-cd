# Étape 1 : Utiliser une image Node.js officielle
FROM node:16

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier le fichier package.json (et package-lock.json si présent)
COPY package.json ./
COPY package-lock.json ./

# Étape 4 : Installer les dépendances (y compris nodemon comme dépendance de développement)
RUN npm install

# Étape 5 : Copier le reste des fichiers de l'application
COPY . .

# Étape 6 : Exposer le port de l'application
EXPOSE 3000

# Étape 7 : Utiliser nodemon pour démarrer l'application
CMD ["npm", "start"]

