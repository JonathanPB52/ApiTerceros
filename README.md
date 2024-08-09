# Proyecto de Ejemplo
Este proyecto está estructurado en cuatro capas principales, diseñadas para separar responsabilidades y facilitar el mantenimiento. A continuación, se describe cada capa y cómo interactúan entre sí.

Estructura del Proyecto
El proyecto está dividido en las siguientes capas:

#1. Capa API
La Capa API contiene los controladores que exponen las funcionalidades del sistema a través de endpoints HTTP. Es la interfaz pública de la aplicación y maneja las solicitudes entrantes.

Ubicación en el repositorio: src/Api

#2. Capa Core
La Capa Core actúa como intermediaria entre la Capa API y la Capa Business. Esta capa maneja la lógica de comunicación y asegura que los datos fluyan correctamente entre las distintas capas.

Ubicación en el repositorio: src/Core

#3. Capa Business
La Capa Business contiene la lógica de negocio de la aplicación. Aquí se definen las reglas y operaciones que transforman los datos y gestionan la funcionalidad principal del sistema.

Ubicación en el repositorio: src/Business

#4. Capa Datos
La Capa Datos es responsable de la interacción con la base de datos. Aquí se encuentran los modelos de datos y se utilizan herramientas como Mapper y Dapper para la gestión de la persistencia.

Ubicación en el repositorio: src/Data

#Instalación y Configuración
Para configurar y ejecutar este proyecto en tu entorno local, sigue estos pasos:

#Clona el repositorio:

bash
Copiar código
git@github.com:JonathanPB52/ApiTerceros.git
cd repo
Instala las dependencias:

Navega a cada carpeta de capa y ejecuta los comandos de instalación correspondientes. Por ejemplo:

bash
Copiar código
cd src/Api
dotnet restore
Repite para src/Core, src/Business, y src/Data.

Configura la base de datos:

Asegúrate de tener la base de datos configurada correctamente. Puedes usar los scripts de migración proporcionados para crear la estructura de la base de datos.

bash
Copiar código
cd src/Data
dotnet ef database update
Ejecuta la aplicación:

Ejecuta la aplicación desde la Capa API:

bash
Copiar código
cd src/Api
dotnet run
La API debería estar disponible en http://localhost:5000.

#Uso
Para interactuar con la API, puedes usar herramientas como Postman o curl. Consulta la documentación de los endpoints en src/Api para ver las rutas disponibles y cómo usarlas.

Contribución
Si deseas contribuir al proyecto, por favor sigue estos pasos:

Haz un fork del repositorio.

Crea una nueva rama para tus cambios:

bash
Copiar código
git checkout -b nombre-de-tu-rama
Realiza tus modificaciones y asegúrate de que todo esté funcionando correctamente.

Envía un pull request con una descripción clara de los cambios realizados.

#Licencia
Este proyecto está licenciado bajo la Licencia MIT.

#Contacto
Si tienes alguna pregunta o necesitas ayuda, no dudes en contactarnos a través de Jonathanpatinobeltran@gmail.com.
