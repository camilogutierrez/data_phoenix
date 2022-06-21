view: aleph {
  sql_table_name: @{gcp_ambiente_alp}.ALEPH` ;;
  label: "ALEPH"

  ## PrimaryKey

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${entidad}, '-', CAST(${valor_destino} AS STRING));;
  }

  ## Dates

  dimension: fecha_creacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }
  dimension: fecha_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Ultima Actualizacion"
  }

  ## Strings

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
    view_label: "Auditoria"
    label: "Usuario Creacion"
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Actualizacion"
  }

  dimension: sistema_origen {
    type: string
    sql: ${TABLE}.SistemaOrigen ;;
    label: "Origen Sistema"
  }
  dimension: entidad {
    type: string
    sql: ${TABLE}.Entidad ;;
    label: "Entidad"
  }
  dimension: valor_origen {
    type: string
    sql: ${TABLE}.ValorOrigen ;;
    label: "Origen Valor"
  }
  dimension: nombre_destino {
    type: string
    sql: ${TABLE}.NombreDestino ;;
    label: "Destino Nombre"
    description: "Nombre destino asignado, en caso de no estar normalizado es igual al valor de origen"
  }

  ## Numbers

  dimension: valor_destino {
    type: number
    sql: ${TABLE}.ValorDestino ;;
    label: "Destino Valor"
    description: "SK asignado, los valores negativos indican que no fueron normalizados"
  }

  ## Hidden

  dimension: dominio {
    hidden: yes
    type: string
    sql: ${TABLE}.Dominio ;;
  }
  dimension: sistema_destino {
    hidden: yes
    type: string
    sql: ${TABLE}.SistemaDestino ;;
  }

##############
## Measures ##
##############

  measure: count {
    type: count_distinct
    sql: ${pk} ;;
    label: "Cantidad Registros"
    drill_fields: [sistema_origen, entidad, valor_origen, nombre_destino, valor_destino]
  }
}
