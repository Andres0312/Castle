unit laba1;
interface
type
TCompos=class
Pip:String[30];
Month:string[3];
Year:string[5];
symagp:real;
symapt:real;
symavs:real;
symazag:real;

constructor create(pp,mn,yr:String;gp,pt,vs:real);
function getpip:string;
function getmonth:string;
function getyear:string;
function getsymagp:real;
function getsymapt:real;
function getsymavs:real;
procedure showpip;
procedure showmonth;
procedure showyear;
procedure showsymagp;
procedure showsymapt;
procedure showsymavs;
procedure showsymazag;
end;

TCompos1=class(TCompos)
symas:real;
symall:real;
constructor create(pp,mn,yr:String;gp,pt,vs,ss:real);
function getsymas:real;
procedure showsymas;
procedure showsymall; 
end;

implementation

constructor TCompos.create(pp,mn,yr:String;gp,pt,vs:real);
begin
Pip:=pp;
Month:=mn;
Year:=yr;
symagp:=gp;
symapt:=pt;
symavs:=vs;
symazag:=gp+pt+vs;
end;


function TCompos.GetPip:string;
begin
getpip:=pip;
end;

function TCompos.GetMonth:string;
begin
getmonth:=month;
end;

function TCompos.GetYear:string;
begin
getyear:=year;
end;

function TCompos.Getsymagp:real;
begin
getsymagp:=symagp;
end;

function TCompos.Getsymapt:real;
begin
getsymapt:=symapt;
end;

function TCompos.Getsymavs:real;
begin
getsymavs:=symavs;
end;

procedure TCompos.showpip;
begin
writeln(getpip);
end;

procedure TCompos.showmonth;
begin
writeln(getmonth);
end;

procedure TCompos.showyear;
begin
writeln(getyear);
end;


procedure TCompos.showsymagp;
begin
writeln(getsymagp:8:2);
end;


procedure TCompos.showsymapt;
begin
writeln(getsymapt:8:2);
end;


procedure TCompos.showsymavs;
begin
writeln(getsymavs:8:2);
end;


procedure TCompos.showsymazag;
begin
writeln(symazag:9:2);
end;


constructor TCompos1.create(pp,mn,yr:String;gp,pt,vs,ss:real);
begin
inherited create(pp,mn,yr,gp,pt,vs);
symas:=ss;symall:=symazag-symas;
end;

function tcompos1.getsymas:real;
begin
getsymas:=symas;
end;

procedure Tcompos1.showsymas;
begin
writeln(getsymas:5:2);
end;

procedure Tcompos1.showsymall;
begin
writeln(symall:6:2);
end;

end.