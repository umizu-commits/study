FROM --platform=linux/x86_64 mysql:5.7

ENV MYSQL_ROOT_PASSWORD=college

COPY init.d /

EXPOSE 3306/tcp 33060/tcp

CMD ["mysqld"]
