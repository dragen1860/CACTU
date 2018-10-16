#!/usr/bin/env bash

python main.py \
    --datasource=omniglot --encoder=acai --partition_algorithm=kmeans \
    --save_checkpoints=True \
    --num_classes_train=20 --num_classes_val=5 \
    --inner_update_batch_size_train=1 --inner_update_batch_size_val=5 --outer_update_batch_size=5 \
    --num_filters=32 --norm=batch_norm --max_pool=False --update_lr=0.05 --num_updates=5 \
    --metatrain_iterations=12000 --meta_batch_size=8 --mt_mode=encenc --mv_mode=gtgt \
    --num_encoding_dims=256 \
    --logdir=./log/omniglot/oracle \
    --test_set=False --train=True