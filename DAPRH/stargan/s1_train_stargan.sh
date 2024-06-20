# Train StarGAN on custom datasets
LABEL_DIM=7
CROP_SIZE=128
IMG_SIZE=128
TRAIN_IMG_DIR="/old/home/ccvn/Workspace/trinh/DAPRH/data/4Gan/duke2market/train"
BATCHSIZE=16
Lidt=1
Lrec=10
Lgp=10
Lcls=1
CUDA_VISIBLE_DEVICES=2,3 python main.py --mode train --dataset RaFD --rafd_crop_size $CROP_SIZE --image_size $IMG_SIZE \
               --c_dim $LABEL_DIM --rafd_image_dir $TRAIN_IMG_DIR --batch_size $BATCHSIZE\
               --sample_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/samples \
               --log_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/logs \
               --model_save_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2market/models \
               --result_dir /old/home/ccvn/Workspace/trinh/DAPRH/saves/Gan-duke2mark/results \
               --lambda_idt $Lidt \
               --lambda_rec $Lrec \
               --lambda_gp $Lgp --lambda_cls $Lcls