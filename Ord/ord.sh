#! /bin/bash
cd ~/Descargas #Ruta de tu carpeta de descargas

leer(){ 
	ls -A | wc -l
}

a=$(leer)

move(){

mv *.png *.jpg *.jpeg *.gif *.webp ~/Imágenes 2>/dev/null #inserte su ruta propia de aki pa abajo
mv *.mp4 *.mov *.mkv ~/Vídeos 2>/dev/null
mv *.pdf ~/Documentos 2>/dev/null
mv *.zip *.tgz *.tar.gz *.rar ~/comprimidos 2>/dev/null
mv *.deb ~/Documentos 2>/dev/null
mv *.mp3 /home/irachan/Música/Musica/FormatoMP3 2>/dev/null
mv *.ISO /home/irachan/test_share/SO 2>/dev/null

}
if [ "$(leer)" -gt 50 ]; then #Puedes cambiar la cantidad necesaria de archivos para que se ordene la carpeta cambiando el "50" por el numero que desees
mkdir -p ~/Imágenes #cambia a tu ruta
mkdir -p ~/Vídeos #cambia a tu ruta
mkdir -p ~/Documentos #cambia a tu ruta
mkdir -p ~/comprimidos #cambia a tu ruta
mkdir -p /home/irachan/Música/Musica/FormatoMP3 #cambia a tu ruta
mkdir -p /home/irachan/test_share/SO #Cambia tu ruta
move
notify-send "Orden completada" "Se movieron $a archivos"

else 
notify-send "No se completo la orden" "Archivos insuficientes en el directorio. (necesarios: <50)"

fi
