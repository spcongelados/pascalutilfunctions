procedure cargararray(var arch:text; var v:tvector; var i:byte);
begin
  i:=0;
  while not eof(arch) do
  begin
    i:=i+1;
    read(arch,v[i]);
  end;
end;

//Sirve para cargar un array desde un archivo y guardar su largo


procedure mostrararray(v:tvector;i:byte);
var
  k:byte;
begin
  for k:=1 to i do
  write(v[k]:4:2,' ')
end; 

//Sirve para mostrar un array en una linea


procedure remplazok(var v:tvector;i:byte);
var
  k:real;
  j:byte;
begin
  writeln('Que numero remplazar por 0?');
  readln(k);
  for j:=1 to i do
  begin
    if v[j]=k then
    v[j]:=0
  end;
end; 

//Sirve para remplazar los elementos del array con valor K por 0

