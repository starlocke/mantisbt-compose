# Introduction


# Requirements

- Docker
- Docker-Compose
- Linux-like Host OS
- It is expected that you're using GitHub with SSH keys.

# Starting up


```
# Clone
git clone --recurse-submodules git@github.com:starlocke/mantisbt-compose.git

# Change Directory
cd mantisbt-compose

# Populate the 'mantisbt/vendor' subdirectory
./bootstrap.sh

# Launch
docker-compose up -d
```

http://localhost:10200/ should then be available.