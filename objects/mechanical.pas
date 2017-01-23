unit mechanical;

{$mode objfpc}{$H+}

interface

uses
   core;

type

   TMechanicalObject = class(TCoreObject)
   public
      procedure doMechanicalJob();virtual; abstract;
   end;

implementation

end.

