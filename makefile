all	:	doc build 

build:	a.out config

a.out:	main.o game.o othello.o 
	g++ main.o game.o othello.o -o a.out
game.o:	game.h game.cc
	g++ -c game.cc
othello.o:	othello.h othello.cc
	g++ -c othello.cc
main.o:	main.cc game.h othello.h                    	  
	g++ -c main.cc

doc: 
	doxygen -g config
	doxygen config	
config: doc
	doxygen -u config
	doxygen config
clean:	
	rm -rf html/ latex/ *.o a.out config config.bak
archive:	
	tar -cvf file.tar *
