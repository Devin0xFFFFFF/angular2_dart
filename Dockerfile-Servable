FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

EXPOSE 8080

CMD pub serve web --hostname=0.0.0.0 #--mode=debug
#ENTRYPOINT ["/usr/lib/dart/bin/pub", "serve", "web", "--port=8080"]
