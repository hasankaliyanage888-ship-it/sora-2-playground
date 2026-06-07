FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install --legacy-peer-deps

COPY . .

ENV NEXT_TELEMETRY_DISABLED=1
ENV CI=false

RUN npm run build

ENV PORT=7860
EXPOSE 7860

CMD ["npm", "start"]
