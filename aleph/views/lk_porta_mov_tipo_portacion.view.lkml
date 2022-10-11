view: lk_porta_mov_tipo_portacion {
  sql_table_name:  @{gcp_ambiente}.LK_PortaMovTipoPortacion`  ;;
  fields_hidden_by_default: yes

  dimension: porta_mov_tipo_portacion_sk {
    primary_key: yes
    type: number
    sql: ${TABLE}.PortaMovTipoPortacionSK ;;
  }

  dimension: porta_mov_tipo_portacion_nombre {
    type: string
    sql: ${TABLE}.PortaMovTipoPortacionNombre ;;
  }

}
