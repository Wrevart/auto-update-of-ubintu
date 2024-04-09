#!/bin/bash

UBUNTU_VERSION=$(lsb_release -rs)
echo "Версия Ubuntu: $UBUNTU_VERSION"
LATEST_VERSION=$(curl -s https://example.com/ubuntu-latest-version)
echo "Актуальная версия Ubuntu: $LATEST_VERSION"

if [ "$(printf '%s\n' "$LATEST_VERSION" "$CURRENT_VERSION" | sort -V | head -n1)" != "$LATEST_VERSION" ]; then
    echo "Установленная версия ($CURRENT_VERSION) не является актуальной ($LATEST_VERSION). Начало обновления..."
    echo "Обновление списка пакетов..."
    sudo apt update
    echo "Обновление установленных пакетов..."
    sudo apt upgrade -y
    echo "Удаление неиспользуемых пакетов..."
    sudo apt autoremove -y
    echo "Очистка кэша..."
    sudo apt autoclean
    echo "Обновление завершено."
    echo "Система обновлена. Требуется перезагрузка."
    sudo reboot
else
    echo "Установленная версия ($CURRENT_VERSION) актуальна."
fi
