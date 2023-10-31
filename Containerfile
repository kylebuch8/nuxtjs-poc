FROM registry.access.redhat.com/ubi8/nodejs-18:1-32.1679484519

COPY . /opt/app-root/src

USER root
RUN chown -R 1001:0 /opt/app-root/src

USER 1001

RUN npm install
RUN npm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD ["npm", "run", "server"]