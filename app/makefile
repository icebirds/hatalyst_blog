mkdir = mkdir ./bin/lib/app/errors -p && mkdir ./bin/lib/app/templates -p
error = cp ./src/blog/errors/* ./bin/lib/app/errors/ -Ru
temp = cp ./src/blog/templates/* ./bin/lib/app/templates/ -Ru
access = cp ./src/blog/dotfiles/.htaccess ./bin/

build:
	haxe build.hxml
	$(mkdir)
	$(error)
	$(temp)
	$(access)
debug:
	haxe builddebug.hxml
	$(mkdir)
	$(error)
	$(temp)
	$(access)
clean:
	rm ./bin/* -Rf
