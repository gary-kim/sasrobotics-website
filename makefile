SHELL := /bin/bash
HUGO := hugo

.PHONY: dep build build-production build-prod prod serve

build-prod: build-production

prod: build-production

dep:
	git submodule update --init --recursive

update-dep:
	git submodule update --init --recursive --remote

build: 
	$(HUGO) ${extra_args}

build-production:
	HUGO_ENV=production $(HUGO) --minify ${extra_args}

serve:
	$(HUGO) serve ${extra_args}

deploy:
	rclone purge --config scripts/travis.rclone.conf sasroboticsxyz: || true
	rclone copy --config scripts/travis.rclone.conf ./public sasroboticsxyz:
