CUDA_VISIBLE_DEVICES=2,3 python _target_finetune.py \
       -dt "market1501" -b 32  --num-instances 16 \
       -a "resnet50mulpart" --epochs 2 --iters 10 --num-parts 2 \
       --logs-dir "../saves/reid/duke2market/S2/finetune"   \
       --init "../saves/reid/duke2market/S1/R50Mix/model_best.pth.tar" \
       --data-dir "../data" \
       --pho 0   --uet-al 0.8  \
       --ece 0.4 --etri 0.6 --ema

       # --init "/mnt/AIProjects/trinh/Projects/DAPRH/pretrained/duke2market.pth.tar" \

