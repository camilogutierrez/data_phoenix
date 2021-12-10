view: lk_vagsub_sitio {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGSubSitio`;;
  fields_hidden_by_default: yes

  dimension: vag_sub_sitiosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_SUB_SITIOSRCId ;;
  }
}
