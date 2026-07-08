# Usage: 
# make install MODEL=rocky
# make run MODEL=rocky

# Default model name if not specified
MODEL ?= rocky

install:
	@if [ ! -f models/$(MODEL).modelfile ]; then \
		echo "Error: models/$(MODEL).modelfile not found."; \
		exit 1; \
	fi
	@echo "Installing model: $(MODEL)..."
	ollama create $(MODEL) -f models/$(MODEL).modelfile

run:
	@echo "Launching $(MODEL)..."
	ollama run $(MODEL)

list:
	ollama list

clean:
	@echo "Removing model: $(MODEL)..."
	ollama rm $(MODEL)
