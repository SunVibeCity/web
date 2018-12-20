# Web presentation for SunVibe.City - Solar Energy Crowd Founding Platform


## Installation

1. Install [Docker](https://www.docker.com/).

## Deployment

### Build
```
cd nginx-html
docker build -t web-deploy .
docker tag web-deploy sunvibecity/web-deploy
docker push sunvibecity/web-deploy
```


### Run
```
docker pull sunvibecity/web-deploy && \
docker stop web-deploy-container && \
docker rm web-deploy-container && \
docker run --name=web-deploy-container --restart=always \
  -p 8081:8081 -d sunvibecity/web-deploy
```


## For development just run
`./dev.sh`


## License

    Copyright 2018 SunVibe.City

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
