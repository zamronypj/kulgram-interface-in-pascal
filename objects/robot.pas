unit robot;

{$mode objfpc}{$H+}

interface

uses
   mechanical;

type
   TRobot = class(TMechanicalObject)
   public
      procedure doAutomateTask(); virtual;abstract;
   end;

implementation

end.

