# Brother-Label-Printer-PLSQL

Oracle E-Business Suite EBS - Custom Label solution w/ Brother QL-720NW WiFi Label Printer

Watch Youtube Video for detailed tutorial:
https://www.youtube.com/watch?v=pXk2l-g7ds8

----------------------------------------------------
LABEL/TEMPLATE INSTALL
----------------------------------------------------
1.) Install Brother Drivers and Transfer Manager
2.) Find Printer and connect via network(WiFi or Ethernet)
3.) Upload the Item.LBX into the Brother QL-720NW Printer
4.) Note Template Position

----------------------------------------------------
PL/SQL INSTALL
----------------------------------------------------
1.) Connect to APPS database
2.) Compile Package vis_bro.sql as APPS
3.) Open brother_helper.sql and replace "template positon", IP Address etc.
3.) execute db script brother_helper.sql from SQL+(or Toad, SQL Developer etc.)
