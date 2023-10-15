#!/bin/bash

echo '[+] HACIENDO PULL'
echo ''

git pull

echo ''
echo '[+] INSTALANDO DEPENDENCIAS NUEVAS'
echo ''
npm i

echo ''
echo '[+] COMPILANDO....'
echo ''

NODE_ENV=development npm run build

echo ''
echo '[+] REINICIANDO SERVICIO...'
echo ''

pm2 restart 1
pm2 logs
