FROM cloudhammer/php
LABEL maintainer="Indexyz <indexyz@protonmail.com>"

WORKDIR /app

RUN cd / && \
    rm -rf /app && \
    git clone https://github.com/NimaQu/ss-panel-v3-mod_Uim.git /app && \
    cd /app && \
    cp config/.config.php.example config/.config.php && \
    chmod -R 755 storage && \
    chmod -R 777 /app/storage/framework/smarty/compile/ && \
    curl -SL https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php && \
    php composer.phar install
