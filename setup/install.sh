image=carlogauss33/edd-runner
command=$1
shift

if [ -z "$command" ] || [ "$command" = "help" ]; then
    echo "Uso: edd-runner <comando> [argumentos]"
    exit 0
fi

if [ "$command" = "upgrade" ]; then
    echo "Actualizando edd-runner..."
    docker pull $image
    echo "edd-runner actualizado."
    exit 0
fi


docker ps > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Docker Desktop no esta corriendo. Por favor, inicie Docker Desktop y vuelva a intentar."
    exit 1
fi

docker image inspect $image > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "edd-runner no esta instalado. Instalando..."
    docker pull $image
    echo "edd-runner instalado."
fi

run_command() {
    docker run --rm -v $(pwd):/runner -w /runner carlogauss33/edd-runner sh -c "$1"
}

if [ -f Makefile ]; then
    echo "Re compilando..."
    run_command "make clean > /dev/null 2>&1"
    run_command "make > /dev/null 2>&1"
    echo "Compilado, ejecutando...\n\n"
fi

run_command $command $@ 2>&1