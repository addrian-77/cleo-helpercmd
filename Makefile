ifneq (,$(wildcard .env))
    include .env
    export $(shell sed 's/=.*//' .env)
endif

.PHONY: build
build:
	sanny.exe -c $(GAME_DIR)/$(SCRIPT).txt $(GAME_DIR)/$(SCRIPT).cs --no-splash