#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

UBUNTU_VERSION=$(lsb_release -rs)
echo -e "${YELLOW}Версия Ubuntu: $UBUNTU_VERSION${NC}"

echo -e "${GREEN}Обновление списка пакетов...${NC}"
sudo apt update
echo -e "${GREEN}Обновление установленных пакетов...${NC}"
sudo apt upgrade -y
echo -e "${GREEN}Удаление неиспользуемых пакетов...${NC}"
sudo apt autoremove -y
echo -e "${GREEN}Очистка кэша...${NC}"
sudo apt autoclean
echo -e "${GREEN}Обновление завершено.${NC}"

UBUNTU_VERSION=$(lsb_release -rs)
echo -e "${GREEN}Версия Ubuntu: $UBUNTU_VERSION ${NC}"
