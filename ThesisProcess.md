# Docker Setup
Need to use Docker because the torch version is not available on my computer

1. Download Docker desktop app
2. Create Dockerfile
3. Create `requirements.txt`
4. Build docker image `docker build --platform linux/amd64 -t yoruba-adr .`
    * `build` creates the docker image
    * `--platform` lets you choose something other than your own chip
    * `-t` tags/names it the name
    * ` . ` tells it to look in the current directory to copy from
5. Run in docker `docker run -it --rm -v $(pwd):/app yoruba-adr bash`
    * `-it` makes it interactive (`i`) and behave like a normal terminal (`t`)
    * `--rm` removes the container so they don't build up (check what containers there are with `docker ps -a`)
    * `-v $(pwd):/app` mounts a volume so that changes in your computer appear on Docker automatically and vice versa
    * `bash` overrides `CMD` from the docker file
    * another option is `docker run --rm my-python-app`, which runs `CMD` from the dockerfile, then exits
6. Optional: Create `docker-compose.yml` file and run with `docker-command` commands
    * `docker-compose build` builds image
    * `docker-compose up` creates container and runs default `CMD`
    * `docker-compose run app bash` interactive shell
    * `docker-compose run app python test.py` run a specific command like `python test.py`
    * `docker-compose down` stop running containers
    * `docker-compose logs` view logs
    * `docker-compose up --build` rebuild container

Every time you change `Dockerfile` or any of your project files, you must re-build (but it'll cache things automatically)

# To Do
Need to use my own training and testing sets
1. DONE Turn my own data into raw text files
2. DONE Modify `scripts/aggregate_corpora_make_parallel_text.sh`
3. Copy my new data to Docker too
4. Train my own model!
5. Repeat with only subsets of the data