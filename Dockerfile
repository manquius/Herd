# build environment
FROM node:12.19.0-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm ci --silent
COPY . ./ 
RUN npm run build

# production environment
FROM nginx:stable-alpine
RUN mkdir -p /usr/share/nginx/html/ui-react
COPY --from=build /app/build /usr/share/nginx/html/ui-react
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
