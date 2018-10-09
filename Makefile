all:
	make build
	make doczip

clean:
	-rm mywc
	-rm -r latex
	-rm -r html
	-rm doczip.tgz

build: mywc

doc:
	doxygen wc

mywc: wc.c
	gcc -o mywc wc.c

doczip: doc
	tar czvf doczip.tgz html latex
