unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    edt3: TEdit;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    DESKRIPSI: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt1.SetFocus;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  zqry1.Append;
  zqry1.FieldByName('nama').AsString := edt1.Text;
  zqry1.FieldByName('diskripsi').AsString := edt2.Text;
  zqry1.Post;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('nama').AsString := edt1.Text;
  zqry1.FieldByName('diskripsi').AsString := edt2.Text;
  zqry1.Post;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if MessageDlg('Yakin Menghapus Data Ini', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    zqry1.Delete;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := zqry1.FieldByName('nama').AsString;
  edt2.Text := zqry1.FieldByName('diskripsi').AsString;
end;

end.

