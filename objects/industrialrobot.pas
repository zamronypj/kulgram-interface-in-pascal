unit industrialrobot;

{$mode objfpc}{$H+}

interface

uses
   robot;

type
   TIndustrialRobot = class(TRobot)
   public
      procedure doMechanicalTask();override;
      procedure doAutomateTask(); override;
   end;

implementation

procedure TIndustrialRobot.doMechanicalTask();
begin
  writeln('industrial robot builds car');
end;

procedure TIndustrialRobot.doAutomateTask();
begin
  doMechanicalTask();
end;

end.

