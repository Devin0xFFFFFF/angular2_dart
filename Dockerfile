FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app/
RUN pub get --offline

RUN pub build --mode=release

RUN mkdir -p /usr/share/nginx/angular2

RUN cp -r ./build/web/. /usr/share/nginx/angular2

#EXPOSE 8080

ENTRYPOINT ["true"]
#CMD pub serve web --hostname=0.0.0.0 #--mode=debug
#ENTRYPOINT ["/usr/lib/dart/bin/pub", "serve", "web", "--port=8080"]
