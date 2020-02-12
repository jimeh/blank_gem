.PHONY: new-version
new-version:
	$(if $(shell command -v npx),, \
		$(error No npx executable in PATH, please install NodeJS))
	$(if $(shell command -v standard-version),, \
		$(error No standard-version executable in PATH, \
			install with: npm i -g standard-version))

	npx standard-version
