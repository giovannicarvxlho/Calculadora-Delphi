unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_0: TButton;
    btn_ponto: TButton;
    btn_dividir: TButton;
    btn_igual: TButton;
    btn_8: TButton;
    btn_soma: TButton;
    btn_9: TButton;
    btn_5: TButton;
    btn_4: TButton;
    btn_subtrair: TButton;
    btn_6: TButton;
    btn_2: TButton;
    btn_1: TButton;
    btn_mult: TButton;
    btn_3: TButton;
    btn_7: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    txt_num1: TEdit;
    lb_operador: TLabel;
    txt_num2: TEdit;
    btn_apagar: TButton;
    btn_del: TButton;
    procedure btn_somaClick(Sender: TObject);
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_0Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '0';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '0';
    end;
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin

  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '1';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '1';
    end;
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '2';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '2';
    end;
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '3';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '3';
    end;
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '4';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '4';
    end;
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '5';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '5';
    end;
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '6';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '6';
    end;
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '7';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '7';
    end;
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '8';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '8';
    end;
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '9';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '9';
    end;
end;

procedure TForm1.btn_apagarClick(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := '';
    end
    else
      begin
        txt_num2.Text := '';
      end;

end;

procedure TForm1.btn_delClick(Sender: TObject);
begin
  txt_num1.Text := '';
  txt_num2.Text := '';
  lb_operador.Text := '.';
  btn_soma.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := true;

end;

procedure TForm1.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_soma.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := false;
  btn_mult.Enabled := true;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var n1, n2 : double;
begin

  if(txt_num1.Text = '') then
  begin
    txt_num1.Text := '0';
    n1 := 0;
  end;
  if(txt_num2.Text = '') then
  begin
    txt_num2.Text := '0';
    n2 := 0;
  end;

  n1 := strToFloat(txt_num1.Text);
  n2 := strToFloat(txt_num2.Text);

  if(lb_operador.Text = '+') then
  begin
    ShowMessage (FloatToStr(n1 + n2));
  end
  else if(lb_operador.Text = '-') then
  begin
    ShowMessage (FloatToStr(n1 - n2));
  end
  else if(lb_operador.Text = '*') then
  begin
    ShowMessage (FloatToStr(n1 * n2));
  end
  else if(lb_operador.Text = '/') then
  begin
    ShowMessage (FloatToStr(n1 / n2));
  end
  else
  begin
    ShowMessage('Operador não inserido!');
  end;

  txt_num1.Text := '';
  txt_num2.Text := '';
  lb_operador.Text := '.';
  btn_soma.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := true;

end;

procedure TForm1.btn_multClick(Sender: TObject);
begin
  lb_operador.Text := '*';
  btn_soma.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := false;
end;

procedure TForm1.btn_pontoClick(Sender: TObject);
begin
  if(lb_operador.Text = '.') then
    begin
      txt_num1.Text := txt_num1.Text + '.';
    end
  else
    begin
      txt_num2.Text := txt_num2.Text + '.';
    end;
end;

procedure TForm1.btn_somaClick(Sender: TObject);
begin
  lb_operador.Text := '+';
  btn_soma.Enabled := false;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := true;
end;

procedure TForm1.btn_subtrairClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_soma.Enabled := true;
  btn_subtrair.Enabled := false;
  btn_dividir.Enabled := true;
  btn_mult.Enabled := true;
end;

end.
