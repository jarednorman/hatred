.PHONY : spec test clean 

spec:
	tsc -f `find spec -name \*spec.lua -print`

test:
	tsc `find spec -name \*spec.lua -print`

coverage:
	luacov luacov.stats.out && cat luacov.report.out | less

clean:
	rm -f luacov*

