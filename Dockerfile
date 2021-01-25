FROM curlimages/curl:7.69.1

ENV PHP_CHECKER_VERSION=1.0.0

USER root

RUN curl -o /tmp/security_checker -L "https://github.com/fabpot/local-php-security-checker/releases/download/v${PHP_CHECKER_VERSION}/local-php-security-checker_${PHP_CHECKER_VERSION}_linux_amd64" \
    && mv /tmp/security_checker /usr/bin/local-php-security-checker \
    && chmod +x /usr/bin/local-php-security-checker

USER curl_user

CMD ["local-php-security-checker"]