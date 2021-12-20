build:
	docker build -t ghcr.io/mmonereo/deerdaw:develop .

push:
	docker push ghcr.io/mmonereo/deerdaw:develop

run:
	docker run --rm -it -p 3000:3000 ghcr.io/mmonereo/deerdaw:develop
	
install:
	helm install -n deerdaw deerdaw helm

upgrade:
	helm upgrade -n deerdaw deerdaw helm

rollout:
	kubectl rollout restart deploy deerdaw -n deerdaw

build_rollout: build push rollout

dev:
	yarn dev