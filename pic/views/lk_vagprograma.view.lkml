view: lk_vagprograma {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGPrograma`;;
  fields_hidden_by_default: yes

  dimension: vag_programasrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_PROGRAMASRCId ;;
  }
}
