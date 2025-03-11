#!/bin/bash
set -e

cd Devops-Ynov/api/

export PING_LISTEN_PORT=5000

echo "Init du projet"
npm init -y

echo "Installation de TypeScript"
npm install typescript --save-dev

echo "Compilation TypeScript"
npx tsc || echo "Erreur lors de la compilation TypeScript"

echo "Lancement de l'application"
node build/index.js

