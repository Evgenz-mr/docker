# Container Engineering Lab

Docker and container runtime examples showing image construction, Compose usage and container hardening patterns.

## Portfolio focus

The repository contains historical Docker notes and examples plus a modern reference workload under `examples/nginx-rootless/`.

Modern practices demonstrated:

- small pinned base image
- non-root runtime
- read-only-friendly static workload
- explicit healthcheck
- `.dockerignore`
- CI image build validation
- clear separation between historical notes and current recommendations

## Modern example

```bash
docker build -t container-lab:local examples/nginx-rootless
docker run --rm -p 8080:8080 container-lab:local
curl http://localhost:8080/health
```

## Historical content

Files such as `DockerCommands.txt`, older Tomcat Dockerfiles and the original Compose file are retained as learning history. Before using them in a real environment, review base-image versions, privileges, exposed ports, credentials and runtime limits.
