DATASETS=~/Datasets/NeRF/blender
for DIR in "$DATASETS"/*; do
    if [ -d "$DIR" ]; then
        SCENE=$(basename $DIR)
        echo "Training on: $SCENE"

        # # base config
        # CONFIG="configs/nerf/base.json"
        # EXPERIMENT_NAME="base"
        # python scripts/run.py --network $CONFIG --save_snapshot out/$SCENE/$EXPERIMENT_NAME/snapshot.pt --scene $DIR --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json

        # # base_1layer config
        # CONFIG="configs/nerf/base_1layer.json"
        # EXPERIMENT_NAME="base_1layer"
        # python scripts/run.py --network $CONFIG --save_snapshot out/$SCENE/$EXPERIMENT_NAME/snapshot.pt --scene $DIR --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json

        # # small config
        # CONFIG="configs/nerf/small.json"
        # EXPERIMENT_NAME="small"
        # python scripts/run.py --network $CONFIG --save_snapshot out/$SCENE/$EXPERIMENT_NAME/snapshot.pt --scene $DIR --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json

        # log2_hashmap_size_10 config
        CONFIG="configs/nerf/log2_hashmap_size_10.json"
        EXPERIMENT_NAME="log2_hashmap_size_10"
        python scripts/run.py --network $CONFIG --save_snapshot out/$SCENE/$EXPERIMENT_NAME/snapshot.pt --scene $DIR --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json

    fi
done
