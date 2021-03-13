
# define MACRO for docker

DIR_DOCKER = ./docker
IMG_UBUNTU = myubuntu
TAG_UBUNTU = 1.0

all :
	@echo nothing to do

clean : docker_clean
	@echo clean
	
dockerbuild : dockerbuild_ubuntu


dockerbuild_ubuntu : 
	@echo build myubuntu:1.0 ...
	@echo 
	@sudo docker build -t $(IMG_UBUNTU):$(TAG_UBUNTU) -f $(DIR_DOCKER)/dockerfile_ubuntu .


docker_clean :
	@echo cleaning docker images...
	@echo
	@sudo docker rmi -f $(IMG_UBUNTU):$(TAG_UBUNTU)


