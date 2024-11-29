#!/bin/bash

# Зупинити виконання скрипту при виникненні помилки
set -e

# Оголошення функцій
start_containers() {
    echo "Запуск контейнерів..."
    docker-compose up -d
}

stop_containers() {
    echo "Зупинка контейнерів..."
    docker-compose down
}

restart_containers() {
    echo "Перезапуск контейнерів..."
    docker-compose down
    docker-compose up -d
}

view_logs() {
    echo "Перегляд логів контейнерів..."
    docker-compose logs -f
}

# Меню для вибору дії
echo "Оберіть дію:"
echo "1. Запустити контейнери"
echo "2. Зупинити контейнери"
echo "3. Перезапустити контейнери"
echo "4. Переглянути логи"
read -p "Введіть номер дії: " action

case $action in
    1)
        start_containers
        ;;
    2)
        stop_containers
        ;;
    3)
        restart_containers
        ;;
    4)
        view_logs
        ;;
    *)
        echo "Невірний вибір!"
        exit 1
        ;;
esac