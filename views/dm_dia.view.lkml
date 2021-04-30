view: dm_dia {
  view_label: "Dia"
  sql_table_name: `ue4_dev_edw_pub_vw_gcp.DM_Dia`
    ;;

  dimension: ano {
    type: number
    sql: ${TABLE}.Ano ;;
  }

  dimension_group: ano_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AnoPrimerDia ;;
  }

  dimension_group: ano_siguiente_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AnoSiguientePrimerDia ;;
  }

  dimension: ano_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.AnoSK ;;
  }

  dimension_group: ano_ultimo_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AnoUltimoDia ;;
  }

  dimension: bimestre_calendario_codigo {
    type: string
    sql: ${TABLE}.BimestreCalendarioCodigo ;;
  }

  dimension: bimestre_calendario_nombre {
    type: string
    sql: ${TABLE}.BimestreCalendarioNombre ;;
  }

  dimension: bimestre_calendario_numero {
    type: number
    sql: ${TABLE}.BimestreCalendarioNumero ;;
  }

  dimension_group: bimestre_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BimestrePrimerDia ;;
  }

  dimension: bimestre_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.BimestreSK ;;
  }

  dimension_group: bimestre_ultimo_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BimestreUltimoDia ;;
  }

  dimension: cuatrimestre_calendario_codigo {
    type: string
    sql: ${TABLE}.CuatrimestreCalendarioCodigo ;;
  }

  dimension: cuatrimestre_calendario_nombre {
    type: string
    sql: ${TABLE}.CuatrimestreCalendarioNombre ;;
  }

  dimension: cuatrimestre_calendario_numero {
    type: number
    sql: ${TABLE}.CuatrimestreCalendarioNumero ;;
  }

  dimension_group: cuatrimestre_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CuatrimestrePrimerDia ;;
  }

  dimension: cuatrimestre_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.CuatrimestreSK ;;
  }

  dimension_group: cuatrimestre_ultimo_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CuatrimestreUltimoDia ;;
  }

  dimension: dia_en_ano {
    type: number
    sql: ${TABLE}.DiaEnAno ;;
  }

  dimension_group: dia_fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DiaFecha ;;
  }

  dimension: dia_fin_de_semana {
    type: number
    sql: ${TABLE}.DiaFinDeSemana ;;
  }

  dimension: dia_numero_en_mes {
    type: number
    sql: ${TABLE}.DiaNumeroEnMes ;;
  }

  dimension: dia_semana_en_mes {
    type: number
    sql: ${TABLE}.DiaSemanaEnMes ;;
  }

  dimension: dia_semana_nombre {
    type: string
    sql: ${TABLE}.DiaSemanaNombre ;;
  }

  dimension: dia_semana_numero {
    type: number
    sql: ${TABLE}.DiaSemanaNumero ;;
  }

  dimension: dia_sk {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.DiaSK ;;
  }

  dimension: estacion_climatica {
    type: string
    sql: ${TABLE}.EstacionClimatica ;;
  }

  dimension: mes_ano {
    type: string
    sql: ${TABLE}.MesAno ;;
  }

  dimension: mes_del_ano {
    type: number
    sql: ${TABLE}.MesDelAno ;;
  }

  dimension: mes_mmaaaa {
    type: string
    sql: ${TABLE}.MesMMAAAA ;;
  }

  dimension: mes_nombre {
    type: string
    sql: ${TABLE}.MesNombre ;;
  }

  dimension_group: mes_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MesPrimerDia ;;
  }

  dimension_group: mes_siguiente_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MesSiguientePrimerDia ;;
  }

  dimension: mes_sk {
    type: string
    hidden: yes
    sql: ${TABLE}.MesSK ;;
  }

  dimension_group: mes_ultimo_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MesUltimoDia ;;
  }

  dimension: semana_del_ano {
    type: number
    sql: ${TABLE}.SemanaDelAno ;;
  }

  dimension: semana_del_ano_iso {
    type: number
    sql: ${TABLE}.SemanaDelAnoISO ;;
  }

  dimension: semana_del_mes {
    type: number
    sql: ${TABLE}.SemanaDelMes ;;
  }

  dimension: semana_sk {
    type: string
    hidden: yes
    sql: ${TABLE}.SemanaSk ;;
  }

  dimension: semestre_calendario_codigo {
    type: string
    sql: ${TABLE}.SemestreCalendarioCodigo ;;
  }

  dimension: semestre_calendario_nombre {
    type: string
    sql: ${TABLE}.SemestreCalendarioNombre ;;
  }

  dimension: semestre_calendario_numero {
    type: number
    sql: ${TABLE}.SemestreCalendarioNumero ;;
  }

  dimension_group: semestre_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SemestrePrimerDia ;;
  }

  dimension: semestre_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.SemestreSK ;;
  }

  dimension_group: semestre_ultimo_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SemestreUltimoDia ;;
  }

  dimension: trimestre_calendario_codigo {
    type: string
    sql: ${TABLE}.TrimestreCalendarioCodigo ;;
  }

  dimension: trimestre_calendario_nombre {
    type: string
    sql: ${TABLE}.TrimestreCalendarioNombre ;;
  }

  dimension: trimestre_calendario_numero {
    type: number
    sql: ${TABLE}.TrimestreCalendarioNumero ;;
  }

  dimension_group: trimestre_primer_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TrimestrePrimerDia ;;
  }

  dimension: trimestre_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.TrimestreSK ;;
  }

  dimension_group: trimestre_ultimo_dia {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TrimestreUltimoDia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
