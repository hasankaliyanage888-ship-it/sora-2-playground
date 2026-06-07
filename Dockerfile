FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV NEXT_TELEMETRY_DISABLED=1
RUN npm run build

ENV PORT=7860
EXPOSE 7860

CMD ["npm", "start"]
