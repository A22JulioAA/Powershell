#1.Amosa a data
Get-Date
#2.Lista os directorios ou arquivos que hai en Windows/System32 e que o seu nome comece por w
dir C:\Windows\System32 -Directory
Get-ChildItem C:\Windows\System32 -Directory 
#3.Fai a seguinte estrutura de directorios e arquivos:
New-Item -Path C:\SISTEMAS -ItemType Directory
New-Item -Path C:\EXERCICIOS\folla2.txt -ItemType File
#4.Copia todos os ficheiros do directorio ejercicios a C cunha soa orde.
Copy-Item -Path C:\EXERCICIOS\* -Destination C:\ -Recurse
#5.Crea un directorio en C que se chame PRACTICA2 e copia o ficheiro LABEL.EXE do subdirectorio SYSTEM32 de WINDOWS en PRACTICA2 pero co nome ETIQUETA.EXE. Podes utilizar 2 comandos.
New-Item -Path C:\PRACTICA2 -ItemType Directory
Copy-Item -Path C:\Windows\System32\label.exe -Destination C:\PRACTICA2\ETIQUETA.exe
#6.Copia todos os ficheiros do directorio EXERCICIOS a PRACTICA2 cunha soa orde.
Copy-Item -Path C:\EXERCICIOS\* -Destination C:\PRACTICA2
#7.Copia todos os ficheiros do directorio PRACTICA2 que teñen extensión txt no directorio DOS pero coa extensión sol, cunha soa orde.
Copy-Item -Path C:\PRACTICA2\*.txt -Destination C:\DOS\$.sol
#8.Con ruta absoluta renomea o ficheiro folla1.sol que se atopa en DOS como folla.dat
Rename-Item -Path C:\DOS\folla1.sol -NewName folla.dat
#9.Copia todo o directorio Sistemas noutro directorio chamado CopySist cunha soa orde
Copy-Item -Path "C:\SISTEMAS" -Destination C:\CopySist -Recurse
#10.Ubícate na túa carpeta de usuario con ruta absoluta
cd C:\Users\Alumno
#11.Utilizando ruta relativa borra o directorio CopySist
Remove-Item -Path ..\..\CopySist -Recurse
#12.Pon atributo oculto ao arquivo folla.dat que hai no directorio DOS. Tes que facer algo especial para listar dito arquivo oculto?
dir -Path C:\DOS\ -Force
#13.Cambia ao directorio DOS e, utilizando direccionamiento (>), crea un arquivo novo chamado folla.txt
cd -Path C:\DOS\ > folla.txt
#14.Amosa por pantalla o contido de folla.dat e folla.txt (2 comandos)
Get-Content .\folla.dat
Get-Content .\folla.txt
#15.Engade o contido de folla.txt a folla.dat sen borrar o que hai en folla.dat.
Add-Content -Path C:\DOS\folla.dat -Value C:\DOS\folla.txt