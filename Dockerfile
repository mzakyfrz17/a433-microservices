# Menggunakan gambar Docker resmi dari Node.js versi 18 yang berjalan di Alpine Linux
FROM node:18-alpine

# Menetapkan direktori kerja dalam container sebagai /src
WORKDIR /src

# Menyalin package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Menetapkan environment variable NODE_ENV sebagai production
ENV NODE_ENV=production

# Menjalankan perintah npm ci untuk menginstal dependensi sesuai package-lock.json
RUN npm ci

# Menyalin semua file JavaScript ke dalam direktori kerja
COPY ./*.js ./

# Menyalin file .env ke dalam direktori kerja
COPY ./.env ./

# Menjalankan perintah npm start saat container dijalankan
CMD ["npm", "start"]
