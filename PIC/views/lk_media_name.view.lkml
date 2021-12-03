view: lk_media_name {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_MediaName`;;
  fields_hidden_by_default: yes

  dimension: media_namesrcid {
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
