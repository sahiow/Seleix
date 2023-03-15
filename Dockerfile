FROM nginx:latest

LABEL ifeng fscarmen mack-a ygkkk

EXPOSE 80

USER root

ENV uuid a160d374-aac6-4869-ad5e-17c14836b0b8

COPY nginx.conf /etc/nginx/nginx.conf

COPY config.yaml ./

COPY entrypoint.sh ./

RUN chmod a+x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]

