# PHP Docker Image with Stuff

After I needed a simple PHP Docker image with MySQL extension yet again I thought I'll put it up here for when I need it again.

# Usage

I'm using it from my [PHP Template App](https://github.com/toomasr/php-template-app) but you don't have to. Easiest to get going is to add it to your `docker-compose.yml` like this.

```
php:
    image: toomasr:php7-with-stuff
```

I actually use it from **nginx** so my configuration looks like this. Please refer to [PHP Template App](https://github.com/toomasr/php-template-app) for a fully functioning example.

```
web:
  image: nginx
  ports:
    - "80:80"
  volumes:
    - ./src/vhost.conf:/etc/nginx/conf.d/vhost.conf
    - ./website/public_html:/var/www/html
  links:
    - php

php:
    image: toomasr:php7-with-stuff
    volumes:
      - ./website/public_html:/var/www/html
      - ./website/lib:/var/www/lib
```