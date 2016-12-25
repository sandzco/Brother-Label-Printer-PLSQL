CREATE OR REPLACE PACKAGE VIS_BRO AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  
  procedure init(obj1 in varchar2 default null,
                 txt1 in varchar2 default null,
                 obj2 in varchar2 default null,
                 txt2 in varchar2 default null,
                 obj3 in varchar2 default null,
                 txt3 in varchar2 default null,
                 obj4 in varchar2 default null,
                 txt4 in varchar2 default null,
                 ip in varchar2,
                 port in number default 9100);

  function makeObj(temp in varchar2,
                    text in varchar2) return varchar2;

END VIS_BRO;
/


CREATE OR REPLACE PACKAGE BODY VIS_BRO AS

procedure init(  obj1 in varchar2 default null,
                 txt1 in varchar2 default null,
                 obj2 in varchar2 default null,
                 txt2 in varchar2 default null,
                 obj3 in varchar2 default null,
                 txt3 in varchar2 default null,
                 obj4 in varchar2 default null,
                 txt4 in varchar2 default null,
                 ip in varchar2,
                 port in number default 9100) AS
                 
  c  utl_tcp.connection;  -- TCP/IP connection to Printer
  ret_val pls_integer; 
  hex varchar2(256):='';
  text varchar2(64);
  init varchar2(96);
  prin varchar2(96);
  objt varchar2(96);
BEGIN
  c := utl_tcp.open_connection(remote_host => ip,
                               remote_port => port,
                               charset     => 'US7ASCII');  -- open connection

                               
init:= utl_raw.cast_to_varchar2(hextoraw('1B6961035E49495E5453303031'));

if(obj1 is not null) then

hex:= hex || makeObj(obj1,txt1);

end if;

if(obj2 is not null) then

hex:= hex || makeObj(obj2,txt2);

end if;

if(obj3 is not null) then

hex:= hex || makeObj(obj3,txt3);

end if;

if(obj4 is not null) then

hex:= hex || makeObj(obj4,txt4);

end if;

prin:=   utl_raw.cast_to_varchar2(hextoraw('5E4646'));


  ret_val := utl_tcp.write_line(c, init || hex || prin);    -- send TCP request
  --ret_val := utl_tcp.write_line(c);
  
  utl_tcp.close_connection(c);
Exception
when others then 
  null;
END init;

function makeObj(temp in varchar2,
                    text in varchar2) return varchar2 AS
len varchar2(2);
BEGIN
    -- TODO: Implementation required for function XXDHM_BRO.makeObj

len:=lpad(trim(to_char(length(text),'XX')),2,'0');

return   utl_raw.cast_to_varchar2(hextoraw('5E4F4E' || temp || '005E4449'|| len ||'00'))||text;


END makeObj;

END VIS_BRO;
/
