## tomorse docker container

[Jack Twilley's tomorse](https://github.com/mathuin/tomorse) text-to-Morse Code converter.

### Run

For an input file hello.txt in the current working directory, generate the Morse Code sound file equivalent:

```
$ docker run -it -v $(pwd):/out -v $(pwd):/in -e LD_LIBRARY_PATH=/usr/local/lib ae6rt/tomorse:latest bash -c "cat /in/hello.txt | /tomorse/tomorse > /out/hello.wav"
```

Open the resulting hello.wav file in your favorite audio player.

### Reference

Install Docker for your desktop platform

https://docs.docker.com/install/#supported-platforms
