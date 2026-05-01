# Family Relationships in Prolog

## Anthony Putman

I'll be using SWI Prolog. You can download it here: 
[https://www.swi-prolog.org/Download.html](https://www.swi-prolog.org/Download.html)
Docker is always good:
[https://www.swi-prolog.org/Docker.html](https://www.swi-prolog.org/Docker.html)
You can also use the online version at
[https://swish.swi-prolog.org](https://swish.swi-prolog.org/)
For MacOS, I strongly recommand you use brew: `brew install swi-prolog`.

Some more info:
[https://www.swi-prolog.org/pldoc/man?section=quickstart](https://www.swi-prolog.org/pldoc/man?section=quickstart)

## How To Run

From the command line: `swipl fam.pl`. When `fam.pl` changes, you can
reload via `make.`.

After running the above `swipl fam.pl` command, you will enter the swipl interface and will able to make queries.

Example:

Run:

    swipl fam.pl

Interactive Shell:

    ?- mother(X, steve).    % should return X = lynn
    ?- parent(lynn, steve). % should return true
    ?- grandchild(X, dave). % X = laurel, tessa, matt, mark

If you make a mistaken within an active query enter:

    Ctrl+D  % sends an EOF signal to close the interactive shell.
    Ctrl+Z, then Enter. % This is for Windows operating systems.
  or

    Ctrl+c then a to abort or e to exit. 

    
