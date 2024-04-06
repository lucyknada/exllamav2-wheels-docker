FROM nvidia/cuda:12.1.0-devel-ubuntu22.04
WORKDIR /build
VOLUME ./build /build

# for TORCH_CUDA_ARCH_LIST, select the ones for your gpu(s)
# https://developer.nvidia.com/cuda-gpus

# or in python:
# >>> import torch
# >>> torch.cuda.get_device_capability()

ENV TORCH_CUDA_ARCH_LIST="8.6;8.9+PTX"
RUN apt-get update && apt-get install -y git g++ gcc python3 python3-pip
RUN pip install setuptools wheel
