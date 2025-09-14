# Console

System Console out and err is implone with max buffer.
The buffer is same count with Termina display max limitel.
Out, err, and out err combined each has 1 buffer.

Each module execution has the 3 buffers.

Write 1 char to Console out and err will add to
corresponding buffers.

The char is add to back of current char list in buffer.
Inf current char list has max count, the char list is shifted
1 pos to front of the buffer, and the char is add to last pos
in buffer.

Kernel has kernel call for getting the buffers char list
for Termina.
The kernel call has param that is program ident Int, and buffer kind.
Termina display console by done the kernel call to get the buffer
char list of the program in Termina draw execute. 

Termina display console at most the limitel of the buffer.

The kernel call is call execute certain.

Console inn inf did enter will add to out buffer and combined buffer.