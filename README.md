# 🦅 Falcons Express MVC

<p align="center">
  <strong>Aplicación web para gestión de usuarios, productos y pedidos utilizando arquitectura MVC</strong>
</p>

<p align="center">
  <a href="https://github.com/Mvilla44/Aplicaci-n-Web">
    <img src="https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github" alt="GitHub">
  </a>
  <img src="https://img.shields.io/badge/PHP-Backend-777BB4?style=for-the-badge&logo=php&logoColor=white" alt="PHP">
  <img src="https://img.shields.io/badge/MySQL%2FMariaDB-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/MVC-Architecture-orange?style=for-the-badge" alt="MVC">
  <img src="https://img.shields.io/badge/JavaScript-Frontend-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
  <img src="https://img.shields.io/badge/Bootstrap-UI-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white" alt="Bootstrap">
</p>

---

## 📌 Sobre el proyecto

**Falcons Express MVC** es una aplicación web desarrollada para gestionar diferentes procesos relacionados con una plataforma de pedidos, utilizando el patrón arquitectónico **Modelo-Vista-Controlador (MVC)**.

El proyecto implementa una separación clara entre:

- **Modelo:** gestión de datos y comunicación con la base de datos.
- **Vista:** interfaces y componentes visuales.
- **Controlador:** procesamiento de solicitudes y coordinación de la lógica de la aplicación.

La aplicación está organizada en módulos para **usuarios, productos y pedidos**, acompañados de una base de datos relacional y recursos frontend.

El proyecto fue desarrollado como una práctica de desarrollo web orientada a fortalecer conocimientos de **PHP, SQL, arquitectura MVC, operaciones CRUD, frontend y gestión de bases de datos**.

---

# 🎯 ¿Qué problema resuelve?

Falcons Express busca centralizar en una aplicación web la gestión de información relacionada con:

```text
👤 Usuarios
        │
        ▼
🛒 Pedidos
        │
        ▼
📦 Productos
```

En lugar de manejar esta información de manera independiente, el sistema permite organizarla dentro de una aplicación conectada a una base de datos relacional.

Esto facilita la administración y consulta de la información y proporciona una base para continuar evolucionando el sistema hacia una solución web más completa.

---

# ✨ Funcionalidades

## 👤 Gestión de usuarios

El sistema dispone de un módulo dedicado a los usuarios.

Permite trabajar con información de usuarios desde la aplicación mediante las operaciones correspondientes implementadas en el proyecto.

**Módulo:**

```text
Controlador/usuarios/
Vista/usuarios/
```

---

## 📦 Gestión de productos

El módulo de productos permite administrar la información correspondiente al catálogo de productos.

**Módulo:**

```text
Controlador/productos/
Vista/productos/
```

Entre las operaciones implementadas se encuentra la gestión de la información de los productos mediante operaciones CRUD.

---

## 🛒 Gestión de pedidos

Los pedidos constituyen uno de los componentes principales de la aplicación.

El sistema trabaja con pedidos y sus respectivos detalles, permitiendo relacionar los productos que forman parte de cada pedido.

**Módulo:**

```text
Controlador/pedidos/
Vista/pedidos/
```

---

# 🏗️ Arquitectura MVC

Uno de los principales objetivos técnicos del proyecto es aplicar el patrón **Modelo-Vista-Controlador**.

```text
                         ┌─────────────────┐
                         │     USUARIO     │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │      VISTA      │
                         │ HTML / CSS / JS │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │   CONTROLADOR   │
                         │      PHP        │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │     MODELO      │
                         │      PHP        │
                         └────────┬────────┘
                                  │
                                  ▼
                         ┌─────────────────┐
                         │ MySQL / MariaDB │
                         └─────────────────┘
```

### 🔵 Modelo

Se encarga de representar y gestionar la información utilizada por la aplicación y de trabajar con la persistencia de datos.

```text
Modelo/
└── index.php
```

### 🟠 Controlador

Los controladores reciben y procesan las operaciones de la aplicación.

```text
Controlador/
├── pedidos/
├── productos/
└── usuarios/
```

La separación por módulos facilita localizar y mantener la lógica correspondiente a cada funcionalidad.

### 🟢 Vista

La capa de presentación contiene las interfaces que utiliza el usuario.

```text
Vista/
├── css/
├── layouts/
├── pedidos/
├── productos/
└── usuarios/
```

Esta organización permite mantener separada la presentación de la lógica de negocio.

---

# 🗂️ Estructura del proyecto

```text
FalconsExpressMVC/
│
├── Controlador/
│   ├── pedidos/
│   ├── productos/
│   └── usuarios/
│
├── Modelo/
│   └── index.php
│
├── Vista/
│   ├── css/
│   ├── layouts/
│   ├── pedidos/
│   ├── productos/
│   └── usuarios/
│
├── assets/
│
├── js/
│
├── sass/
│
├── config.php
│
├── index.php
├── index.html
│
├── falconsexpress.sql
├── mvc.sql
│
└── Reporte Proyecto PDF/
```

Esta estructura está basada en la organización actualmente disponible en el repositorio.

---

# 🛠️ Stack tecnológico

| Tecnología | Utilización |
|---|---|
| **PHP** | Backend y lógica de la aplicación |
| **MySQL / MariaDB** | Persistencia y gestión de datos |
| **SQL** | Creación y manipulación de la base de datos |
| **HTML5** | Estructura de las interfaces |
| **CSS3** | Estilos y presentación |
| **JavaScript** | Interactividad |
| **jQuery** | Manipulación e interacción del frontend |
| **Bootstrap** | Componentes y diseño de interfaz |
| **SASS** | Organización de estilos |
| **Git** | Control de versiones |
| **GitHub** | Repositorio y distribución del código |

---

# 🗄️ Base de datos

El proyecto incluye el script:

```text
falconsexpress.sql
```

El archivo contiene la estructura SQL utilizada por la aplicación y tiene aproximadamente **465 líneas**, por lo que constituye una parte importante del proyecto y no solamente un archivo de datos de prueba.

También se incluye:

```text
mvc.sql
```

Esto permite disponer de los recursos necesarios para configurar la base de datos durante la instalación.

---

# 🔗 Modelo conceptual

La estructura de negocio puede representarse de manera simplificada mediante las siguientes relaciones:

```text
┌──────────────┐
│    USUARIO   │
└──────┬───────┘
       │
       │ realiza
       ▼
┌──────────────┐
│    PEDIDO    │
└──────┬───────┘
       │
       │ contiene
       ▼
┌────────────────────┐
│   DETALLE PEDIDO   │
└──────────┬─────────┘
           │
           │ referencia
           ▼
┌────────────────────┐
│      PRODUCTO      │
└────────────────────┘
```

El uso de una entidad de detalle permite representar los productos incluidos dentro de un pedido y almacenar información asociada a cada elemento.

---

# 🔄 Flujo de funcionamiento

Un flujo simplificado de la aplicación es:

```text
Usuario
   │
   ▼
Interfaz web
   │
   ▼
Controlador
   │
   ▼
Modelo
   │
   ▼
Base de datos
   │
   ▼
Modelo
   │
   ▼
Controlador
   │
   ▼
Vista
   │
   ▼
Usuario
```

Este flujo permite mantener separadas las responsabilidades de presentación, procesamiento y persistencia.

---

# 🚀 Instalación

## 1. Requisitos

Para ejecutar el proyecto localmente se recomienda tener instalado:

- PHP
- Apache
- MySQL o MariaDB
- phpMyAdmin
- Git
- Navegador web

Una alternativa sencilla para disponer de Apache, PHP y MySQL/MariaDB es **XAMPP**.

---

## 2. Clonar el repositorio

```bash
git clone https://github.com/Mvilla44/Aplicaci-n-Web.git
```

Entrar al proyecto:

```bash
cd Aplicaci-n-Web/FalconsExpressMVC
```

---

## 3. Configurar el servidor

Si utilizas XAMPP, coloca el proyecto dentro de:

```text
C:\xampp\htdocs\
```

Por ejemplo:

```text
C:\xampp\htdocs\Aplicaci-n-Web\FalconsExpressMVC
```

Posteriormente inicia:

```text
Apache
MySQL
```

---

# 🗃️ Configuración de la base de datos

## Crear la base de datos

Desde phpMyAdmin o MySQL/MariaDB:

```sql
CREATE DATABASE falconsexpress;
```

Después importa:

```text
falconsexpress.sql
```

ubicado dentro del proyecto.

---

# ⚙️ Configuración de conexión

La configuración de conexión se encuentra en:

```text
config.php
```

Los valores deben adaptarse a la configuración local de MySQL/MariaDB.

Ejemplo:

```php
$host = "localhost";
$user = "root";
$password = "";
$database = "falconsexpress";
```

> ⚠️ No utilices credenciales reales dentro del repositorio. Para producción se recomienda utilizar variables de entorno.

---

# ▶️ Ejecución

Con Apache y MySQL/MariaDB ejecutándose, acceder desde el navegador a la ruta correspondiente al proyecto.

Ejemplo:

```text
http://localhost/Aplicaci-n-Web/FalconsExpressMVC/
```

---

# 🧪 Pruebas funcionales

Para comprobar la aplicación se pueden validar los siguientes escenarios:

### Usuarios

- [ ] Crear usuario
- [ ] Consultar usuario
- [ ] Actualizar usuario
- [ ] Eliminar usuario

### Productos

- [ ] Crear producto
- [ ] Consultar producto
- [ ] Actualizar producto
- [ ] Eliminar producto

### Pedidos

- [ ] Crear pedido
- [ ] Consultar pedido
- [ ] Asociar productos
- [ ] Modificar cantidades
- [ ] Calcular valores
- [ ] Consultar detalles

### Base de datos

- [ ] Conexión correcta
- [ ] Inserción de datos
- [ ] Consulta de datos
- [ ] Actualización
- [ ] Eliminación
- [ ] Relaciones entre entidades

---

# 📸 Capturas de pantalla

> **Recomendación para el portafolio:** agregar aquí 3–5 capturas reales de la aplicación.

Ejemplo:

```text
docs/
├── login.png
├── productos.png
├── pedidos.png
├── usuarios.png
└── dashboard.png
```

Después puedes mostrarlas directamente:

```markdown
## 📸 Capturas

### Productos

![Gestión de productos](docs/productos.png)

### Pedidos

![Gestión de pedidos](docs/pedidos.png)

### Usuarios

![Gestión de usuarios](docs/usuarios.png)
```

**Esta es una de las mejoras que más recomiendo hacer antes de enviar el GitHub a un reclutador.**

---

# 💡 Aspectos técnicos destacados

Este proyecto demuestra experiencia práctica en:

### Backend

- Desarrollo con PHP.
- Separación de responsabilidades mediante MVC.
- Organización modular de controladores.
- Integración con base de datos.
- Operaciones CRUD.

### Base de datos

- MySQL/MariaDB.
- Diseño de estructuras relacionales.
- Consultas SQL.
- Relación entre pedidos, detalles y productos.
- Scripts de inicialización de base de datos.

### Frontend

- HTML5.
- CSS3.
- JavaScript.
- jQuery.
- Bootstrap.
- SASS.

### Ingeniería de software

- Arquitectura MVC.
- Modularización.
- Organización de código.
- Control de versiones con Git.
- Documentación técnica.

---

# 🔐 Consideraciones de seguridad

Para llevar el proyecto a un entorno productivo sería recomendable incorporar:

- Consultas preparadas mediante PDO o MySQLi.
- Validación de entradas.
- Sanitización de datos.
- Protección contra SQL Injection.
- Protección CSRF.
- Gestión segura de sesiones.
- Hashing de contraseñas.
- Variables de entorno para credenciales.
- Control de acceso basado en roles.
- Manejo centralizado de errores.

Estas mejoras representan una posible evolución del proyecto y no se presentan como funcionalidades actualmente implementadas.

---

# 🚧 Próximas mejoras

## Backend

- [ ] Migración progresiva a una arquitectura MVC más robusta.
- [ ] Implementar PDO.
- [ ] Incorporar consultas preparadas.
- [ ] Implementar autenticación.
- [ ] Implementar autorización por roles.
- [ ] Crear API REST.
- [ ] Incorporar manejo centralizado de errores.

## Frontend

- [ ] Mejorar diseño responsive.
- [ ] Incorporar dashboard administrativo.
- [ ] Mejorar experiencia de usuario.
- [ ] Implementar validaciones dinámicas.
- [ ] Utilizar AJAX para operaciones asíncronas.

## Calidad

- [ ] Incorporar pruebas automatizadas.
- [ ] Mejorar documentación.
- [ ] Implementar GitHub Actions.
- [ ] Incorporar análisis estático.
- [ ] Agregar linters y formateadores.

## Deployment

- [ ] Dockerizar la aplicación.
- [ ] Configurar variables de entorno.
- [ ] Implementar CI/CD.
- [ ] Realizar deployment en un servidor.

---

# 📚 Aprendizajes

Durante el desarrollo del proyecto se fortalecieron conocimientos relacionados con:

```text
Arquitectura MVC
       ↓
Desarrollo Backend
       ↓
PHP
       ↓
SQL
       ↓
MySQL / MariaDB
       ↓
CRUD
       ↓
Frontend
       ↓
JavaScript / jQuery
       ↓
Git / GitHub
```

El proyecto permitió comprender cómo diferentes componentes de una aplicación web interactúan entre sí para construir una solución funcional.

---

# 🎓 Contexto académico

**Falcons Express MVC** fue desarrollado como proyecto práctico de aplicación de conocimientos de desarrollo web.

El objetivo principal fue construir una aplicación funcional utilizando una arquitectura organizada y una base de datos relacional, aplicando conceptos de programación, desarrollo frontend, backend y gestión de información.

---

# 👨‍💻 Autor

### Miguel Ángel Villa Huertas

**Desarrollador de Software | Backend | Java | PHP | SQL**

Interesado en desarrollo backend, aplicaciones web, bases de datos y buenas prácticas de ingeniería de software.

### Tecnologías

```text
Java
PHP
SQL
MySQL
MariaDB
HTML5
CSS3
JavaScript
jQuery
Git
GitHub
MVC
Programación Orientada a Objetos
```

---

# 🔗 Enlaces

### Repositorio

[Aplicación Web — GitHub](https://github.com/Mvilla44/Aplicaci-n-Web)

### Proyecto Falcons Express MVC

[FalconsExpressMVC — GitHub](https://github.com/Mvilla44/Aplicaci-n-Web/tree/main/FalconsExpressMVC)

---

# 📄 Documentación

Dentro del proyecto se encuentra una carpeta destinada al reporte:

```text
Reporte Proyecto PDF/
```

Esta documentación complementa la información técnica y académica del desarrollo.

---

# ⭐ Estado

**🟢 Proyecto funcional — Desarrollo académico / Portafolio**

El proyecto puede continuar evolucionando mediante la incorporación de autenticación, mejores prácticas de seguridad, testing, API REST, Docker y despliegue en producción.