unit painterrobot;

{$mode objfpc}{$H+}

interface

uses
   robot, drawable;

type
   TPainterRobot = class(TRobot, IDrawable)
   public
      procedure draw();
      procedure doMechanicalJob();override;
   end;

implementation

procedure TPainterRobot.draw();
begin
  writeln('painter robot draws');
end;

procedure TPainterRobot.doMechanicalJob();
begin
  draw();
end;

end.

