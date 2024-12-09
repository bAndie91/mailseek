
.PHONY: default
default:
	false

PREFIX = /usr/local
BIN_PREFIX = $(PREFIX)/bin

.PHONY: install
install: $(BIN_PREFIX)/mailseek

$(BIN_PREFIX)/mailseek: mailseek
	install $< $@

.PHONY: install-dependencies
install-dependencies:
	perl -MEmail::MIME -e 1 || cpan Email::MIME
	perl -MSearch::Fulltext -e 1 || cpan Search::Fulltext
