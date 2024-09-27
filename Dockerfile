# Imagem node
FROM node:14

# Diretório dos arquivos no container
WORKDIR /app

# Copia os arquivos package*.json ./ para o diretório de arquivo
COPY package*.json ./

# Baixa e instala as dependências
RUN npm install

# Copia todos os arquivos da pasta raiz para a pasta de trabalho no container
COPY . .

# Criando algumas variáveis de ambiente
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=123456
ENV MYSQL_DATABASE=testdb

# Porta exposta em que a aplicação roda
EXPOSE 8080

# Comando utilizado para iniciar a aplicação
CMD [ "node", "server.js" ]