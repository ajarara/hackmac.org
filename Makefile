# to be replaced by a default.nix
# make sure all the programs we need are up to date
build:
	nix-env -iA nixpkgs.znc nixpkgs.nginx nixpkgs.mysql nixpkgs.php

# export to closure on ramdisk
export:
	./shim.sh

clean:
	rm -rf /tmp/closure/

# do the thing. maybe a good idea to instead break these up into files so I don't send one GIANT file every time it breaks up. probably good for memory constraints too.
send:
	rsync --progress -rav /tmp/closure ajarara@jarmac.org:~/closure

.PHONY: build export send
