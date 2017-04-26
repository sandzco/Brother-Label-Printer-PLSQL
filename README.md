# Brother-Label-Printer-PLSQL

Oracle E-Business Suite EBS - Custom Label solution w/ Brother QL-720NW WiFi Label Printer<br>

Watch Youtube Video for detailed tutorial:<br>
https://www.youtube.com/watch?v=pXk2l-g7ds8<br>

----------------------------------------------------
LABEL/TEMPLATE INSTALL
----------------------------------------------------
1.) Install Brother Drivers and Transfer Manager (available from brother.com)<br>
2.) Find Printer and connect via network(WiFi or Ethernet)<br>
3.) Upload the Item.LBX into the Brother QL-720NW Printer<br>
4.) Note Template Position<br>

----------------------------------------------------
PL/SQL INSTALL
----------------------------------------------------
1.) Connect to APPS database<br>
2.) Compile Package vis_bro.sql as APPS<br>
3.) Open brother_helper.sql and replace "template positon", IP Address etc.<br>
3.) execute db script brother_helper.sql from SQL+(or Toad, SQL Developer etc.)<br>
