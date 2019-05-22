unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM Книги');
  ADOQuery1.Active:=True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  form2.show;
  form1.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
    if (Trim(Edit1.Text)='') or (Trim(Edit2.Text)='') or (Trim(Edit3.Text)='') then
    begin
      exit;
    end;

    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Произведения');
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Произведение').AsString:=Edit1.Text;
   // ADOQuery1.Lookup('Произведение',Edit1.Text,'Произведение');

    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Книги');
    ADOQuery1.Insert;
    ADOQuery1.FieldByName('Произведение').AsString:=Edit1.Text;
    ADOQuery1.FieldByName('Издание').AsString:=Edit2.Text;
    ADOQuery1.FieldByName('Год издания').AsString:=Edit3.Text;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
  except
   on e:Exception do
  end;
  ADOQuery1.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  try
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('INSERT INTO Книги(Произведение,Издание,Год издания) VALUES("Иван","Иванович","2014")');
    ADOQuery1.ExecSQL;
   ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Книги');
    ADOQuery1.Active:=True;
  except
  on e:Exception do
  end;
end;

end.
