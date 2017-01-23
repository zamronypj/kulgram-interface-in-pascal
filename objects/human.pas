unit human;

{$mode objfpc}{$H+}

interface

uses
   biological, drawable;

type
   THuman = class(TBiologicalObject, IDrawable)
   public
      procedure draw();
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

end.

