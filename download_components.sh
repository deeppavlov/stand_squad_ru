#!/bin/bash
echo downloading model files..
wget http://lnsigo.mipt.ru/export/deepreply_data/stand_squad_ru/log_char_300_pretrained_train_full.tar.gz &&
tar -zxvf log_char_300_pretrained_train_full.tar.gz &&
rm log_char_300_pretrained_train_full.tar.gz &&
echo download successful