unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportImage, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    frxJPEGExport1: TfrxJPEGExport;
    Image1: TImage;
    Button1: TButton;
    edt1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ScreenCap(LeftPos, TopPos, RightPos, BottomPos: integer);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ScreenCap(LeftPos, TopPos, RightPos, BottomPos: integer);
var
  RectWidth, RectHeight: integer;
  SourceDC, DestDC, Bhandle: integer;
  Bitmap: TBitmap;
  Stream: TMemoryStream;
begin
  RectWidth := RightPos - LeftPos;
  RectHeight := BottomPos - TopPos;
  SourceDC := CreateDC('DISPLAY', '', '', nil);
  DestDC := CreateCompatibleDC(SourceDC);
  Bhandle := CreateCompatibleBitmap(SourceDC, RectWidth, RectHeight);
  SelectObject(DestDC, Bhandle);
  BitBlt(DestDC, 0, 0, RectWidth, RectHeight, SourceDC, LeftPos, TopPos,
    SRCCOPY);
  Bitmap := TBitmap.Create;
  Bitmap.Handle := Bhandle;
  Stream := TMemoryStream.Create;
  Bitmap.SaveToStream(Stream);
  Stream.Free;
  try
    Image1.Picture.Assign(bitmap);
//    Image1.CompressionQuality := 70;
//    Image1.Compress;
//    Image1.SaveToFile('C:MyJPEGImage.JPG');
  finally
//    MyJpeg.Free;
    Bitmap.Free;
    DeleteDC(DestDC);
    ReleaseDC(Bhandle, SourceDC);
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
ScreenCap(strtoint(edt1.Text),strtoint(edit2.Text),strtoint(edit3.Text),strtoint(edit4.Text));
end;

end.
