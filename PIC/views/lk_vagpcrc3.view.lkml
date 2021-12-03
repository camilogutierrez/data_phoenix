view: lk_vagpcrc3 {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_VAGPCRC3`;;
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

  dimension: vag_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC3SRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
