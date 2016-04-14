###
### Combines ssh configs
###

fragments=$(shell find . -name "config-*")

config: ${fragments}
	cat $(shell echo ${fragments} | sort) > config
