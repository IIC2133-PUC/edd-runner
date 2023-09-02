install:
	@echo "Installing edd-runner to /usr/local/bin"
	@cp edd_runner.sh /usr/local/bin/edd-runner
	@chmod +x /usr/local/bin/edd-runner
	@echo "Installation complete"

uninstall:
	@echo "Uninstalling edd-runner from /usr/local/bin"
	@rm -f /usr/local/bin/edd-runner
	@echo "Uninstallation complete"

update:
	@echo "Updating edd-runner to /usr/local/bin"
	@cp edd_runner.sh /usr/local/bin/edd-runner
	@chmod +x /usr/local/bin/edd-runner
	@echo "Update complete"

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  install: install edd-runner to /usr/local/bin"
	@echo "  uninstall: uninstall edd-runner from /usr/local/bin"
	@echo "  help: print this help message"

all: install