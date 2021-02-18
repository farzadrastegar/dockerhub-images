### How to build the docker image

```
nohup sudo docker build -t farzadras/met-all-in-one:gpu . >build.out 2>&1 &
```
This image is available on Docker Hub at `farzadras/met-all-in-one:gpu`.

### How to run the [DeepMet code](https://github.com/farzadrastegar/metaphor-detection-DeepMet)
1. Get code from Github.
   ```
   git clone https://github.com/farzadrastegar/metaphor-detection-DeepMet.git
   ```
2. Run code using the command below on a machine with GPU.
   ```
   nohup sudo docker run --rm  -e NVIDIA_VISIBLE_DEVICES=all -v ${PWD}/metaphor-detection-DeepMet:/metaphor farzadras/met-all-in-one:gpu python /metaphor/DeepMet-vua.py >DeepMet-vua.out 2>&1 &
   ```

### Note

If you are using an old version of Docker, you might need to add the `--runtime=nvidia` option to the `docker run` command above. See [this](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/user-guide.html) for more info.

