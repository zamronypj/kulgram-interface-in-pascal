unit biological;

{$mode objfpc}{$H+}

interface

uses
   core;

type

    TBiologicalObject = class(TCoreObject)
    public
        procedure breathe(); virtual; abstract;
    end;

implementation

end.

