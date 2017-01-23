unit human;

{$mode objfpc}{$H+}

interface

uses
   biological, drawable;

type
   THuman = class(TBiologicalObject, IDrawable)
      procedure draw();
   end;

implementation

procedure THuman.draw();
begin
  writeln('Human draws');
end;

end.

