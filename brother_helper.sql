-- =============================================
-- Author:      Sandeep Kethireddy
-- Create date: 12/25/2017
-- Description: Helper script to call vis_bro package
-- Parameters:  Replace Templ and ip to match your environment
-- =============================================
set serveroutput on;
declare
temp pls_integer;
begin
vis_bro.init(obj1=>'QRCODE',txt1=>'CM00045',
                  obj2=>'ITEM',  txt2=>'CM00045',
                  obj3=>'DESC',  txt3=>'Super Server Case',
                  templ=>'002',
                  ip=>'192.168.0.21');
              dbms_output.put_line('Complete:');
end;
