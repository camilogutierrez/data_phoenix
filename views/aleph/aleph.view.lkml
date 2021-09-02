view: aleph {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_alp_gcp.ALEPH`
    ;;

  ## PrimaryKey

  dimension: id {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(${TABLE}.Entidad, '-', CAST(${TABLE}.ValorDestino AS STRING));;
  }

  ## Auditoria

  dimension: fecha_creacion {
    group_label: "Auditoria"
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaCreacion ;;
  }
  dimension: fecha_actualizacion {
    group_label: "Auditoria"
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._fechaUltimaActualizacion ;;
  }
  dimension: usuario_creacion {
    group_label: "Auditoria"
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
  }
  dimension: usuario_actualizacion {
    group_label: "Auditoria"
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
  }

  ## Dimensiones

  dimension: dominio {
    hidden: yes
    type: string
    sql: ${TABLE}.Dominio ;;
    description: "Dominio de la entidad"
  }
  dimension: sistema_destino {
    hidden: yes
    type: string
    sql: ${TABLE}.SistemaDestino ;;
    description: "Sistema destino de la entidad"
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
  dimension: valor_destino {
    type: number
    sql: ${TABLE}.ValorDestino ;;
    description: "SK asignado, los valores negativos indican que no fueron normalizados"
  }

  ## Metricas

  measure: count {
    description: "Cantidad de registros"
    type: count
    drill_fields: [sistema_origen, entidad, valor_origen, nombre_destino, valor_destino]
  }

}
