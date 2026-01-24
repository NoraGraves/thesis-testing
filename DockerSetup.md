# Setup
Need to use Docker because the torch version is not available on my computer

1. Download Docker desktop app
2. Create Dockerfile
3. Create `requirements.txt`
4. Build docker image `docker build --platform linux/amd64 -t yoruba-adr .`
    * `build` creates the docker image
    * `--platform` lets you choose something other than your own chip
    * `-t` tags/names it the name
    * ` . ` tells it to look in the current directory to copy from
5. Run in docker
    * 
6. Optional: Create `docker-compose.yml` file

Every time you change `Dockerfile` or any of your project files, you must re-build (but it'll cache things automatically)