# FalconsExpressMVC

Sistema de gestión y pedidos desarrollado con la arquitectura Modelo-Vista-Controlador (MVC) en PHP, soporte de persistencia en MySQL y generación de reportes en PDF.

## 🚀 Características

* **Arquitectura MVC:** Separación clara entre modelos, vistas y controladores para una estructura escalable.
* **Enrutamiento Dinámico:** Punto de entrada único (`index.php`) para coordinar la carga de controladores mediante parámetros `GET`.
* **Gestión de Usuarios y Pedidos:** Control de operaciones CRUD para usuarios, productos, pedidos, detalles y domicilios.
* **Reportes en PDF:** Módulo integrado mediante la librería FPDF para exportar listados de la base de datos (p. ej., reporte de usuarios).
* **Interfaz Adaptativa:** Diseño frontend responsivo integrado con Bootstrap, Flexslider y componentes datetimepicker.

---

## 🛠️ Tecnologías Utilizadas

* **Backend:** PHP 7+
* **Base de Datos:** MySQL / MariaDB
* **Frontend:** HTML5, CSS3, JavaScript (jQuery, Bootstrap)
* **Librerías:** FPDF, Flexslider, Moment.js

---

## 📁 Estructura del Proyecto

```text
FalconsExpressMVC/
├── Assets/                 # Recursos estáticos (CSS, JS, imágenes)
│   ├── css/                # Estilos (bootstrap.css, style.css, etc.)
│   ├── images/             # Imágenes y assets visuales
│   └── js/                 # Scripts (jquery, bootstrap, main.js)
├── Controlador/            # Controladores del sistema
│   └── pedidos/            # Lógica de negocio y manejo de peticiones
├── Vista/                  # Vistas del sistema (HTML/PHP)
│   └── layouts/            # Plantillas reutilizables (headers, footers)
├── config.php              # Configuración global y rutas base
├── conexion.php            # Conexión a la base de datos MySQLi
├── falcons_express.sql     # Script de creación de la base de datos
├── index.php               # Front Controller / Enrutador principal
├── plantilla.php           # Encabezado y pie de página para FPDF
└── index_2.php             # Script de generación de reportes PDF
```

---

## ⚙️ Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/tu-usuario/FalconsExpressMVC.git
   ```

2. **Configurar el servidor web:**
   Coloca el proyecto en el directorio raíz de tu servidor local (ejemplo: `htdocs` en XAMPP o `www` en WampServer).

3. **Importar la Base de Datos:**
   * Abre phpMyAdmin o tu cliente MySQL.
   * Crea una base de datos llamada `falconsexpress`.
   * Importa el archivo `falcons_express.sql`.

4. **Configurar las conexiones:**
   * Revisa `config.php` y ajusta la URL base en `$urlsite` según tu entorno local.
   * Revisa `conexion.php` para asegurarte de que las credenciales de MySQL (host, usuario, contraseña) coincidan con las de tu servidor.

---

## 📄 Generación de Reportes PDF

El proyecto incluye una integración nativa con **FPDF**. Para generar un reporte de usuarios:
1. Accede a la ruta del script del reporte (`index_2.php`) a través de tu navegador.
2. El script consultará los usuarios registrados y renderizará el documento PDF estructurado en pantalla con su encabezado y número de páginas dinámico.
