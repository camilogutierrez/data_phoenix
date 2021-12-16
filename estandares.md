# Estandares de desarrollo Phoenix


### Vistas

  Crear vistas con prefijo para identificar fácilmente:
  ft_nombre
  Create view: Mappear tablas

  Explore default: sacar de la vista creada por default
  Crear explore dentro de la carpeta "Explores"

  Definir Primary key como primera dimensión y ordenar el resto de las dimensiones por tipo de dato.

  - Primary Key
  - Dates
  - Strings
  - Numbers
  - Measures


#### Métricas

  Agregar métricas al final (importante para cuando hay que regenerar tablas) copiando la dimensión

  Nomenclatura: prefijo con lo que hace
  Total - SUM
  Luego de crear la métrica, ocultar la dimensión:
  hidden: yes


  Orden de parámetros para definición de dimensiones y métricas

  ```
  dimension: dimension_name {
  hidden:
  primary_key:
  type:
  sql:
  group_label:
  label:
  group_item_label:
  description:
  ```

  ```
  measure: measure_name_type {
  type:
  sql:
  value_format_name:
  group_label:
  label:
  group_item_label:
  description:
  filters:
  html:
  ```

  value_format_name: mascara para mostrar un valor


### Explores

  Creación de explore sin prefijos ni sufijos.
  Crear archivo-> nombre.Explore

  - Descripción: Nombre explore
  - Incluir views en Explores: Se puede copiar el path a la carpeta Views y completar con *
  - El parámetro group_label sirve para que el explore se liste dentro del proyecto
  - Persistencia default 12 horas, puede variar según el explore
  - Utilizar parámetro always_filter para forzar que se utilicen los filtros por partición en las vistas particionadas que estén incluidas en el explore.

  ```
  label: "Nombre"
  persist_with:
  include: “/path/*.view”
  Explore:…
  group_label: "Phoenix"
  persist_for: "12 hours"

  always_filter: {
  filters:...
  ```

  Definir Datagroup a nivel explore: Se utiliza para establecer el tiempo de almacenamiento de las consultas dentro del cache, mientras el cache sea valido las consultas seran resueltas sin necesidad de volver a ejecutarse en la base de datos. Se crea el Datagroup en la carpeta others y se setea en el explore:

  ```
  persist_with: nombre_default_dg
  ```

### Carpetas

  Crear carpetas (todo minúscula):
  - nombre del modelo
    - explores
    - models
    - views
    - others

  Carpeta others
  Otros objetos:
  - Definición de políticas de cache
  - data groups
  - data test


### Content validator

  Valida explores y dashboards
  checkea referencias para cuando se hacen cambios en vistas
  replace: reemplaza todas las ocurrencias de ese error con el nombre nuevo
  "Find and replace"
