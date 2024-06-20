CUDA_VISIBLE_DEVICES=2,3 python test_model.py \
        -dt "market1501" --data-dir "../data" \
        -a resnet50 --features 0  -b 128 \
        --resume "/old/home/ccvn/Workspace/trinh/DAPRH/saves/reid/duke2market/S2/finetune/model_best.pth.tar" \
        --rerank #optional