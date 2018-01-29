## tomorse docker container

Docker container for [Jack Twilley's tomorse](https://github.com/mathuin/tomorse) text-to-Morse Code converter.

### Run

For an input file hello.txt in the current working directory, generate the Morse Code sound file equivalent (7 words per minute)

```
$ docker run -it -v $(pwd):/out -v $(pwd):/in -e LD_LIBRARY_PATH=/usr/local/lib ae6rt/tomorse:latest bash -c "cat /in/hello.txt | /tomorse/tomorse -s 7 -c 10 > /out/hello.wav"
```

Open the resulting hello.wav file in your favorite audio player.

### Reference

Install Docker for your desktop platform

https://docs.docker.com/install/#supported-platforms
