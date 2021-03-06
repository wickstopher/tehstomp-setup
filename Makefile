# tehstomp-setup

build:
	scripts/build-apps.sh
	@echo ""
	@echo "Applications successfully built and linked!"

clone:
	scripts/clone-repos.sh
	@echo ""
	@echo "Repositories successfully cloned!"

update:
	scripts/update-repos.sh
	@echo ""
	@echo "Repositories are up to date!"

install:
	scripts/install-libs.sh
	@echo ""
	@echo "Libraries successfully installed!"

clean:
	rm -rf bin *.log

destroy: clean
	rm -rf tehstomp-client tehstomp-server tehstomp-lib tx-events
