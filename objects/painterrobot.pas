unit painterrobot;

{$mode objfpc}{$H+}

interface

uses
   robot, drawable;

type
   TPainterRobot = class(TRobot, IDrawable)
      procedure draw();
   end;

implementation

procedure TPainterRobot.draw();
begin
  writeln('painter robot draws');
end;

end.

