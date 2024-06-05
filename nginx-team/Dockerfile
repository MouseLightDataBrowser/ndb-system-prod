FROM nginx:1.25.5

COPY nginx.conf /etc/nginx/nginx.conf

# Copy nginx-internal stub_status config
COPY ./conf.d/stub_status.conf /etc/nginx/conf.d
