#! /bin/bash
cd ~/Descargas

leer(){ 
	ls -A | wc -l
}

a=$(leer)

move(){

mv *.png *.jpg *.jpeg *.gif *.webp ~/Imágenes 2>/dev/null
mv *.mp4 *.mov *.mkv ~/Vídeos 2>/dev/null
mv *.pdf ~/Documentos 2>/dev/null
mv *.zip *.tgz *.tar.gz *.rar ~/comprimidos 2>/dev/null
mv *.deb ~/Documentos 2>/dev/null
mv *.mp3 /home/irachan/Música/Musica/FormatoMP3 2>/dev/null
mv *.ISO /home/irachan/test_share/SO 2>/dev/null

}
if [ "$(leer)" -gt 50 ]; then
mkdir -p ~/Imágenes
mkdir -p ~/Vídeos
mkdir -p ~/Documentos
mkdir -p ~/comprimidos
mkdir -p /home/irachan/Música/Musica/FormatoMP3
mkdir -p /home/irachan/test_share/SO
move
echo movido exitosamente
notify-send "Orden completada" "Se movieron $a archivos"

else 
notify-send "No se completo la orden" "Archivos insuficientes en el directorio. (necesarios: <50)"
echo hizo nada

fi
