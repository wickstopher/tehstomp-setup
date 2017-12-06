# tehstomp-setup

build: clean
	scripts/build-apps.sh
	@echo ""
	@echo "Applications successfully built and linked!"

clone:
	scripts/clone-repos.sh
	@echo ""
	@echo "Repositories successfully cloned!"

install:
	scripts/install-libs.sh
	@echo ""
	@echo "Libraries successfully installed!"

clean:
	rm -f broker client producer consumer *.log

destroy: clean
	rm -rf tehstomp-client tehstomp-server tehstomp-lib tx-events
