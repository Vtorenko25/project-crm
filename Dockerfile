FROM node:20

LABEL key=MyImage

WORKDIR /app

# Спочатку копіюємо тільки package.json та package-lock.json
COPY backend/package.json backend/package-lock.json /app/

RUN npm install

# Потім копіюємо решту файлів
COPY . /app/

EXPOSE 3000

CMD ["npm", "start"]

