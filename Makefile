PROJECT=$(shell basename *.cabal .cabal)
DATE=$(shell date '+%B %d, %Y')
VERSION=$(shell sed -n 's/^Version: *//p' *.cabal)
FOOTER=${PROJECT} v${VERSION}
AUTHOR=Jasper Van der Jeugt

default: patat.1 README.md

MAN_INPUTS= \
	doc/sections/name.md \
	doc/sections/synopsis.md \
	doc/sections/description.md \
	doc/sections/options.md \
	doc/sections/see-also.md

patat.1: $(MAN_INPUTS)
	pandoc -t man -s $(MAN_INPUTS) -o $@ \
		--metadata "author:${AUTHOR}" \
		--metadata "title:patat manual" \
		--metadata "date:${DATE}" \
		--metadata "footer:${FOOTER}" \
		--metadata "section:1"

README_INPUTS= \
	doc/sections/description.md \
	doc/sections/installation.md \
	doc/sections/options.md \
	doc/sections/theming.md \
	doc/sections/trivia.md

README.md: $(README_INPUTS)
	cat doc/sections/readme.md >$@
	echo '' >>$@
	awk 'FNR==1 {printf "- ["$$0"](#"; sub(/ /,"-"); print tolower($$0)")"}' \
		$(README_INPUTS) >> $@
	echo '' >>$@
	sed '$$s/$$/\n/' -s $(README_INPUTS) >> $@

clean:
	rm -f patat.1
	rm -f README.md

test:
	bash test.sh

.PHONY: default clean test
