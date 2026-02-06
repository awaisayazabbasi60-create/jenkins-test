# Nginx ki image use karein
FROM nginx:alpine

# Apni index.html file ko Nginx ke default folder mein copy karein
COPY index.html /usr/share/nginx/html/index.html

# Port 80 ko expose karein
EXPOSE 80
