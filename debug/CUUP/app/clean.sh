#!/bin/bash


stty sane

pkill -9 jt_sran_5G_cuup
pkill -9 CuUpApp

rm -rf /dev/mqueue/vos_mq_data_*CuUpApp*
rm -rf /dev/mqueue/vos_mq._jt_sran_5G_cuup*
rm -rf /dev/shm/cuup_shm
rm -f vos.db
sync


