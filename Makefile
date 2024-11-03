dk:
	docker build . -t hydra:dev

dkrn:
	docker compose up

lint:
	golangci-lint run

bdrn:
	docker compose up --build

bdtest:
	docker build . -t ras334/hydra:dev
	docker login
	docker push ras334/hydra:dev
