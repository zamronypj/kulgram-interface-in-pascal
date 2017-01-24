program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,

  core, biological, mechanical, human, animal, robot, vehicle, industrialrobot,
  painterrobot, drawable, canvasobject, strangeobject, canrepair, repaircenter;

type

  { TMyApplication }

  TMyApplication = class(TCustomApplication)
  private
    canvasObject : TCanvasObject;
    repairCenter : TRepairCenter;
    procedure createObjects();
    procedure destroyObjects();
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
  end;

{ TMyApplication }

procedure TMyApplication.DoRun;
begin
  canvasObject.drawCanvas();
  repairCenter.repairThings();

  // stop program loop
  Terminate;
end;

constructor TMyApplication.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;

  createObjects();
end;

destructor TMyApplication.Destroy;
begin
  destroyObjects();
  inherited Destroy;
end;

procedure TMyApplication.createObjects();
var drawableObject : IDrawable;
    repairObject : ICanRepair;
    human : THuman;
begin
  human := THuman.Create();
  drawableObject := human;
  //drawableObject := TPainterRobot.Create();
  //drawableObject := TStrangeObject.Create();
  canvasObject := TCanvasObject.Create(drawableObject);

  repairObject := human;
  //repairObject := TIndustrialRobot.Create();
  repairCenter := TRepairCenter.Create(repairObject);
end;

procedure TMyApplication.destroyObjects();
begin
  canvasObject.Free();
  repairCenter.Free();
end;

var
  Application: TMyApplication;
begin
  Application:=TMyApplication.Create(nil);
  Application.Title:='Kulgram';
  Application.Run;
  Application.Free;
end.

