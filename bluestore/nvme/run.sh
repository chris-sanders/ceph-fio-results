#!/bin/bash

CFG=$1

date
export RW=read
export BLOCK_SIZE=4k
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date
 
export RW=read
export BLOCK_SIZE=1M
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=randread
export BLOCK_SIZE=4k
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=randread
export BLOCK_SIZE=1M
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=write
export BLOCK_SIZE=4k
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=write
export BLOCK_SIZE=1M
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=randwrite
export BLOCK_SIZE=4k
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=randwrite
export BLOCK_SIZE=1M
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=rw
export BLOCK_SIZE=4k
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

export RW=rw
export BLOCK_SIZE=1M
rm -fr /dev/shm/fio/$RW-$BLOCK_SIZE
mkdir -p /dev/shm/fio/$RW-$BLOCK_SIZE
fio $CFG --output=$RW-$BLOCK_SIZE.out
date

