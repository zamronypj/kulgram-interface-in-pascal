unit painterrobot;

{$mode objfpc}{$H+}

interface

uses
   robot, drawable;

type
   TPainterRobot = class(TRobot, IDrawable)
   public
      procedure draw();
      procedure doMechanicalTask();override;
      procedure doAutomateTask();override;
   end;

implementation

procedure TPainterRobot.draw();
begin
  writeln('painter robot draws');
end;

procedure TPainterRobot.doMechanicalTask();
begin
  draw();
end;

procedure TPainterRobot.doAutomateTask();
begin
  draw();
end;

end.

