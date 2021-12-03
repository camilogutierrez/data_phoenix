view: lk_tab_ref_arbol {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_TabRefArbol`;;
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

  dimension: tab_ref_arbolsrcid {
    type: string
    sql: ${TABLE}.TAB_REF_ARBOLSRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
