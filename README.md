# Introduction


# Requirements

- Docker
- Docker-Compose
- Linux-like Host OS
- GitHub
  - It is expected that you're using GitHub with SSH keys.
  - It is also expected that you've set up an auth token for (PHP) "Composer"
    operations.

MEMO: Bootstraping will require that you set up a GitHub token for Composer operations.
It is recommended that you keep a copy of that token in a password manager for future
reference.

```
GitHub API limit (0 calls/hr) is exhausted, could not fetch https://api.github.com/repos/mantisbt/securimage/contents/composer.json?ref=3f5a84fd80b1a35d58332896c944142713a7e802.
Create a GitHub OAuth token to go over the API rate limit. You can also wait until ? for the rate limit to reset.

Head to {YOUR_UNIQUE_URL}
to retrieve a token. It will be stored in "/tmp/auth.json" for future use by Composer.
```

# Starting up


```
# Clone
git clone --recurse-submodules git@github.com:starlocke/mantisbt-compose.git

# Change Directory
cd mantisbt-compose

# Populate the 'mantisbt/vendor' subdirectory (requires token, will be prompt you as needed)
./bootstrap.sh

# Launch
docker-compose up -d
```

http://localhost:10200/ should then be available.
