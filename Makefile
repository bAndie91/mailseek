
.PHONY: default
default:
	false

PREFIX = /usr/local
BIN_PREFIX = $(PREFIX)/bin

.PHONY: install
install: $(BIN_PREFIX)/mailseek

$(BIN_PREFIX)/mailseek: mailseek
	install $< $@
