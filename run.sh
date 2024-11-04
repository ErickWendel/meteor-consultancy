docker stop meteor-consultancy 2>/dev/null || true && docker rm meteor-consultancy 2>/dev/null || true

docker run -it -d --rm \
-v "$(pwd)/.npm:/root/.npm" \
-v "$(pwd)/.babel-cache:/src/.babel-cache" \
-v "$(pwd)/meteor:/src/meteor" \
-v "$(pwd)/meteor-perf:/src/meteor-perf" \
-v "$(pwd)/performance:/src/performance" \
-v "$(pwd)/.npm-global:/root/.npm-global" \
--env NPM_CONFIG_PREFIX=/root/.npm-global \
--env PATH="/root/.npm-global/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" \
-p 3000:3000 \
-w /src \
--platform linux/arm64 \
--name meteor-consultancy \
node:20 bash

docker exec -it meteor-consultancy bash

# --privileged \
# -p 3001:3001 \