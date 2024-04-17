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


procedure compactararreglo(v:tvector;var vcompacto:tvector;i:byte;var k:byte);
var
  j:byte;
begin
  k:=0;
  for j:=1 to i do
  begin
    if v[j]<>0 then
    begin
      k:=k+1;
      vcompacto[k]:=v[j]
    end;
  end;
end; 

//Crea un segundo array a partir del primero el cual es igual al primer array eliminando los 0

