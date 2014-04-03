.PHONY : run spec coverage clean

run:
	${LOVEPATH} ./

spec:
	busted ./spec

coverage:
	luacov luacov.stats.out && cat luacov.report.out | less

clean:
	rm -f luacov*

