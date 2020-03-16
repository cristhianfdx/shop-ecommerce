FROM wordpress:5.3.2-apache

# Add sudo in order to run wp-cli as the www-data user
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install curl wget -y
RUN apt-get install curl wget -y
RUN apt-get install curl sudo less -y

# Add WP-CLI
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY .config/wp-su.sh /bin/wp/
RUN mkdir /root/.wp-cli/ && mkdir /root/.wp-cli/cache/
RUN chmod +x /bin/wp-cli.phar /bin/wp /root/.wp-cli/cache/

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
