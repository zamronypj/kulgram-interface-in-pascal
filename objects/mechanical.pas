unit mechanical;

{$mode objfpc}{$H+}

interface

uses
   core;

type

   TMechanicalObject = class(TCoreObject)
   public
      procedure doMechanicalTask();virtual; abstract;
   end;

implementation

end.

