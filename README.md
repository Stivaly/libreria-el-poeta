# Libreria "El Poeta"
Este proyecto consiste en el desarrollo de un sistema de inventario para la librería "El Gran Poeta", que permita gestionar productos y bodegas, así como realizar movimientos de productos entre ellas. El sistema estará dividido en dos roles principales: jefe de bodega y bodeguero, cada uno con sus propias funcionalidades.
README del Proyecto: Sistema de Inventario para Librería "El Gran Poeta"
## 1. Introducción

El presente proyecto tiene como objetivo el desarrollo de un sistema de inventario para la librería "El Gran Poeta", con el fin de optimizar la gestión de productos y bodegas, así como facilitar el movimiento de productos entre ellas. El sistema se diseñará de acuerdo a los roles de usuario definidos: jefe de bodega y bodeguero, cada uno con sus propias funcionalidades específicas.

1.1 Contexto del Proyecto

La librería "El Gran Poeta" cuenta con una amplia variedad de productos, incluyendo libros, revistas y enciclopedias, distribuidos en diferentes bodegas. La gestión manual de este inventario se ha convertido en un proceso complejo y propenso a errores, lo que genera dificultades para mantener un control preciso del stock y atender las necesidades de los clientes de manera eficiente.

1.2 Objetivos del Proyecto

El desarrollo de este sistema de inventario persigue los siguientes objetivos:

* Optimizar la gestión de productos: Automatizar la creación, actualización y eliminación de productos en el inventario, incluyendo la asociación con editoriales y autores, así como la incorporación de descripciones o resúmenes.
* Mejorar la organización de bodegas: Facilitar la creación y gestión de bodegas, permitiendo la asignación y reubicación de productos de manera eficiente.
* Agilizar los movimientos de productos: Implementar un proceso automatizado para el traslado de productos entre bodegas, generando documentos detallados con información sobre el origen, destino, usuario responsable y cantidades involucradas.
* Generar informes valiosos: Proporcionar al jefe de bodega informes que permitan visualizar la cantidad de productos por bodega y tipo, filtrar por editorial específica y consultar el historial de movimientos de bodega.
* Reducir errores y mejorar la eficiencia: Automatizar tareas repetitivas y minimizar la intervención manual, lo que contribuirá a disminuir la posibilidad de errores y optimizar el tiempo del personal.

## 2. Funcionalidades del Sistema

2.1 Gestión de Productos:

* Creación de productos: Posibilidad de crear productos de diferentes tipos (libros, revistas, enciclopedias) con información detallada, incluyendo título, autor(es), editorial, descripción o resumen, ISBN y precio.
* Asociación con editoriales y autores: Vinculación de cada producto con su editorial correspondiente y con el o los autores que lo hayan escrito.
* Registro de editoriales: Creación y gestión de un registro de editoriales antes de la creación de productos, incluyendo nombre, país de origen y sitio web.
* Entrada de autores: Facilidad para la incorporación de autores en los productos, ya sea a través de un mantenedor específico o mediante la entrada manual.

2.2 Gestión de Bodegas:

* Creación y gestión de bodegas: Permitir al jefe de bodega crear y gestionar bodegas, asignándoles un nombre único y una descripción.
* Asignación de productos a bodegas: Facilitar la incorporación de productos a las bodegas, especificando la cantidad de unidades disponibles en cada una.
* Reubicación de productos: Permitir al bodeguero mover productos de una bodega a otra, generando un documento de movimiento detallado.

2.3 Movimientos de Productos:

* Solicitud de movimiento: El bodeguero podrá solicitar un movimiento de productos entre bodegas, indicando la cantidad de unidades a trasladar y la bodega de destino.
* Generación de documento de movimiento: Una vez aprobada la solicitud, se generará un documento de movimiento que detalle la bodega de origen, la bodega de destino, la lista de productos con sus cantidades, la fecha y hora del movimiento, y el usuario responsable.
* Visualización de documentos de movimiento: Permitir al jefe de bodega y al bodeguero visualizar los documentos de movimiento generados, consultando la información detallada de cada uno.

2.4 Informes para Jefe de Bodega:

* Informe de stock por bodega y tipo: Generar un informe que muestre la cantidad de productos por bodega, desglosado por tipo (libros, revistas, enciclopedias).
* Informe de productos por editorial: Generar un informe que filtre los productos por bodega y editorial específica, mostrando la cantidad de unidades disponibles.
* Informe de movimientos de bodega: Generar un informe que detalle el historial de movimientos de bodega, incluyendo fecha, bodega de origen, bodega de destino, lista de productos con sus cantidades y usuario responsable.

2.5 Seguridad y Control de Acceso:

* Autenticación de usuarios: Implementar un sistema de autenticación de usuarios mediante usuario y contraseña, garantizando la seguridad del acceso al sistema.
* Control de acceso basado en roles: Definir dos roles de usuario con diferentes permisos:
* Jefe de bodega: Posibilidad de crear informes, bodegas y productos.
* Bogeuero: Posibilidad de mover productos y generar registro de los movimientos.

## 3. Tecnologías a Utilizar

La elección de las tecnologías específicas para el desarrollo del proyecto se definirá en una etapa posterior, considerando factores como la escalabilidad, la seguridad y la facilidad de mantenimiento. Entre las opciones a evaluar se encuentran:

* Lenguajes de programación: Python, JavaScript, SQL
* Frameworks web: Django, Bootstrapvue
* Bases de datos: MySQL
* Herramientas de control de versiones: Git, GitHub

## 4. Entregables del Proyecto

Los entregables principales del proyecto serán:

* Código fuente del sistema: Repositorio GitHub con el código fuente completo y documentado del sistema.
* Documentación del sistema: Documentación detallada que explique la arquitectura del sistema, las funcionalidades, la configuración y el uso del mismo.
* Manuales de usuario: Manuales específicos para cada rol de usuario (jefe de bodega y bodeguero) que guíen en la utilización del sistema.

## 5. Operaciones ya realizadas:

* Diseño de la arquitectura del sistema: Arquitectura Rest
* Diseño de la base de datos: Modelo entidad relación
  
## 6. Próximos Pasos

Los próximos pasos en el desarrollo del proyecto incluyen:

* Implementación del sistema: Desarrollo del código fuente del sistema siguiendo las buenas prácticas de programación y las tecnologías seleccionadas.
* Pruebas unitarias y de integración: Realización de pruebas unitarias y de integración para garantizar el correcto funcionamiento del sistema y la detección de errores tempranos.
* Documentación del sistema: Elaboración de la documentación completa del sistema, incluyendo la arquitectura, las funcionalidades, la configuración y el uso del mismo.
* Creación de manuales de usuario: Desarrollo de manuales de usuario específicos para cada rol de usuario, con instrucciones claras y ejemplos ilustrativos.

## 7. Licencia

El proyecto se distribuirá bajo la licencia [MIT].
