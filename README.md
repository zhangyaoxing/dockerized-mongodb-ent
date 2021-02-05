# dockerized-mongodb-ent

Start Ops Manager and MongoDB enterprise in docker.

## Configuration

All configurations can be found in the following 2 files:

- `config.sh`: common parameters that MongoDB and Ops Manager (Not ready yet) shares.
  - `DOCKER_USERNAME`: Used as the docker image responsitory name.
  - `MONGODB_VERSION`: Version of MongoDB used by Ops Manager (Not used).
- `mongo/config.sh`: parameters that's used by MongoDB deployment.
  - `GROUP_ID`: group/project ID in Ops Manager. This is where in Ops Manager you want to create the MongoDB cluster.
  - `API_KEY`: API KEY used by Ops Manager Automation Agent.
  - `OM_URL`: Ops Manager URL.
  - `AA_URL`: Automation Agent download URL.
  - `DB_PATH`: folder on host where you want to store data files.
  - `LOG_PATH`: folder on host where you want to store log files.
  - `DB_HOSTNAME`: hostname for container. The host name must be resolvable and resolve to the docker host.
  - `DB_PORT`: the port used by MongoDB node.

## Build Image

Use the command to build image:

```bash
cd mongo
./build.sh
```

Use the command to clean up built image:

```bash
cd mongo
./clean.sh
```

## Start Container

`docker-compose` is used to start the container. Use the following command to start container:

```bash
cd mongo
source config.sh
docker-compose up -d
```
