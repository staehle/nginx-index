# nginx-index

A quick docker directory index under volume `/http` -- *Forked from [tiagoad/nginx-index](https://github.com/tiagoad/nginx-index)*

Prebuilt images for UTC from buildah on private GitLab instance for `amd64` and `arm64`, uploaded to Docker Hub at [staehle/nginx-index](https://hub.docker.com/r/staehle/nginx-index)

Pull with: `docker pull staehle/nginx-index:latest`

## Examples

### Single directory

`/Users` under `http://localhost:8080/`

```
docker run -p 8080:8080 -i \
    -v /Users/:/http/users \
    staehle/nginx-index
```

### Multiple directories

`/mnt/disk1` under `http://localhost:8080/disk1`
`/mnt/disk2` under `http://localhost:8080/disk2`

```
docker run -p 8080:8080 -i \
    -v /mnt/disk1/:/http/disk1 \
    -v /mnt/disk2/:/http/disk2 \ 
    staehle/nginx-index
```

## Building

```
docker build --build-arg TZ=America/Chicago -t nginx-index:latest .
```
