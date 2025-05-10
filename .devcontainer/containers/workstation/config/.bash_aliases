php_docker() {
  docker exec -it ${PHP_CONTAINER} php "$PWD/$1" "${@:2}"
}
