unit industrialrobot;

{$mode objfpc}{$H+}

interface

uses
   robot;

type
   TIndustrialRobot = class(TRobot)
   public
      procedure doMechanicalJob();override;
   end;

implementation

procedure TIndustrialRobot.doMechanicalJob();
begin
  writeln('industrial robot builds car');
end;

end.

