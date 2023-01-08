unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);

  private

  public

  end;

var
  Form2: TForm2;

implementation
uses unit1;
{$R *.lfm}

{ TForm2 }

// При закрытии окна переходи на вторую форму.
procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Form1.show;
end;

end.

