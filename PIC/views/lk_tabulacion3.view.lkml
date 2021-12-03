view: lk_tabulacion3 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_Tabulacion3`;;
  fields_hidden_by_default: yes

  dimension: _fecha_creacion {
    datatype: timestamp
    sql: ${TABLE}._fechaCreacion ;;
  }

  dimension: _fecha_ultima_actualizacion {
    datatype: timestamp
    sql: ${TABLE}._fechaUltimaActualizacion ;;
  }

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._sesionId ;;
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
  }

  dimension: tabulacion3_srcid {
    type: string
    sql: ${TABLE}.TABULACION3SRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
