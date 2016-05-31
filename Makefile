#!/usr/bin/make -f

#THEME_OPT=-t simple
#THEME_OPT=-t gnuside
THEME_OPT=-t netcat
REVEALJS_THEMES=node_modules/reveal-md/node_modules/reveal.js/css/theme
REVEALJS_DIR=node_modules/reveal-md/node_modules/reveal.js
BUILD_DIR=build
#BUILD_DIR=slides
SLIDES_DIR=slides
SLIDES_MD=$(wildcard $(SLIDES_DIR)/*.md)
#SLIDES_PDF=$(patsubst %.md,%.pdf,$(SLIDES_MD)),
SLIDES_PDF=$(patsubst $(SLIDES_DIR)/%,$(BUILD_DIR)/%,$(patsubst %.md,%.pdf,$(SLIDES_MD)))

REVEALMD=node_modules/.bin/reveal-md
all: live

install: install-reveal install-style

install-reveal:
	npm install reveal-md node-sass

install-style:
	# cp -a themes/gnuside.css $(REVEALJS_THEMES)
	cp -a themes/gnuside.scss $(REVEALJS_THEMES)/source
	cp -a themes/netcat.scss $(REVEALJS_THEMES)/source
	cd $(REVEALJS_DIR) && ../../../.bin/node-sass \
		css/theme/source/gnuside.scss \
		css/theme/gnuside.css \
	cd $(REVEALJS_DIR) && ../../../.bin/node-sass \
		css/theme/source/netcat.scss \
		css/theme/netcat.css \


live:
	$(REVEALMD) $(THEME_OPT) $(SLIDES_DIR)

build: $(SLIDES_PDF)

$(BUILD_DIR)/%.pdf: $(SLIDES_DIR)/%.md
	$(REVEALMD) $(THEME_OPT) -r $@ $<

clean:
	rm -f $(BUILD_DIR)/*.pdf
