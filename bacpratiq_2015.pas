Program Pratiq_2015;
Uses Wincrt;
Type
  Tab = Array[1..10] Of String;
Var
  T: Tab;
  N: Integer;
Procedure Saisir(Var n:Integer);
Begin
  Repeat
    Write('Saisir la taille du tableau : ');
    Readln(N);
  Until N In [5..10];
End;

Function Maj(Ch:String): Boolean;
Var
  i: Integer;
  bol: Boolean;
Begin
  i := 0;
  Repeat
    i := i+1;
    Bol := ch[i] In ['A'..'Z'];
  Until Not(Bol) Or (i=Length(ch));
  Maj := Bol;
End;
Procedure Remplir(Var T:Tab;N:Integer);
Var
  i: Integer;
Begin
  For i:= 1 To N Do
    Repeat
      Clrscr;
      Write('Saisir votre mot N°',i,' : ');
      Readln(T[i]);
    Until (Length(t[i]) In [2..12]) And Maj(T[i]);
End;
Function ZigZag(ch:String): Boolean;
Var
  i: Integer;
  Bol: Boolean;
  msg,inter: String;
Begin
  i := 0;
  bol := True;
  Repeat
    i := i+1;
    If ch[i+1]=ch[i] Then
      bol := False
    Else
      Begin
        If ch[i+1]<ch[i] Then
          msg := 'sup' ;
        If ch[i+1]>ch[i] Then
          msg := 'inf';
        If i>1 Then
          If inter=msg Then
            Bol := False;
        Inter := msg;
      End;
  Until (i=Length(ch)-1) Or Not(bol);
  zigzag := bol;
End;
Procedure affich(T:Tab;N:Integer);
Var
  i: Integer;
Begin
  For i:=1 To N Do
    If zigzag(T[i]) Then
      Writeln(T[i],' est une chaine ZigZag');
End;
Begin
  Saisir(N);
  Remplir(T,N);
  affich(T,N);
End.
