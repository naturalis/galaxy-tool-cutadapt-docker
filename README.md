# galaxy-tool-cutadapt-docker

1. clone this directory

```sudo git clone https://github.com/naturalis/galaxy-tool-cutadapt-docker```

2. Make the container

```sudo docker build -t cutadapt_galaxy ./galaxy-tool-cutadapt-docker```

3. Add the tool to galaxy

```sudo cp galaxy-tool-cutadapt-docker/cutadapt_docker.sh /home/galaxy/galaxy/tools/identify/cutadapt_docker.sh```
```sudo cp galaxy-tool-cutadapt-docker/cutadapt_docker.xml /home/galaxy/galaxy/tools/identify/cutadapt_docker.xml```

4. Add the tool to the tool menu

```sudo nano /home/galaxy/galaxy/config/tool_conf.xml```
