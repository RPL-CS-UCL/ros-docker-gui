.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {printf "\033[36m%-42s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# DOCKER TASKS

# NVIDIA
## INDIGO
nvidia_ros_indigo: ## [NVIDIA] Build ROS  Indigo  Container
	docker build -t turlucode/ros-indigo:nvidia nvidia/indigo/base
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:nvidia\033[0m\n"

nvidia_ros_indigo_opencv3: nvidia_ros_indigo ## [NVIDIA] Build ROS  Indigo  Container | ---------------------- | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:opencv3 nvidia/indigo/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:opencv3\033[0m\n"

nvidia_ros_indigo_cuda8: nvidia_ros_indigo ## [NVIDIA] Build ROS  Indigo  Container | (CUDA  8   - no cuDNN)
	docker build -t turlucode/ros-indigo:cuda8 nvidia/indigo/cuda8
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda8\033[0m\n"

nvidia_ros_indigo_cuda10: nvidia_ros_indigo ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10   - no cuDNN)
	docker build -t turlucode/ros-indigo:cuda10 nvidia/indigo/cuda10
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10\033[0m\n"

nvidia_ros_indigo_cuda10-1: nvidia_ros_indigo ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10.1 - no cuDNN)
	docker build -t turlucode/ros-indigo:cuda10.1 nvidia/indigo/cuda10.1
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10.1\033[0m\n"

nvidia_ros_indigo_cuda8_cudnn6: nvidia_ros_indigo_cuda8 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA  8   - cuDNN 6)
	docker build -t turlucode/ros-indigo:cuda8-cudnn6 nvidia/indigo/cuda8/cudnn6
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda8-cudnn6\033[0m\n"

nvidia_ros_indigo_cuda8_cudnn7: nvidia_ros_indigo_cuda8 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA  8   - cuDNN 7)
	docker build -t turlucode/ros-indigo:cuda8-cudnn7 nvidia/indigo/cuda8/cudnn7
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda8-cudnn7\033[0m\n"

nvidia_ros_indigo_cuda10_cudnn7: nvidia_ros_indigo_cuda10 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10   - cuDNN 7)
	docker build -t turlucode/ros-indigo:cuda10-cudnn7 nvidia/indigo/cuda10/cudnn7
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10-cudnn7\033[0m\n"

nvidia_ros_indigo_cuda10-1_cudnn7: nvidia_ros_indigo_cuda10-1 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10.1 - cuDNN 7)
	docker build -t turlucode/ros-indigo:cuda10.1-cudnn7 nvidia/indigo/cuda10.1/cudnn7
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10.1-cudnn7\033[0m\n"

nvidia_ros_indigo_cuda8_opencv3: nvidia_ros_indigo_cuda8 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA  8   - no cuDNN) | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:cuda8-opencv3 nvidia/indigo/cuda8/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda8-opencv3\033[0m\n"

nvidia_ros_indigo_cuda10_opencv3: nvidia_ros_indigo_cuda10 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10   - no cuDNN) | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:cuda10-opencv3 nvidia/indigo/cuda10/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10-opencv3\033[0m\n"

nvidia_ros_indigo_cuda8_cudnn6_opencv3: nvidia_ros_indigo_cuda8_cudnn6 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA  8   - cuDNN 6)  | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:cuda8-cudnn6-opencv3 nvidia/indigo/cuda8/cudnn6/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda8-cudnn6-opencv3\033[0m\n"

nvidia_ros_indigo_cuda8_cudnn7_opencv3: nvidia_ros_indigo_cuda8_cudnn7 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA  8   - cuDNN 7)  | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:cuda8-cudnn7-opencv3 nvidia/indigo/cuda8/cudnn7/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda8-cudnn7-opencv3\033[0m\n"

nvidia_ros_indigo_cuda10_cudnn7_opencv3: nvidia_ros_indigo_cuda10_cudnn7 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10   - cuDNN 7)  | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:cuda10-cudnn7-opencv3 nvidia/indigo/cuda10/cudnn7/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10-cudnn7-opencv3\033[0m\n"

nvidia_ros_indigo_cuda10-1_cudnn7_opencv3: nvidia_ros_indigo_cuda10-1_cudnn7 ## [NVIDIA] Build ROS  Indigo  Container | (CUDA 10.1 - cuDNN 7)  | OpenCV 3.4.1
	docker build -t turlucode/ros-indigo:cuda10.1-cudnn7-opencv3 nvidia/indigo/cuda10.1/cudnn7/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cuda10.1-cudnn7-opencv3\033[0m\n"

## KINETIC

nvidia_ros_kinetic: ## [NVIDIA] Build ROS  Kinetic Container
	docker build -t turlucode/ros-kinetic:nvidia nvidia/kinetic/base
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:nvidia\033[0m\n"

nvidia_ros_kinetic_opencv3: nvidia_ros_kinetic ## [NVIDIA] Build ROS  Kinetic Container | ---------------------- | OpenCV 3.4.1
	docker build -t turlucode/ros-kinetic:opencv3 nvidia/kinetic/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:opencv3\033[0m\n"

nvidia_ros_kinetic_cuda8: nvidia_ros_kinetic ## [NVIDIA] Build ROS  Kinetic Container | (CUDA  8   - no cuDNN)
	docker build -t turlucode/ros-kinetic:cuda8 nvidia/kinetic/cuda8
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda8\033[0m\n"

nvidia_ros_kinetic_cuda10: nvidia_ros_kinetic ## [NVIDIA] Build ROS  Kinetic Container | (CUDA 10   - no cuDNN)
	docker build -t turlucode/ros-kinetic:cuda10 nvidia/kinetic/cuda10
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda10\033[0m\n"

nvidia_ros_kinetic_cuda8_cudnn6: nvidia_ros_kinetic_cuda8 ## [NVIDIA] Build ROS  Kinetic Container | (CUDA  8   - cuDNN 6)
	docker build -t turlucode/ros-kinetic:cuda8-cudnn6 nvidia/kinetic/cuda8/cudnn6
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda8-cudnn6\033[0m\n"

nvidia_ros_kinetic_cuda10_cudnn7: nvidia_ros_kinetic_cuda10 ## [NVIDIA] Build ROS  Kinetic Container | (CUDA 10   - cuDNN 7)
	docker build -t turlucode/ros-kinetic:cuda10-cudnn7 nvidia/kinetic/cuda10/cudnn7
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda10-cudnn7\033[0m\n"

nvidia_ros_kinetic_cuda8_opencv3: nvidia_ros_kinetic_cuda8 ## [NVIDIA] Build ROS  Kinetic Container | (CUDA  8   - no cuDNN) | OpenCV 3.4.1
	docker build -t turlucode/ros-kinetic:cuda8-opencv3 nvidia/kinetic/cuda8/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda8-opencv3_latest\033[0m\n"

nvidia_ros_kinetic_cuda8_cudnn6_opencv3: nvidia_ros_kinetic_cuda8_cudnn6 ## [NVIDIA] Build ROS  Kinetic Container | (CUDA  8   - cuDNN 6)  | OpenCV 3.4.1
	docker build -t turlucode/ros-kinetic:cuda8-cudnn6-opencv3 nvidia/kinetic/cuda8/cudnn6/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda8-cudnn6-opencv3\033[0m\n"

nvidia_ros_kinetic_cuda10_cudnn7_opencv3: nvidia_ros_kinetic_cuda10_cudnn7 ## [NVIDIA] Build ROS  Kinetic Container | (CUDA 10   - cuDNN 7)  | OpenCV 3.4.1
	docker build -t turlucode/ros-kinetic:cuda10-cudnn7-opencv3 nvidia/kinetic/cuda10/cudnn7/opencv3
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cuda10-cudnn7-opencv3\033[0m\n"

## BOUNCY

nvidia_ros_bouncy: ## [NVIDIA] Build ROS2 Bouncy  Container
	docker build -t turlucode/ros-bouncy:latest nvidia/bouncy/base
	@printf "\n\033[92mDocker Image: turlucode/ros-bouncy:latest\033[0m\n"

## Helper TASKS
nvidia_run_help: ## [NVIDIA] Prints help and hints on how to run an [NVIDIA]-based image
	 @printf "\n- Make sure the nvidia-docker-plugin (Test it with: docker run --rm --runtime=nvidia nvidia/cuda:9.0-base nvidia-smi)\n  - Command example:\ndocker run --rm -it --runtime=nvidia --privileged --net=host --ipc=host \\ \n-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \\ \n-v $HOME/.Xauthority:/root/.Xauthority -e XAUTHORITY=/root/.Xauthority \\ \n-v <PATH_TO_YOUR_CATKIN_WS>:/root/catkin_ws \\ \n-e ROS_IP=<HOST_IP or HOSTNAME> \\ \nturlucode/ros-indigo:nvidia\n"

# CPU
## INDIGO
cpu_ros_indigo: ## [CPU] Build ROS Indigo  Container
	docker build -t turlucode/ros-indigo:cpu cpu/indigo/base
	@printf "\n\033[92mDocker Image: turlucode/ros-indigo:cpu\033[0m\n"

## KINETIC

cpu_ros_kinetic: ## [CPU] Build ROS Kinetic Container
	docker build -t turlucode/ros-kinetic:cpu cpu/kinetic/base
	@printf "\n\033[92mDocker Image: turlucode/ros-kinetic:cpu\033[0m\n"

## Helper TASKS
cpu_run_help: ## [CPU] Prints help and hints on how to run an [CPU]-based image
	 @printf "\nCommand example:\ndocker run --rm -it --runtime=nvidia --privileged --net=host --ipc=host \\ \n--device=/dev/dri:/dev/dri \\ \n-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \\ \n-v $HOME/.Xauthority:/root/.Xauthority -e XAUTHORITY=/root/.Xauthority \\ \n-v <PATH_TO_YOUR_CATKIN_WS>:/root/catkin_ws \\ \n-e ROS_IP=<HOST_IP or HOSTNAME> \\ \nturlucode/ros-indigo:cpu\n"