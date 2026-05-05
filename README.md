# Conversor Gráfico a Texto (ASCII Art) – VB6

![Archived](https://img.shields.io/github/repo-archived/atmarquez/Graf2Tex)
![License](https://img.shields.io/badge/license-GPL--3.0-blue.svg)
![Language](https://img.shields.io/badge/Visual%20Basic-6.0-blueviolet.io/badge/status-legacy%20software-orange)
!Purpose
https://img.shields.io/badge/maintenance-none-red
![Typetput](https://img.shields.io/badge/output-ASCII%20Art-green)
!Category
https://img.shields.io/badge/input-JPG-green

Programa clásico escrito en **Visual Basic 6**, originalmente desarrollado para **Windows XP**, que convierte imágenes JPG en gráficos de texto (ASCII Art).

Este proyecto se publica en GitHub con fines **educativos, históricos y de preservación**, por si a alguien le resulta útil como referencia o base para otros desarrollos.

---

## 🖼️ ¿Qué hace este programa?

- Carga imágenes **JPG (24 bits)**.
- Convierte los píxeles a **escala de grises**.
- Reduce la imagen a **16 niveles de intensidad**.
- Sustituye cada píxel por uno o dos **caracteres ASCII configurables**.
- Genera un fichero de texto (`Grafico.txt`) con el resultado.
- Permite visualizarlo directamente en **WordPad**.

El resultado es un **gráfico de texto** que se aprecia mejor ajustando la fuente y alejándose ligeramente de la pantalla.

---

## 🧠 ¿Cómo funciona internamente?

1. Cada píxel RGB se convierte a escala de grises.
2. El valor resultante se reduce de 24 bits a 4 bits (16 niveles).
3. Cada nivel se traduce a un carácter ASCII según una tabla configurable.
4. Para mantener la proporción visual, cada píxel se representa con **dos caracteres**.
5. El resultado se guarda como texto plano.

---

## 🧪 Instrucciones de uso

1. Abrir el programa.
2. Menú **Archivo → Abrir**, seleccionar una imagen JPG.
3. La imagen se mostrará en pantalla.
4. Menú **Conversión → Procesar**.
5. La imagen se convierte a escala de grises.
6. Se genera el fichero `Grafico.txt`.
7. Aceptar para abrirlo en WordPad.
8. En WordPad:
   - Seleccionar todo el texto.
   - Menú **Formato → Fuente**.
   - Elegir **Courier New**.
   - Tamaño recomendado: **3 o 4**.
9. Aléjate un poco de la pantalla y observa el resultado 😉

---

## ✅ Consejos para mejores resultados

- No uses imágenes demasiado grandes.
  - **Máximo recomendado:** ~200 píxeles por lado.
- Para gráficos visibles en pantalla:
  - Tamaño de imagen: **70–100 píxeles**.
  - Tamaño de fuente: **4**.
- Sorprendentemente, las imágenes pequeñas suelen dar mejores resultados.
- Alejarse físicamente de la pantalla mejora la percepción del gráfico.
- Puedes modificar los caracteres ASCII usados desde:
 
 Conversión → Configuración
 
 ---

## 🖥️ Requisitos y limitaciones

- ✅ Funciona correctamente en **Windows XP**
- ⚠️ No garantizado en sistemas modernos (Windows 10/11)
- 📷 Solo admite archivos **JPG**
- 📝 Usa WordPad desde una ruta fija (clásica de XP)
- 🔤 Pensado para fuentes monoespaciadas

---

## 📁 Contenido del repositorio
/
├─ src/              Código fuente VB6
├─ images/           Imágenes de prueba
├─ docs/             Documentación original
├─ README.md         Este archivo
└─ LICENSE           Licencia GNU GPL v3

---

## 📜 Licencia

Este proyecto se distribuye bajo la licencia:

**GNU General Public License v3.0**

Puedes usar, modificar y redistribuir el software, siempre que mantengas esta misma licencia y reconozcas la autoría original.

---

## 👤 Autor original

Antonio T. Márquez Muñoz  (Naidel)
Contacto: atmarquez@gmail.com
👉 https://paypal.me/atmarquez

---

## 🧾 Nota final

Este software refleja técnicas habituales de programación gráfica en VB6 y acceso directo a píxeles mediante punteros de memoria.  
Se publica **tal cual**, sin mantenimiento activo, como testimonio de la programación de principios de los 2000.

Si decides portarlo, modernizarlo o usarlo como base: ¡adelante!

“Published to preserve a small piece of early 2000s Visual Basic software craftsmanship.”
