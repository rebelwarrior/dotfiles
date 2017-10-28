Use [Ninite](https://ninite.com) to install.
1. 7-zip
2. VLC Player
3. Foxit Reader (PDF)
4. ImgBurn
5. InfraRecorder
6. MalawareBytes
7. Notepad ++

Others:
- Microsoft Security Essentials (also available on Ninite)
- f.lux 

Test Time.bat:
```bat
net stop  w32time
net start w32time
w32tm /resync /nowait 
```
Above script should resynch the time but doesn't seem to work. 
