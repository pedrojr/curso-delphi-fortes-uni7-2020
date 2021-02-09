unit CheckLstHelper;

interface

uses
  Vcl.CheckLst;

type
  TCheckListBoxHelper = class helper for TCheckListBox
  public
    procedure Reverse;
  end;

 TAssert = class
 private
    class var fOnAssert: string;
 public
   class procedure Pass(const message : string = '');
 end;

type
  TAssertHlp = class helper for TAssert
  public
    class procedure AreLulu(const message : string = '');
  end;

implementation

{ TCheckListBoxHelper }

procedure TCheckListBoxHelper.Reverse;
var
  I: Integer;
begin
  for I := 0 to Items.Count -1 do
    Checked[I] := not Checked[I];
end;

{ TAssert }

class procedure TAssert.Pass(const message: string);
begin
  TAssert.fOnAssert := message;
end;

{ TAssertHlp }

class procedure TAssertHlp.AreLulu(const message: string);
begin
  TAssert.fOnAssert := message;
end;

end.
