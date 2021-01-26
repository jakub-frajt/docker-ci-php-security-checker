# docker-ci-php-security-checker
Docker image that contains https://github.com/fabpot/local-php-security-checker.

## Example of usage for Gitlab CI
```yaml
tests:BE:security:
  stage: tests
  image: jakubfrajt/docker-ci-php-security-checker:1.0.0
  script: local-php-security-checker
```
