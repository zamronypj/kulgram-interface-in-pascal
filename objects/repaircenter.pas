unit repaircenter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
   TRepairCenter = class(TObject)
   private
       repairObject : ICanRepair;
   public
       constructor Create(repairObj : ICanRepair);
       destructor Destroy(); override;
       procedure repairThings();
   end;

implementation

constructor TRepairCenter.Create(repairObj : ICanRepair);
begin
  repairObject := repairObj;
end;

destructor TRpairCenter.Destroy();
begin
  repairObject := nil;
  inherited Destroy();
end;

procedure TRepairCenter.repairThings();
begin
  repairObject.repair();
end;

end.

