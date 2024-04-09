#!/bin/bash

UBUNTU_VERSION=$(lsb_release -rs)
echo "Версия Ubuntu: $UBUNTU_VERSION"
echo "Обновление списка пакетов..."
sudo apt update
echo "Обновление установленных пакетов..."
sudo apt upgrade -y
echo "Удаление неиспользуемых пакетов..."
sudo apt autoremove -y
echo "Очистка кэша..."
sudo apt autoclean
echo "Обновление завершено.
