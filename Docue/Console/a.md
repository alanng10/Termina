# Console

System Console out and err is implone with max buffer.
The buffer is same count with Termina display max limitel.
Out, err, and out err combined each has 1 buffer.

Write 1 char to Console out and err will add to
corresponding buffers.

The char is add to back of current char list in buffer.
Inf current char list has max count, the char list is shifted
1 pos to front of the buffer, and the char is add to last pos
in buffer.