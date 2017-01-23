unit animal;

{$mode objfpc}{$H+}

interface

uses
   biological;

type
  TAnimal = class(TBiologicalObject)
     procedure breathe(); override;
  end;


implementation

procedure TAnimal.breathe();
begin
  writeln('Animal breathe');
end;

end.

