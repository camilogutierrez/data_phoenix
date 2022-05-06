view: dm_nomina_pdt {
  derived_table: {
    publish_as_db_view: yes
    sql:
      SELECT
        NominaD_Usuario_Teco,
        NominaD_Nombre,
        NominaD_CUIL,
        NominaD_Legajo
      FROM @{gcp_ambiente}.DM_NominaD` ;;

  sql_trigger_value: SELECT CURRENT_DATE() ;;

  }

  ## Dimensions

  dimension: usuario_teco {
    primary_key: yes
    type: string
    sql: ${TABLE}."NominaD_Usuario_Teco" ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}."NominaD_Nombre" ;;
  }

  dimension: cuil {
    type: string
    sql: ${TABLE}."NominaD_CUIL" ;;
  }

  dimension: legajo {
    type: string
    sql: ${TABLE}."NominaD_Legajo" ;;
  }

}
