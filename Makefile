ENVIRONMENT ?= test
PLAYBOOK ?= default.yml
TAGS = users keys
VERBOSE =

list-tasks:
	ansible-playbook $(PLAYBOOK) --list-tasks

all default:
	ansible-playbook $(PLAYBOOK) --limit=$(ENVIRONMENT) $(VERBOSE)

$(TAGS):
	ansible-playbook $(PLAYBOOK) --limit=$(ENVIRONMENT) $(VERBOSE) --tags=$@

.PHONY: all list-tasks $(TAGS)
