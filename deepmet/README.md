### How to run

```
git clone https://github.com/farzadrastegar/metaphor-detection-DeepMet.git
```

```
nohup sudo docker run --rm --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=all -v ${PWD}/metaphor-detection-DeepMet:/metaphor farzadras/deepmet:gpu python3 /metaphor/DeepMet-vua.py >DeepMet-vua.out 2>&1 &
```

### Note

The image at `farzadras/deepmet:gpu` is not fully functional yet.

