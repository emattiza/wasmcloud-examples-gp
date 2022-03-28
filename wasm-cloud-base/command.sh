export GP_HTTPS_HOST=$(gp url 4000)
export GP_HOST=$(echo "$GP_HTTPS_HOST" | sed s#https://##)
export DIR=$(pwd)
gp sync-done wasmCloud-up
docker-compose -f wasm-cloud-base/docker-compose.yml up
