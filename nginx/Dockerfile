FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

RUN wget https://github.com/nginxinc/nginx-amplify-agent/raw/master/packages/install.sh

RUN API_KEY='14e0e4daf2a89c47da4c1c977fa268cb' sh ./install.sh
