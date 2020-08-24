# fmove - follow command execution to its destination

Tired of typing `cd "!$"` after every long `mv` or `cp` command? Want to save yourself a whole _5 keystrokes_?

**fmove is the tool for you!**

Simply add this to your `.bashrc`:

```bash
f() {
	"$@" && cd "${@: -1}" 
}
```

Now you can perform any command like `mv` or `cp` like so:

```
f mv foo.txt ./bar
```

and you'll be cd'd into `./bar` as well as having copied `foo.txt` into it!

## Caveats

There's only one I can think of, and that's that to use `sudo` you'd need to do:

```
f sudo mv foo.txt ./bar
```

rather than

```
sudo f mv foo.txt ./bar
```
