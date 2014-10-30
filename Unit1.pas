unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ClientSocket1: TClientSocket;
    procedure Button1Click(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  temp:string;
  status:integer=1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
clientsocket1.host:='john.petra.ac.id';
clientsocket1.port:=25;
clientsocket1.Open;
end;

procedure TForm1.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
begin
   temp:=socket.ReceiveText;
    memo2.Lines.Add(temp);
    if (copy(temp,1,3)='220') and (status=1) then
    clientsocket1.Socket.SendText('Helo john.petra.ac.id'+#13#10);
    if (copy(temp,1,3)='250') and (status=2) then
    clientsocket1.Socket.SendText('Mail From:'+edit2.Text+#13#10);
    if (copy(temp,1,3)='250') and (status=3) then
    clientsocket1.Socket.SendText('RCPT TO:'+edit1.Text+#13#10);
    if (copy(temp,1,3)='250') and (status=4) then
    clientsocket1.Socket.SendText('DATA'+#13#10);
    if (copy(temp,1,3)='354') and (status=5) then
    begin
    clientsocket1.Socket.SendText('subject:'+edit3.Text+#13#10);
    clientsocket1.Socket.SendText(memo1.Lines.Text+#13#10);
    clientsocket1.Socket.SendText('.'+#13#10)
    end;
    if (copy(temp,1,3)='250') and (status=6) then
    clientsocket1.Socket.SendText('QUIT'+#13#10);
    if (copy(temp,1,3)='221') and (status=7) then
    clientsocket1.Close;
 status:=status+1;
end;

end.
