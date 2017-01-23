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
      procedure drawCanvas();
   end;

implementation

constructor TCanvasObject.Create(drawableObj : IDrawable);
begin
  drawableObject := drawableObj;
end;

procedure TCanvasObject.drawCanvas();
begin
  drawableObject.draw();
end;

end.

