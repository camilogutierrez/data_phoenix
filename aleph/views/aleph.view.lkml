view: aleph_view {
  sql_table_name: @{gcp_dataset_alp}.ALEPH` ;;
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
    group_label: "Auditoria"
  }
  dimension: fecha_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    group_label: "Auditoria"
  }

  ## Strings

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
    group_label: "Auditoria"
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
    group_label: "Auditoria"
  }

  dimension: sistema_origen {
    type: string
    sql: ${TABLE}.SistemaOrigen ;;
    description: "Sistema origen de la entidad"
  }
  dimension: entidad {
    type: string
    sql: ${TABLE}.Entidad ;;
    description: "Nombre de la entidad"
  }
  dimension: valor_origen {
    type: string
    sql: ${TABLE}.ValorOrigen ;;
    description: "Valor de origen"
  }
  dimension: nombre_destino {
    type: string
    sql: ${TABLE}.NombreDestino ;;
    description: "Nombre destino, en caso de no estar normalizado es igual a Valor Origen"
  }

  ## Numbers

  dimension: valor_destino {
    type: number
    sql: ${TABLE}.ValorDestino ;;
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
    description: "Cantidad de registros"
    type: count
    drill_fields: [sistema_origen, entidad, valor_origen, nombre_destino, valor_destino]
  }
}
