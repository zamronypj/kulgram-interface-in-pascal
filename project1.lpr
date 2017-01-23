program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,

  core, biological, mechanical, human, animal, robot,
  vehicle, industrialrobot, painterrobot, drawable, canvasobject;

type

  { TMyApplication }

  TMyApplication = class(TCustomApplication)
  private
    canvasObject : TCanvasObject;
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
begin
  drawableObject := TPainterRobot.Create();
  /drawableObject := THuman.Create();
  canvasObject := TCanvasObject.Create(drawableObject);
end;

procedure TMyApplication.destroyObjects();
begin
  canvasObject.Free();
end;

var
  Application: TMyApplication;
begin
  Application:=TMyApplication.Create(nil);
  Application.Title:='My Application';
  Application.Run;
  Application.Free;
end.

