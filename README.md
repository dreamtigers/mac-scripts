# MAC-scripts

Scripts for the assignments of GL1 _Grupo Linux 1_ (Linux Group 1).
Traditionally, GL1 is divided in various (5) _Tareas_ (Assignments/Homeworks),
that are evaluated by the older members of MAC during the course of a regular
trimester.

## Tarea 1
### Script 1 (whosup)
Pass the name of a classroom as argument to check if the computers of said
classroom are up.
```
$ bash whosup [classroom]
```

### Script 2 (chkmod)
Pass a module name as an argument to check if said module is loaded or not,
and offer the option to unload/load it, respectively.
```
$ bash chkmod [module]
```

### Script 3 (cleanup)
TODO. Matte gomen.

## Tarea 2
### Script 1 ()
Not a script per se, but change your .bashrc so your prompt shows the exit code
of the last executed command.

### Script 2 (indir)
Checks the contents of the directories in the `PATH` variable.
You can pass a directory as an argument through a flag to check if said
directory is in the `PATH`.
```
$ bash indir -d [directory]
```

### Script 3 (whohas)
Check if the passed program is installed in the computers of a classroom.
```
$ bash whohas -f [classroom] -p [program]
```
Alternatively, you can make use of the general purpose `ma` script, like so:
```
$ bash ma -f [classroom] -c 'which [program]'
```
