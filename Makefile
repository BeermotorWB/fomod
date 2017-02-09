.PHONY: docs clean

all: docs

docs/_static/%.html: %.xsd
	xsltproc --nonet --output $@ docs/xsd2html.xsl $<

docs: docs/_static/info.html docs/_static/ModuleConfig.html
	$(MAKE) -C docs html

clean:
	$(MAKE) -C docs clean
