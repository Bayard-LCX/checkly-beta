# Use Env in Makefile
include .env
export $(shell sed 's/=.*//' .env)

#### [ Playwright ]
playwright-test:
	docker run -it --rm --ipc=host -e SITE_URL=$(SITE_URL) -v $$(pwd):/var/www --workdir=/var/www mcr.microsoft.com/playwright:v1.26.0-focal bash scripts/launch_test.sh

playwright-scenario:
	docker run -it --rm -e SITE_URL=$(SITE_URL) -v $$(pwd):/var/www --workdir=/var/www mcr.microsoft.com/playwright:v1.26.0-focal node __checks__/*




#SITE_URL=https://www.la-croix.como node __checks__/lcx-homepage.check.js

#playwright-record:
#	npx playwright codegen --target javascript $(SITE_URL)
