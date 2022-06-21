view: lk_contexto_ivr0800 {
  sql_table_name: @{gcp_ambiente}.LK_ContextoIVR0800`;;
  fields_hidden_by_default: yes

  dimension: contexto_ivr_0800_srcid {
    primary_key: yes
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800SRCId ;;
  }
}