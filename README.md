# App boilerplate - WordPress

Installation
------------
```sh
composer create-project --stability=dev tomaszrusiecki/wp-app-boilerplate
```

### Bedrock
```sh
git clone --depth=1 https://github.com/tomaszrusiecki/bedrock.git web && rm -rf web/.git  
```

`build/build.sh`
```sh
# Bedrock
composer install --no-interaction --working-dir=${BUILD_PATH}/web
rm -rf ${BUILD_PATH}/web/web/wp/wp-content
```

### Sage
`build.conf`
```sh
BUILD_WP_THEME_NAME=
```

`build/build.sh`
```sh
if [ -z $BUILD_WP_THEME_NAME ]; then
  echo "build.sh # required: BUILD_WP_THEME_NAME"
  exit 1
fi

# Theme
composer install --no-interaction --working-dir=${BUILD_PATH}/web/web/app/themes/${BUILD_WP_THEME_NAME}
```

`build/build_node.sh`
```sh
if [ -z $BUILD_WP_THEME_NAME ]; then
  echo "build_node.sh # required: BUILD_WP_THEME_NAME"
  exit 1
fi

# Theme
cd ${BUILD_PATH}/web/web/app/themes/${BUILD_WP_THEME_NAME} && npm i && npm run build:production
```
