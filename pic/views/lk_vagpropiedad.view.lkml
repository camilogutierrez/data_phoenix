view: lk_vagpropiedad {
  sql_table_name: @{gcp_ambiente}.LK_VAGPropiedad`;;
  fields_hidden_by_default: yes

  dimension: vag_propiedadsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_PROPIEDADSRCId ;;
  }
}