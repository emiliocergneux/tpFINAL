program TpFINAL_Consola;

uses
  Unidad_TpFINAL, Crt;

var
  Archivo: T_Archivo;
  Selecto: Char;
  Orden: Boolean;

begin
  Selecto := '0';
  Orden := False;

  Crear(Archivo);


  repeat
    ClrScr; 

    writeln('+----------------------------+');
    writeln('|  PANEL DE PROCEDIMIENTOS   |');
    writeln('+----------------------------+');
    writeln('|  [1] = CARGAR DATOS        |');
    writeln('|  [2] = ORDENAR             |');
    writeln('|  [3] = BUSQUEDA            |');
    writeln('|  [4] = LISTADO             |');
    writeln('|  [5] = AVANZAR ESTADO      |');
    writeln('|  [6] = CANCELAR ENVIO      |');
    writeln('|  [7] = SALIR               |');
    writeln('+----------------------------+');
    writeln('| PRESIONE LA TECLA NUMERICA |');
    writeln('|    DEL PROCEDIMIENTO QUE   |');
    writeln('|       DESEA REALIZAR:      |');
    writeln('+----------------------------+');

    Selecto := ReadKey;
    ClrScr; 

    case Selecto of
      '1': begin
              Guardar_Envios(Archivo);
            end;

      '2': begin
              ClrScr;
              Mensaje_Burbuja(Archivo, Orden);
              writeln();
              writeln('+-----------------------------------+');
              writeln('| PRESIONE UNA TECLA PARA CONTINUAR |');
              writeln('+-----------------------------------+');
              ReadKey;
            end;

      '3': begin
             ClrScr;
             if (Orden = false) then
             begin
              writeln('+----------------------------+');
              writeln('| ORDENE LOS ENVIOS PRIMERO! |');
              writeln('+----------------------------+');
              writeln();
              writeln('+-----------------------------------+');
              writeln('| PRESIONE UNA TECLA PARA CONTINUAR |');
              writeln('+-----------------------------------+');
              readkey();
             end
             else
             begin
              Encontrado(Archivo);
             end;
           end;

      '4': begin
             ClrScr;
             Listado(Archivo);
           end;

      '5': begin
             ClrScr;
             Avance(Archivo);
           end;

      '6': begin
             ClrScr;
             Cancelar(Archivo);
           end;

      '7': begin
            ClrScr;
            writeln('+-------------------------+');
            writeln('| FINALIZANDO PROGRAMA... |');
            writeln('+-------------------------+');
            writeln();
            writeln('+-----------------------------------+');
            writeln('| PRESIONE UNA TECLA PARA CONTINUAR |');
            writeln('+-----------------------------------+');
            ReadKey;
            ClrScr;
           end;

    else
      ClrScr;
      writeln('+-----------------+');
      writeln('| TECLA INVALIDA! |');
      writeln('+-----------------+');
      writeln();
      writeln('+-----------------------------------+');
      writeln('| PRESIONE UNA TECLA PARA CONTINUAR |');
      writeln('+-----------------------------------+');      
      ReadKey;
    end;

  until (Selecto = '7');

  ClrScr;
  writeln('+---------------------+');
  writeln('| PROGRAMA FINALIZADO |');
  writeln('+---------------------+');
  writeln();
  writeln('+-----------------------------------+');
  writeln('| PRESIONE UNA TECLA PARA CONTINUAR |');
  writeln('+-----------------------------------+');
  ReadKey;
  ClrScr;

end.
