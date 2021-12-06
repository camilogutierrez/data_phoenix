view: lk_tab_tipo_de_llamado {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.LK_TabTipoDeLlamado`;;
  fields_hidden_by_default: yes

  dimension: tab_tipo_de_llamadosrcid {
    type: string
    sql: ${TABLE}.TAB_TIPO_DE_LLAMADOSRCId ;;
  }
}
