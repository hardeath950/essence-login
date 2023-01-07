FROM openjdk:17-jdk

COPY login /usr/src/myapp/login
COPY libs /usr/src/myapp/libs

WORKDIR /usr/src/myapp/login

RUN sed -i -e 's/\r$//' entrypoint.sh

RUN chmod +x LoginServerTask.sh

RUN chmod +x entrypoint.sh

EXPOSE 2106 9014

CMD ["./LoginServerTask.sh"]
