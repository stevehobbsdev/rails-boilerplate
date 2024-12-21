DOCKER_IMAGE=stevehobbsdev/rails-boilerplate

.PHONY: lint
lint: ## lint the Rails project using rubocop
	@rubocop -A

.PHONY: test-unit
test-unit: ## run unit tests
	@bin/rspec --format documentation

.PHONY: docker-build
docker-build: ## build the main app docker image
	@docker build -t $(DOCKER_IMAGE) .
