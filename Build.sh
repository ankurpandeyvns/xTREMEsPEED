#!/bin/bash
make mrproper
export CROSS_COMPILE=/mnt/GAMES/Hexagon/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
make xTREMEsPEED_defconfig
make -j4
mv /mnt/GAMES/SOURCES/SRCS/xTREMEsPEED/arch/arm/boot/zImage /mnt/GAMES/Kernel/xTREMEsPEED/
rm /mnt/GAMES/Kernel/xTREMEsPEED/xTREMEsPEED.zip && rm /mnt/GAMES/SOURCES/SRCS/xTREMEsPEED/xTREMEsPEED.zip
cd /mnt/GAMES/Kernel/xTREMEsPEED/
zip -r xTREMEsPEED.zip .
mv /mnt/GAMES/Kernel/xTREMEsPEED/xTREMEsPEED.zip /mnt/GAMES/SOURCES/SRCS/xTREMEsPEED/
