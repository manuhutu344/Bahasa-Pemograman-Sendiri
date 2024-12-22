exec = haii.out
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g 

$(exec): $(objects)
	gcc $(objects) -o $(exec)

%.o: %.c include/%.h 
	gcc -c $(flags) $< -o $@

install: 
	make
	cp ./haii.out /usr/local/bin/papuans

clean: 
	-rm *.out
	-rm *.o
	-rm src/*.o