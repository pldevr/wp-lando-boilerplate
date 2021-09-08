# App boilerplate - WordPress

Installation
------------
```
composer create-project --stability=dev tomaszrusiecki/wp-app-boilerplate
```

### Bedrock
```sh
git clone --depth=1 https://github.com/tomaszrusiecki/bedrock.git web && rm -rf web/.git  
```


`build/build.sh`

```shell
# Bedrock
composer install --no-interaction --working-dir=${BUILD_PATH}/web
rm -rf ${BUILD_PATH}/web/web/wp/wp-content
```
