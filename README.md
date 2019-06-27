# Yourkit Java Profiler Base images

These images are openjdk images with the yourkit java profiler agent pre-installed

Using this image will start up the jvm with the agent enabled and exposed on port 10001

# Currently images

| Image                                  | Ver | Base Image               | Yourkit version |
|----------------------------------------|-----|--------------------------|-----------------|
| thenewmotion/yjp-openjdk-8-jre         | 1.3 | openjdk:8-jre            | 2018.04         |
| thenewmotion/yjp-openjdk-11-jre        | 1.3 | openjdk:11-jre           | 2018.04         |
| thenewmotion/yjp-openjdk-8-jre-alpine  | 1.3 | openjdk:8-jre-alpine3.8  | 2018.04         |
| thenewmotion/yjp-openjdk-11-jre-alpine | 1.3 | openjdk:11-jre-alpine3.8 | 2018.04         |


## Building images

Make sure you are logged into docker with the tnmbuildagent docker hub accoubt

Bash
```
VERSION=1.3 ./build_images.sh
```

Fish
```
env VERSION=1.3 ./build_images.sh
```

This will build the images and push them to the newmotion docker hub account