view: lk_vqprograma {
  sql_table_name: @{gcp_dataset_pub}.LK_VQPrograma`;;
  fields_hidden_by_default: yes

  dimension: vq_programasrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_PROGRAMASRCId ;;
  }
}
