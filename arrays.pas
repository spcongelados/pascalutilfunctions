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

