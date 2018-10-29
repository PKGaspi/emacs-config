# Mi configuración de emacs
## Introducción

Configuración de Emacs basada en la de [Alfedi] personalizada para mi uso propio. La configuración todavía no es final y la iré actualizando con el tiempo.

## Instalación

Para **Linux**, usando git:  
**¡Atención!  
Esto borrará tu configuración init de Emacs actual. Respalde su configuración si desea conservarla.**
~~~
rm -rf ~/.emacs.d
git clone https://github.com/rapsaGnauJ/emacs-config ~/.emacs.d
~~~

Para **otros sistemas operativos**:  
Descargar el archivo init.el y reemplazar el actual de su configuración de Emacs. Respalde su configuración si desea conservarla. Para saber dónde se encuentra su configuración, busque en Google.

## Apariencia

El tena usado es [Cyberpunk theme] por [n3mo] con alguna ligera modificación.  
El color de fondo es #101010 y el del cursor es #cd1076.  
**Nota.-** El color del cursor a veces se cambia a blanco. Hay que arreglar eso.

## Paquetes instalados

Los paquetes instalados son los de la configuración de [Alfedi] con la adición de:  

- [multiple-cursors]
  - C-S-c C-S-c - *mc/edit-lines* - Crea un cursor en todas las líneas seleccionadas.
  - C-> - *mc/mark-next-like-this* - Crea un cursor en la siguiente coincidencia con la selección actual.
  - C-< - *mc/mark-previous-like-this* - Crea un cursor en la anterior coincidencia con la selección actual.
  - C-c C-< - *mc/mark-all-like-this* - Crea un cursor en todas las coincidencias con la selección actual.

## Atajos de teclado

Estos son los atajos de teclado que he ido añadiendo:  

- C-z - *undo* - Deshacer.
- C-x C-k - *kill-buffer* - Matar un buffer.
- Cx k - *kill-buffer-and-window* - Matar buffer actual y cerrar su ventana.
- C-\<backspace\> - *kill-whole-line* - Borra la línea actual.
- C-a - *mark-whole-buffer* - Selecciona todo el buffer actual.
- C-S-e - *move-beggining-of-line* - Mover el cursor al principio de la línea actual.
- C-; - *comment-line* - Comenta/Descomenta la línea actual.
- RET - *indent-new-comment-line* - Cambia de línea y empieza con comentario si la anterior era un comentario.


[Alfedi]: https://github.com/Alfedi
[Cyberpunk theme]: https://github.com/n3mo/cyberpunk-theme.el
[n3mo]: https://github.com/n3mo/
[multiple-cursors]: https://github.com/magnars/multiple-cursors.el
