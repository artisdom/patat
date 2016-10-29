PROJECT=$(shell basename *.cabal .cabal)
DATE=$(shell date '+%B %d, %Y')
VERSION=$(shell sed -n 's/^Version: *//p' *.cabal)
FOOTER=${PROJECT} v${VERSION}

extra/patat.1: extra/MANUAL.md
	pandoc -t man -s extra/MANUAL.md -o extra/patat.1 \
		--metadata "date:${DATE}" \
		--metadata "footer:${FOOTER}" \
		--metadata "section:1"

clean:
	rm -f extra/patat.1

test:
	bash test.sh

.PHONY: clean test
