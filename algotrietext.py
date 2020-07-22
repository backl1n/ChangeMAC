#! programme de reformatage de la sortie a afficher sur le programme bash
import os
interface_phy = "eth0"
interface_sans_fil = "wlan0"
f = open("ifconfig.txt","r+")
d = f.readlines()
f.seek(0)
for i in d:
    if i !=  "eth0" and i  != "wlan0":
        f.write(i)
        f.truncate()
        f.close()