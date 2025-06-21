#!/bin/bash


cd kitty_themes

for FILE in *; do
 ls -1d * > ../colors.conf
done