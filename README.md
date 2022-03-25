## repl-import

`repl-import` is a tool for revealing what imports you have in your repl context at any time. For scheme workflows that involve tinkering around in the `csi` repl and then taking that work into your file/text-editor, it is important to know what you have imported to replicate the results. It is also beneficial for someone tinkering in the repl to allow that person to be able to see what imports is available for tinkering.

Currently, to install this package you want to clone this repo and then use `chicken-install` to install into. This package was only developed with chicken v0.5.2 in mind

```
$ git clone git@github.com:FullstackGJJ/repl-imports.git
$ cd repl-imports/
$ chicken-install
```

note: You may have to supply `-s` argument to `chicken-install` if you require sudo permissions for installing packages

After installation, you can verify that it successfully installed by using the `chicken-status` command

```
$ chicken-status
repl-imports .............................................. version: unknown
```

Now that it's installed, you can use it in your `csi` repl

```
$ csi
#;1> (import repl-imports)
; loading /var/lib//chicken/11/repl-imports.import.so ...
; loading /var/lib//chicken/11/repl-imports.so ...
; loading /var/lib//chicken/11/srfi-113.so ...
; loading /var/lib//chicken/11/srfi-69.so ...
; loading /var/lib//chicken/11/srfi-128.so ...
; loading /var/lib//chicken/11/srfi-13.so ...
; loading /var/lib//chicken/11/srfi-14.so ...
#;2> (repl-imports)
("chicken.base" "chicken.syntax" "linenoise" "repl-imports" "scheme")
```

I installed this package into my development environment and then I placed it into the `csi` config so it's loaded up everytime. The `csi` config file is located at `~/.csirc` and in there you can add the line `(import repl-imports)` so that when you enter `csi` repl this shows up to confirm it's already loaded

```
$ csi
; loading /var/lib//chicken/11/repl-imports.import.so ...
; loading /var/lib//chicken/11/repl-imports.so ...
#;1> 
```

That's all there is to this package. If you have any questions, feel free to make an issue or email me
