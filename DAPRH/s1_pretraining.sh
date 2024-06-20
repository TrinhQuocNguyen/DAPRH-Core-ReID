#for example
# CUDA_VISIBLE_DEVICES=0,1 
python _source_pretrain.py \
    -ds "dukemtmc" -dt "market1501" \
    -a "resnet101"  --iters 2 \
	--num-instances 16 -b 128 --margin 0.3 \
    --warmup-step 1 --lr 0.00035 --milestones 40 70  --epochs 2 --eval-step 1 \
    --print-freq 25 \
	--logs-dir "../saves/reid/duke2market/S1/R50Mix"  \
    --data-dir "../data" \
    --fake-data-dir "../data/SyntheImgs"   \
    --ratio 4 1 \
    --dim --lamda 0.05