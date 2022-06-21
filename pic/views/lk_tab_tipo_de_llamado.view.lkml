view: lk_tab_tipo_de_llamado {
  sql_table_name: @{gcp_ambiente}.LK_TabTipoDeLlamado`;;
  fields_hidden_by_default: yes

  dimension: tab_tipo_de_llamadosrcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.TAB_TIPO_DE_LLAMADOSRCId ;;
  }
}