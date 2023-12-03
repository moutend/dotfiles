FROM node:20

WORKDIR /app

RUN npm install -g cloudflare@latest
RUN npm install -g wrangler@latest
RUN npm install -g prettier@latest
RUN npm install -g typescript@latest
RUN echo 'export PS1="# "' >> /root/.profile

CMD ["/bin/bash", "-l"]
