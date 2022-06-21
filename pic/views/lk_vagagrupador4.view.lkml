view: lk_vagagrupador4 {
  sql_table_name: @{gcp_ambiente}.LK_VAGAgrupador4`;;
  fields_hidden_by_default: yes

  dimension: vag_agrupador4_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_AGRUPADOR4SRCId ;;
  }
}