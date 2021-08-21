

FROM ubuntu
MAINTAINER khatri.narang09@gmail.com
RUN apt -y update
COPY ./run.sh /
RUN chmod +x /run.sh
ADD target/narang-1.0-SNAPSHOT.jar /
ENTRYPOINT ["/run.sh"]
CMD ["true" , "hello" , "name" ]
EXPOSE 80
