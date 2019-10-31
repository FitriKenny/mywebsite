build:## Build the container
	docker build -t staticwebsite .
		
run: ## Run container  with Volume public got to name  it
	docker run --name sw -v $(CURDIR)/public:/home/public -t  staticwebsite
	docker cp sw:/home/public/*.html $(CURDIR)/public/
runi: ## Run container interactive
	docker run -i -v 	$(CURDIR)/public:/home/public -t  staticwebsite /bin/bash

clean:
	docker rm sw
