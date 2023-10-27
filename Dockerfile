# ---- Base Node ----
FROM node:16.14.0 AS base
WORKDIR /app
# Copy the entire project
COPY . .

# ---- Release ----
COPY ./ /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
