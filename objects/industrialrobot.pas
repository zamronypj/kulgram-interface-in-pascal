unit industrialrobot;

{$mode objfpc}{$H+}

interface

uses
   robot, canrepair;

type
   TIndustrialRobot = class(TRobot, ICanRepair)
   public
      procedure repair();
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

procedure TIndustrialRobot.repair();
begin
  writeln('industrial robot repair');
end;

end.

