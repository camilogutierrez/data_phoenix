view: lk_vagtipo_contacto {
  sql_table_name: @{gcp_dataset_pub}.LK_VAGTipoContacto`;;
  fields_hidden_by_default: yes

  dimension: vag_tipo_contactosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.VAG_TIPO_CONTACTOSRCId ;;
  }
}
