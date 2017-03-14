# hackmac.org
> Please don't touch anything.

My blog, znc, and analytics are set up on a very fragile server. It has little in the way of resources, and will run oom on almost any nix command. Like even nix-env --help will get slaughtered.

What I do is pull in the binaries locally, rsync them over to the server, and import them into the store. This works rather well, but it also means I can't use a default.nix to build the system. So I hack around.

So that's what this is. Sadness.
