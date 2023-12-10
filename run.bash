DATASETS=~/Datasets/NeRF/blender
for DIR in "$DATASETS"/*; do
    if [ -d "$DIR" ]; then
        SCENE=$(basename $DIR)
        echo "Training on: $SCENE"
        python scripts/run.py --scene $DIR --save_snapshot out/$SCENE/default/snapshot.pt --test_transforms ~/Datasets/NeRF/blender/$SCENE/transforms_test.json
    fi
done
