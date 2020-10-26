default: build
				
INPUT = @read -p "Project name: " projectName

build:
	${INPUT}; \
	docker build -t $$projectName "$$(pwd)/api"

deploy:
	${INPUT}; \
	export TF_VAR_app=$$projectName; \
	terraform init "$$(pwd)/terraform"; \
	terraform apply "$$(pwd)/terraform"; \
