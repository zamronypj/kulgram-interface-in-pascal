unit canvasobject;

{$mode objfpc}{$H+}

interface

uses
   drawable;

type
   TCanvasObject = class(TObject)
   private
      drawableObject : IDrawable;
   public
      constructor Create(drawableObj : IDrawable);
      destructor Destroy(); override;
      procedure drawCanvas();
   end;

implementation

constructor TCanvasObject.Create(drawableObj : IDrawable);
begin
  drawableObject := drawableObj;
end;

destructor TCanvasObject.Destroy();
begin
  drawableObject := nil;
  inherited Destroy();
end;

procedure TCanvasObject.drawCanvas();
begin
  drawableObject.draw();
end;

end.

