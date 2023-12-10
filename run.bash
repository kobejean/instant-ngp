DATASETS=~/Datasets/NeRF/blender
for DIR in "$DATASETS"/*; do
    if [ -d "$DIR" ]; then
        SCENE=$(basename $DIR)
        echo "Training on: $SCENE"

        # base config
        CONFIG="configs/nerf/base.json"
        EXPERIMENT_NAME="base"
        python scripts/run.py --network $CONFIG --save_snapshot out/$SCENE/$EXPERIMENT_NAME/snapshot.pt --scene $DIR --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json

        # base_1layer config
        CONFIG="configs/nerf/base_1layer.json"
        EXPERIMENT_NAME="base_1layer"
        python scripts/run.py --network $CONFIG --save_snapshot out/$SCENE/$EXPERIMENT_NAME/snapshot.pt --scene $DIR --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json

    fi
done
