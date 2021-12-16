view: lk_vqorigen_digital {
  sql_table_name: @{gcp_dataset_pub}.LK_VQOrigenDigital`;;
  fields_hidden_by_default: yes

  dimension: vq_origen_digitalsrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_ORIGEN_DIGITALSRCId ;;
  }
}
