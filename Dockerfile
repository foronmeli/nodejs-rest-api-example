#Aqui es donde se coge y se usa la imagen del Dcoker
FROM node:22-alpine

#Se configura el ambiente
ENV PORT=4000

#Se crea la carpeta donde se va a poner todo el proyecto y se entra
WORKDIR /usr/src/app

# Install dependencies dentro del contenedor
COPY package.json /usr/src/app/
#Se intalan las librerias necesarias y se corren
RUN npm install

# Copy source, se copia todo dentro de la raiz de la carpeta
COPY server.js /usr/src/app

#Aqui se configura el puerto en donde se va a exponer
EXPOSE $PORT
#Aqui es con el que se inicia
CMD [ "npm", "start" ]
