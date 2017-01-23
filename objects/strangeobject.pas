unit strangeobject;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, drawable;

type
   TStrangeObject = class(TInterfacedObject, IDrawable)
   public
       procedure draw();
   end;

implementation

procedure TStrangeObject.draw();
begin
  writeln('strange object can draw too');
end;

end.

