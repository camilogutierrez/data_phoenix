view: lk_media_name {
  sql_table_name: @{gcp_dataset_pub}.LK_MediaName`;;
  fields_hidden_by_default: yes

  dimension: media_namesrcid {
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
  }
}
