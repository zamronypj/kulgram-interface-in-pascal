unit human;

{$mode objfpc}{$H+}

interface

uses
   biological, drawable, canrepair;

type
   THuman = class(TBiologicalObject, IDrawable, ICanRepair)
   public
      procedure draw();
      procedure repair();
      procedure breathe(); override;
   end;

implementation

procedure THuman.draw();
begin
  writeln('Human draws');
end;

procedure THuman.breathe();
begin
  writeln('Human breathe');
end;

procedure THuman.repair();
begin
  writeln('Human repairs thing');
end;

end.

