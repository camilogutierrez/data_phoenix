view: lk_vqtipo_contacto {
  sql_table_name: @{gcp_dataset_pub}.LK_VQTipoContacto`;;
  fields_hidden_by_default: yes

  dimension: vq_tipo_contactosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VQ_TIPO_CONTACTOSRCId ;;
  }
}
