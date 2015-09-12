CONVERT =			`which pandoc`
CONVERTFLAGS =		--verbose

SRCFILETYPE =		md

FILES = 			parameters.textile parameters.html

all:				$(FILES)

.PHONY: clean
clean:
	rm -rvf *.html *.textile

%.textile:			%.$(SRCFILETYPE)
	$(CONVERT) $(CONVERTFLAGS) $< -o $@

%.html:				%.$(SRCFILETYPE)
	$(CONVERT) $(CONVERTFLAGS) $< -o $@
