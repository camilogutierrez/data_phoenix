view: lk_media_name {
  sql_table_name: @{gcp_ambiente}.LK_MediaName`;;
  fields_hidden_by_default: yes

  dimension: media_namesrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
  }
}