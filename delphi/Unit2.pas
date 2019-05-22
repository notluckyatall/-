unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  //Form1: Tform2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1 := TForm1.Create(Application);
  form2.Hide;
  
end;

end.
