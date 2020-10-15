REM

netsh advfirewall firewall add rule name="zabbix agent" protocol=TCP localport=10050 action=allow dir=IN
