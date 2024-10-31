# generate and copy out go files and remove go generated dir
gen:
	docker compose --profile grpc-gen up --build
	mkdir -p ../src/generated
	cp -r generated/go/servers* ../src/generated
	cp -r generated/go/client* ../src/generated
	rm -rf generated/go

# drop into a shell and interact with the image
# CTRL+D to exit
it:
	docker compose run --build --rm grpc-shell
# build image
build:
	docker build . -t hydra-proto:latest

# build and push
bpsh:
	make build
	make push
