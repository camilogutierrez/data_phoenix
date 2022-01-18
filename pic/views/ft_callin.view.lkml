view: ft_callin {
  sql_table_name: @{gcp_dataset_pub}.FT_CALLIN`;;
  suggestions: no
  label: "Call In"

  ## Primary Key

  dimension: pk {
    primary_key: yes
    type: number
    sql: ${interaction_id} ;;
  }

  ###########
  # Call In #
  ###########


  ## Dates

  dimension_group: fecha_fin_llamadasrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_FIN_LLAMADASRCId ;;
    datatype: timestamp
    group_label: "Fecha"
    label: "FECHA _FIN _LLAMADA"
  }

  dimension_group: fecha_ingreso_agsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_INGRESO_AGSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
  }

  dimension_group: fecha_ingreso_vqsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_INGRESO_VQSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
  }

  dimension_group: fecha_ini_llamadasrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_INI_LLAMADASRCId ;;
    datatype: timestamp
    label: "FECHA_INI_LLAMADA"
    group_label: "Fecha"
  }

  dimension_group: fecha_procesosrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.FECHA_PROCESOSRCId ;;
    datatype: date
    label: "FECHA_PROCESO"
    group_label: "Fecha"
  }

  dimension_group: fecha_salida_agsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_SALIDA_AGSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
  }

  dimension_group: fecha_salida_vqsrcid {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.FECHA_SALIDA_VQSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
  }

  dimension_group: _fechaCreacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}._fechaCreacion ;;
    datatype: timestamp
    group_label: "Fecha"
  }



## Flags ##

  dimension: stop_actionsrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.STOP_ACTIONSRCId ;;
    suggest_dimension: lk_stop_action.stop_actionsrcid
    label: "STOP_ACTION"
  }

  dimension: llamada_cortasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.LLAMADA_CORTASRCId ;;
    suggest_dimension: lk_llamada_corta.llamada_cortasrcid
    group_label: "Llamada Corta"
  }

  dimension: estado_fin_abandonadasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ABANDONADASRCId ;;
    suggest_dimension: lk_estado_fin_abandonada.estado_fin_abandonadasrcid
    group_label: "Estado"
    label: "ABANDONADA"
  }

  dimension: estado_fin_atendidasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ATENDIDASRCId ;;
    suggest_dimension: lk_estado_fin_atendida.estado_fin_atendidasrcid
    group_label: "Estado"
    label: "ATENDIDA"
  }

  dimension: estado_fin_recibidasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_RECIBIDASRCId ;;
    suggest_dimension: lk_estado_fin_recibida.estado_fin_recibidasrcid
    group_label: "Estado"
    label: "RECIBIDA"
  }

  dimension: estado_fin_salientesrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_SALIENTESRCId ;;
    suggest_dimension: lk_estado_fin_saliente.estado_fin_salientesrcid
    group_label: "Estado"
    label: "SALIENTE"
  }

  dimension: fcrsrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.FCRSRCId ;;
    suggest_dimension: lk_fcr.fcrsrcid
    group_label: "FCR"
    label: "FCR"
  }

  dimension: abandono_q_1_9 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_1_9;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_1_9"
    group_item_label: "1- 01-09"
    description: "Abandonada en cola _q_01_09"
  }

  dimension: abandono_q_10_19 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_10_19 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_10_19"
    group_item_label: "2- 10-19"
    description: "Abandonada en cola _q_10_19"
  }

  dimension: abandono_q_20_29 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_20_29 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_20_29"
    group_item_label: "3- 20-29"
    description: "Abandonada en cola _q_20_29"
  }

  dimension: abandono_q_30_39 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_30_39 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_20-39"
    group_item_label: "4- 30-39"
    description: "Abandonada en cola _q_30_39"
  }

  dimension: abandono_q_40_49 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_40_49 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_40-49"
    group_item_label: "5- 40-49"
    description: "Abandonada en cola _q_40_49"
  }

  dimension: abandono_q_50_59 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_50_59 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_50-59"
    group_item_label: "6- 50-59"
    description: "Abandonada en cola _q_50_59"
  }

  dimension: abandono_q_60_89 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_60_89 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_60-89"
    group_item_label: "7- 60-89"
    description: "Abandonada en cola _q_60_89"
  }

  dimension: abandono_q_90_119 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_90_119 ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_90-119"
    group_item_label: "8- 90-119"
    description: "Abandonada en cola _q_90_119"
  }

  dimension: abandono_q_120_mas {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_120_MAS ;;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_120-Mas"
    group_item_label: "9- 120-Mas"
    description: "Q_ABN_QUEUE_120_MAS"
  }

  dimension: abandono_r_1_9 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_1_9 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_1-9"
    group_item_label: "1- 01-09"
    description: "Abandonada en ring _r_01_09"
  }

  dimension: abandono_r_10_19 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_10_19 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_10-19"
    group_item_label: "2- 10-19"
    description: "Abandonada en ring _r_10_19"
  }

  dimension: abandono_r_20_29 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_20_29 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_20-29"
    group_item_label: "3- 20-29"
    description: "Abandonada en ring _r_20_29"
  }

  dimension: abandono_r_30_39 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_30_39 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_30-39"
    group_item_label: "4- 30-39"
    description: "Abandonada en ring _r_30_39"
  }

  dimension: abandono_r_40_49 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_40_49 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_40-49"
    group_item_label: "5- 40-49"
    description: "Abandonada en ring _r_40_49"
  }

  dimension: abandono_r_50_59 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_50_59 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_50-59"
    group_item_label: "6- 50-59"
    description: "Abandonada en ring _r_50_59"
  }

  dimension: abandono_r_60_89 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_60_89 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_60-89"
    group_item_label: "7- 60-89"
    description: "Abandonada en ring _r_60_89"
  }

  dimension: abandono_r_90_119 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_90_119 ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_90-119"
    group_item_label: "8- 90-119"
    description: "Abandonada en ring _r_90_119"
  }

  dimension: abandono_r_120_mas {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_120_MAS ;;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_120_MAS"
    group_item_label: "9- 120-Mas"
    description: "Abandonada en ring _r_120_ms"
  }

  dimension: active_flag {
    type: yesno
    sql: ${TABLE}.ACTIVE_FLAG ;;
    label: "VALIDO"
    description: "Tomar valor 1 para actividades de productividad"
  }

  dimension: contestada_1_9 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_1_9 ;;
    view_label: "Contestada"
  }

  dimension: contestada_10_19 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_10_19 ;;
    view_label: "Contestada"
  }

  dimension: contestada_20_29 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_20_29 ;;
    view_label: "Contestada"
  }

  dimension: contestada_30_39 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_30_39 ;;
    view_label: "Contestada"
  }

  dimension: contestada_40_49 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_40_49 ;;
    view_label: "Contestada"
  }

  dimension: contestada_50_59 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_50_59 ;;
    view_label: "Contestada"
  }

  dimension: contestada_60_89 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_60_89 ;;
    view_label: "Contestada"
  }

  dimension: contestada_90_119 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_90_119 ;;
    view_label: "Contestada"
  }

  dimension: contestada_120_mas {
    type: yesno
    sql: ${TABLE}.CONTESTADA_120_MAS ;;
    view_label: "Contestada"
  }

  dimension: llamada_corta_1_9 {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTA_1_9 ;;
    group_label: "Llamada Corta"
  }

  dimension: llamada_corta_10_19 {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTA_10_19 ;;
    group_label: "Llamada Corta"
  }

  dimension: llamadacorta_20_29 {
    type: yesno
    sql: ${TABLE}.LLAMADACORTA_20_29 ;;
    group_label: "Llamada Corta"
  }

  dimension: unico24 {
    type: yesno
    sql: ${TABLE}.UNICO24 ;;
    label: "CLIENTE_UNICO_DIA"
  }

  dimension: unico7_x24 {
    type: yesno
    sql: ${TABLE}.UNICO7X24 ;;
    label: "CLIENTE_UNICO_MES"
  }


  ## Strings ##

  dimension: tabpackagesrcid {
    type: string
    sql: ${TABLE}.TABPACKAGESRCId ;;
    suggest_dimension: lk_tabpackage.tabpackagesrcid
    label: "TABPACKAGE"
  }

  dimension: tabulacion1_srcid {
    type: string
    sql: ${TABLE}.TABULACION1SRCId ;;
    suggest_dimension: lk_tabulacion1.tabulacion1_srcid
    group_label: "Tabulación"
    label: "TABULACION1"
  }

  dimension: tabulacion2_srcid {
    type: string
    sql: ${TABLE}.TABULACION2SRCId ;;
    suggest_dimension: lk_tabulacion2.tabulacion2_srcid
    group_label: "Tabulación"
    label: "TABULACION2"
  }

  dimension: tabulacion3_srcid {
    type: string
    sql: ${TABLE}.TABULACION3SRCId ;;
    suggest_dimension: lk_tabulacion3.tabulacion3_srcid
    group_label: "Tabulación"
    label: "TABULACION3"
  }

  dimension: tabulacion4_srcid {
    type: string
    sql: ${TABLE}.TABULACION4SRCId ;;
    suggest_dimension: lk_tabulacion4.tabulacion4_srcid
    group_label: "Tabulación"
    label: "TABULACION4"
  }

  dimension: tab_agrupador_reportingsrcid {
    type: string
    sql: ${TABLE}.TAB_AGRUPADOR_REPORTINGSRCId ;;
    suggest_dimension: lk_tab_agrupador_reporting.tab_agrupador_reportingsrcid
    group_label: "Tabulación"
    label: "TAB_AGRUPADOR_REPORTING"
  }

  dimension: tab_consulta_porsrcid {
    type: string
    sql: ${TABLE}.TAB_CONSULTA_PORSRCId ;;
    suggest_dimension: lk_tab_consulta_por.tab_consulta_porsrcid
    group_label: "Tabulación"
    label: "TAB_CONSULTA_POR"
  }

  dimension: tab_contactosrcid {
    type: string
    sql: ${TABLE}.TAB_CONTACTOSRCId ;;
    suggest_dimension: lk_tab_contacto.tab_contactosrcid
    group_label: "Tabulación"
    label: "TAB_CONTACTOS"
  }

  dimension: tab_motivosrcid {
    type: string
    sql: ${TABLE}.TAB_MOTIVOSRCId ;;
    suggest_dimension: lk_tab_motivo.tab_motivosrcid
    group_label: "Tabulación"
    label: "TAB_MOTIVOS"
  }

  dimension: tab_movilsrcid {
    type: string
    sql: ${TABLE}.TAB_MOVILSRCId ;;
    suggest_dimension: lk_tab_movil.tab_movilsrcid
    group_label: "Tabulación"
    label: "TAB_MOVIL"
  }

  dimension: tab_negociosrcid {
    type: string
    sql: ${TABLE}.TAB_NEGOCIOSRCId ;;
    suggest_dimension: lk_tab_negocio.tab_negociosrcid
    group_label: "Tabulación"
    label: "TAB_NEGOCIOS"
  }

  dimension: tab_pcrcsrcid {
    type: string
    sql: ${TABLE}.TAB_PCRCSRCId ;;
    suggest_dimension: lk_tab_pcrc.tab_pcrcsrcid
    group_label: "Tabulación"
    label: "TAB_PCRC"
  }

  dimension: tab_que_tienesrcid {
    type: string
    sql: ${TABLE}.TAB_QUE_TIENESRCId ;;
    suggest_dimension: lk_tab_que_tiene.tab_que_tienesrcid
    group_label: "Tabulación"
    label: "TAB_QUE_TIENE"
  }

  dimension: tab_ref_arbolsrcid {
    type: string
    sql: ${TABLE}.TAB_REF_ARBOLSRCId ;;
    suggest_dimension: lk_tab_ref_arbol.tab_ref_arbolsrcid
    group_label: "Tabulación"
    label: "TAB_REF_ARBOL"
  }

  dimension: tab_resultadosrcid {
    type: string
    sql: ${TABLE}.TAB_RESULTADOSRCId ;;
    suggest_dimension: lk_tab_resultado.tab_resultadosrcid
    group_label: "Tabulación"
    label: "TAB_RESULTADOS"
  }

  dimension: tab_tipo_de_llamadosrcid {
    type: string
    sql: ${TABLE}.TAB_TIPO_DE_LLAMADOSRCId ;;
    suggest_dimension: lk_tab_tipo_de_llamado.tab_tipo_de_llamadosrcid
    group_label: "Tabulación"
    label: "TAB_TIPO_DE_LLAMADOS"
  }

  dimension: technicalresult_agsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_AGSRCId ;;
    suggest_dimension: lk_technical_result_ag.technicalresult_agsrcid
  }

  dimension: technicalresult_vqsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
    suggest_dimension: lk_technical_result_vq.technicalresult_vqsrcid
  }

  dimension: contexto_ivr_0800_srcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800SRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
    group_label: "Contexto IVR"
  }

  dimension: contexto_ivr_0800_opcionsrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_OPCIONSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
    group_label: "Contexto IVR"
  }

  dimension: contexto_ivr_0800_segmentosrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_SEGMENTOSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_segmento.contexto_ivr_0800_segmentosrcid
    group_label: "Contexto IVR"
  }

  dimension: vagsrcid {
    type: string
    sql: ${TABLE}.VAGSRCId ;;
    suggest_dimension: lk_vag.vagsrcid
    group_label: "VAG"
    label: "VAG"
  }

  dimension: vag_agrupador4_srcid {
    type: string
    sql: ${TABLE}.VAG_AGRUPADOR4SRCId ;;
    suggest_dimension: lk_vagagrupador4.vag_agrupador4_srcid
    group_label: "VAG"
    label: "VAG_AGRUPADOR4"
  }

  dimension: vag_canalidadsrcid {
    type: string
    sql: ${TABLE}.VAG_CANALIDADSRCId ;;
    suggest_dimension: lk_vagcanalidad.vag_canalidadsrcid
    group_label: "VAG"
    label: "VAG_CANALIDADS"
  }

  dimension: vag_fansrcid {
    type: string
    sql: ${TABLE}.VAG_FANSRCId ;;
    suggest_dimension: lk_vagfan.vag_fansrcid
    group_label: "VAG"
    label: "VAG_FANS"
  }

  dimension: vag_negociosrcid {
    type: string
    sql: ${TABLE}.VAG_NEGOCIOSRCId ;;
    suggest_dimension: lk_vagnegocio.vag_negociosrcid
    group_label: "VAG"
    label: "VAG_NEGOCIOS"
  }

  dimension: vag_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC1SRCId ;;
    suggest_dimension: lk_vagpcrc1.vag_pcrc1_srcid
    group_label: "VAG"
    label: "VAG_PCRC1"
  }

  dimension: vag_pcrc2_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC2SRCId ;;
    suggest_dimension: lk_vagpcrc2.vag_pcrc2_srcid
    group_label: "VAG"
    label: "VAG_PCRC2"
  }

  dimension: vag_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC3SRCId ;;
    suggest_dimension: lk_vagpcrc3.vag_pcrc3_srcid
    group_label: "VAG"
    label: "VAG_PCRC3"
  }

  dimension: vag_programasrcid {
    type: string
    sql: ${TABLE}.VAG_PROGRAMASRCId ;;
    suggest_dimension: lk_vagprograma.vag_programasrcid
    group_label: "VAG"
    label: "VAG_PROGRAMA"
  }

  dimension: vag_propiedadsrcid {
    type: string
    sql: ${TABLE}.VAG_PROPIEDADSRCId ;;
    suggest_dimension: lk_vagpropiedad.vag_propiedadsrcid
    group_label: "VAG"
    label: "VAG_PROPIEDAD"
  }

  dimension: vag_segmentosrcid {
    type: string
    sql: ${TABLE}.VAG_SEGMENTOSRCId ;;
    suggest_dimension: lk_vagsegmento.vag_segmentosrcid
    group_label: "VAG"
    label: "VAG_PROPIEDAD"
  }

  dimension: vag_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SITIOSRCId ;;
    suggest_dimension: lk_vagsitio.vag_sitiosrcid
    group_label: "VAG"
    label: "VAG_SITIO"
  }

  dimension: vag_sub_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SUB_SITIOSRCId ;;
    suggest_dimension: lk_vagsub_sitio.vag_sub_sitiosrcid
    group_label: "VAG"
    label: "VAG_SUB_SITIO"
  }

  dimension: vag_tipo_contactosrcid {
    type: string
    sql: ${TABLE}.VAG_TIPO_CONTACTOSRCId ;;
    suggest_dimension: lk_vagtipo_contacto.vag_tipo_contactosrcid
    group_label: "VAG"
    label: "VAG_TIPO_CONTACTO"
  }

  dimension: vqsrcid {
    type: string
    sql: ${TABLE}.VQSRCId ;;
    suggest_dimension: lk_vq.vqsrcid
    group_label: "VQ"
    label: "VQ"
  }

  dimension: vq_agrupador2_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR2SRCId ;;
    suggest_dimension: lk_vqagrupador2.vq_agrupador2_srcid
    group_label: "VQ"
    label: "VQ_AGRUPADOR2"
  }

  dimension: vq_agrupador3_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR3SRCId ;;
    suggest_dimension: lk_vqagrupador3.vq_agrupador3_srcid
    group_label: "VQ"
    label: "VQ_AGRUPADOR3"
  }

  dimension: vq_canalidadsrcid {
    type: string
    sql: ${TABLE}.VQ_CANALIDADSRCId ;;
    suggest_dimension: lk_vqcanalidad.vq_canalidadsrcid
    group_label: "VQ"
    label: "VQ_CANALIDAD"
  }

  dimension: vq_estadosrcid {
    type: string
    sql: ${TABLE}.VQ_ESTADOSRCId ;;
    suggest_dimension: lk_vqestado.vq_estadosrcid
    group_label: "VQ"
    label: "VQ_ESTADO"
  }

  dimension: vq_fansrcid {
    type: string
    sql: ${TABLE}.VQ_FANSRCId ;;
    suggest_dimension: lk_vqfan.vq_fansrcid
    group_label: "VQ"
    label: "VQ_FAN"
  }

  dimension: vq_fcrsrcid {
    type: string
    sql: ${TABLE}.VQ_FCRSRCId ;;
    suggest_dimension: lk_vqfcr.vq_fcrsrcid
    group_label: "VQ"
    label: "VQ_FCR"
  }

  dimension: vq_negociosrcid {
    type: string
    sql: ${TABLE}.VQ_NEGOCIOSRCId ;;
    suggest_dimension: lk_vqnegocio.vq_negociosrcid
    group_label: "VQ"
    label: "VQ_NEGOCIO"
  }

  dimension: vq_origen_digitalsrcid {
    type: string
    sql: ${TABLE}.VQ_ORIGEN_DIGITALSRCId ;;
    suggest_dimension: lk_vqorigen_digital.vq_origen_digitalsrcid
    group_label: "VQ"
    label: "VQ_ORIGEN_DIGITAL"
  }

  dimension: vq_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC1SRCId ;;
    suggest_dimension: lk_vqpcrc1.vq_pcrc1_srcid
    group_label: "VQ"
    label: "VQ_PCRC1"
  }

  dimension: vq_pcrc2_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC2SRCId ;;
    suggest_dimension: lk_vqpcrc2.vq_pcrc2_srcid
    group_label: "VQ"
    label: "VQ_PCRC2"
  }

  dimension: vq_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC3SRCId ;;
    suggest_dimension: lk_vqpcrc3.vq_pcrc3_srcid
    group_label: "VQ"
    label: "VQ_PCRC3"
  }

  dimension: vq_programasrcid {
    type: string
    sql: ${TABLE}.VQ_PROGRAMASRCId ;;
    suggest_dimension: lk_vqprograma.vq_programasrcid
    group_label: "VQ"
    label: "VQ_PROGRAMA"
  }

  dimension: vq_segmentosrcid {
    type: string
    sql: ${TABLE}.VQ_SEGMENTOSRCId ;;
    suggest_dimension: lk_vqsegmento.vq_segmentosrcid
    group_label: "VQ"
    label: "VQ_SEGMENTO"
  }

  dimension: vq_tipo_contactosrcid {
    type: string
    sql: ${TABLE}.VQ_TIPO_CONTACTOSRCId ;;
    suggest_dimension: lk_vqtipo_contacto.vq_tipo_contactosrcid
    group_label: "VQ"
    label: "VQ_TIPO_CONTACTO"
  }

  dimension: gvqsrcid {
    type: string
    sql: ${TABLE}.GVQSRCId ;;
    suggest_dimension: lk_gvq.gvqsrcid
    label: "GVQ"
  }

  dimension: interaction_typesrcid {
    type: string
    sql: ${TABLE}.INTERACTION_TYPESRCId ;;
    suggest_dimension: lk_interaction_type.interaction_typesrcid
  }

  dimension: media_namesrcid {
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
    suggest_dimension: lk_media_name.media_namesrcid
  }

  dimension: resourcerole_agsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_AGSRCId ;;
    suggest_dimension: lk_resource_role_ag.resourcerole_agsrcid
    group_label: "Resource"
  }

  dimension: resourcerole_vqsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_VQSRCId ;;
    suggest_dimension: lk_resource_role_vq.resourcerole_vqsrcid
    group_label: "Resource"
  }

  dimension: resource_subtypesrcid {
    type: string
    sql: ${TABLE}.RESOURCE_SUBTYPESRCId ;;
    suggest_dimension: lk_resource_sub_type.resource_subtypesrcid
    group_label: "Resource"
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.RESOURCE_TYPE ;;
    group_label: "Resource"
  }

  dimension: resultreason_agsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_AGSRCId ;;
    suggest_dimension: lk_result_reason_ag.resultreason_agsrcid
  }

  dimension: resultreason_vqsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_VQSRCId ;;
    suggest_dimension: lk_result_reason_vq.resultreason_vqsrcid
  }

  dimension: agrupador1 {
    type: string
    sql: ${TABLE}.AGRUPADOR1 ;;
    group_label: "Agrupador"
    label: "CONNID"
    description: "Es el campo de Interacción entre CRM/PIC"
  }

  dimension: agrupador2 {
    type: string
    sql: ${TABLE}.AGRUPADOR2 ;;
    group_label: "Agrupador"
    label: "PLACE"
    description: "Indentificador de Sitio de atención dentro de la integración"
  }

  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
    group_label: "ANI"
  }

  dimension: anis_ani_descripcion {
    type: string
    sql: ${TABLE}.ANIS_ANI_DESCRIPCION ;;
    group_label: "ANI"
  }

  dimension: anis_postdiscado_descripcion {
    type: string
    sql: ${TABLE}.ANIS_POSTDISCADO_DESCRIPCION ;;
    group_label: "ANI"
  }

  dimension: apellido {
    type: string
    sql: ${TABLE}.APELLIDO ;;
    label: "Apellido"
  }

  dimension: dim_vag_tipo {
    type: string
    sql: ${TABLE}.DIM_VAG_TIPO ;;
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.DNIS ;;
  }

  dimension: documento {
    type: string
    sql: ${TABLE}.DOCUMENTO ;;
  }

  dimension: encuesta {
    type: string
    sql: ${TABLE}.ENCUESTA ;;
  }

  dimension: id_ivr {
    type: string
    sql: ${TABLE}.ID_IVR ;;
  }

  dimension: id_nice {
    type: string
    sql: ${TABLE}.ID_NICE ;;
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.EMAIL_CLIENTE ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
    group_label: "Customer Time"
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NOMBRE_CLIENTE ;;
  }

  dimension: place_name {
    type: string
    sql: ${TABLE}.PLACE_NAME ;;
    description: "Es el sitio de logueo del representante"
  }

  dimension: postdiscado {
    type: string
    sql: ${TABLE}.POSTDISCADO ;;
  }

  dimension: pregunta_1 {
    type: string
    sql: ${TABLE}.PREGUNTA_1 ;;
    group_label: "Pregunta"
    description: "Pregunta Encuesta 1"
  }

  dimension: pregunta_2 {
    type: string
    sql: ${TABLE}.PREGUNTA_2 ;;
    group_label: "Pregunta"
    description: "Pregunta Encuesta 2"
  }

  dimension: pregunta_3 {
    type: string
    sql: ${TABLE}.PREGUNTA_3 ;;
    group_label: "Pregunta"
    description: "Pregunta Encuesta 3"
  }

  dimension: pregunta_4 {
    type: string
    sql: ${TABLE}.PREGUNTA_4 ;;
    group_label: "Pregunta"
    description: "Pregunta Encuesta 4"
  }

  dimension: pregunta_5 {
    type: string
    sql: ${TABLE}.PREGUNTA_5 ;;
    group_label: "Pregunta"
    description: "Pregunta Encuesta 5"
  }

  dimension: region_localidad {
    type: string
    sql: ${TABLE}.REGION_LOCALIDAD ;;
    label: "ID_WATSON"
    description: "Indentificador de Cognitivo."
  }

  dimension: respuesta_1 {
    type: string
    sql: ${TABLE}.RESPUESTA_1 ;;
    group_label: "Respuesta"
    description: "Respuesta Encuesta 1"
  }

  dimension: respuesta_2 {
    type: string
    sql: ${TABLE}.RESPUESTA_2 ;;
    group_label: "Respuesta"
    description: "Respuesta Encuesta 2"
  }

  dimension: respuesta_3 {
    type: string
    sql: ${TABLE}.RESPUESTA_3 ;;
    group_label: "Respuesta"
    description: "Respuesta Encuesta 3"
  }

  dimension: respuesta_4 {
    type: string
    sql: ${TABLE}.RESPUESTA_4 ;;
    group_label: "Respuesta"
    description: "Respuesta Encuesta 4"
  }

  dimension: respuesta_5 {
    type: string
    sql: ${TABLE}.RESPUESTA_5 ;;
    group_label: "Respuesta"
    description: "Respuesta Encuesta 5"
  }

  dimension: rp_ingreso_call {
    type: string
    sql: ${TABLE}.RP_INGRESO_CALL ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
  }

  dimension: switch_name {
    type: string
    sql: ${TABLE}.SWITCH_NAME ;;
  }

  dimension: target_object_selected {
    type: string
    sql: ${TABLE}.TARGET_OBJECT_SELECTED ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.TELEFONO ;;
  }

  dimension: tipo_target {
    type: string
    sql: ${TABLE}.TIPO_TARGET ;;
  }

  dimension: agente_rp {
    type: string
    sql: ${TABLE}.AGENTE_RP ;;
    group_label: "Agente"
    label: "LEGAJO"
  }

  dimension: routing_target_type {
    type: string
    sql: ${TABLE}.ROUTING_TARGET_TYPE ;;
    group_label: "Routing"
  }

  dimension: routing_target_type_code {
    type: string
    sql: ${TABLE}.ROUTING_TARGET_TYPE_CODE ;;
    group_label: "Routing"
  }


  ## Numbers ##

  dimension: res_ordinalsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RES_ORDINALSRCId ;;
    suggest_dimension: lk_res_ordinal.res_ordinalsrcid
    label: "RES_ORDINAL"
  }

  dimension: sub_estado_finsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SUB_ESTADO_FINSRCId ;;
    suggest_dimension: lk_sub_estado_fin.sub_estado_finsrcid
    label: "SUB_ESTADO_FIN"
  }

  dimension: interaction_id {
    type: number
    sql: ${TABLE}.INTERACTION_ID ;;
  }

  dimension: agent_to_agent_cons_count {
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_COUNT ;;
    group_label: "Agente"
  }

  dimension: agent_to_agent_cons_duration {
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_DURATION ;;
    group_label: "Agente"
  }

  dimension: conference_initiated_count {
    type: number
    sql: ${TABLE}.CONFERENCE_INITIATED_COUNT ;;
    group_label: "Conference"
  }

  dimension: conf_init_hold_count {
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_COUNT ;;
    group_label: "Conference"
  }

  dimension: conf_init_hold_duration {
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_DURATION ;;
    group_label: "Conference"
  }

  dimension: conf_init_talk_count {
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_COUNT ;;
    group_label: "Conference"
  }

  dimension: conf_init_talk_duration {
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_DURATION ;;
    group_label: "Conference"
  }

  dimension: conf_join_hold_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_COUNT ;;
    group_label: "Conference"
  }

  dimension: conf_join_hold_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_DURATION ;;
    group_label: "Conference"
  }

  dimension: conf_join_ring_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_COUNT ;;
    group_label: "Conference"
  }

  dimension: conf_join_ring_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_DURATION ;;
    group_label: "Conference"
  }

  dimension: conf_join_talk_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_COUNT ;;
    group_label: "Conference"
  }

  dimension: conf_join_talk_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_DURATION ;;
    group_label: "Conference"
  }

  dimension: cons_init_dial_count {
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_init_dial_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_DURATION ;;
    group_label: "Cons"
  }

  dimension: cons_init_hold_count {
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_init_hold_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_DURATION ;;
    group_label: "Cons"
  }

  dimension: cons_init_talk_count {
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_init_talk_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_DURATION ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_acw_count {
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_acw_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_DURATION ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_hold_count {
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_hold_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_DURATION ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_ring_count {
    type: number
    sql: ${TABLE}.CONS_RCV_RING_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_ring_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_RING_DURATION ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_talk_count {
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_COUNT ;;
    group_label: "Cons"
  }

  dimension: cons_rcv_talk_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_DURATION ;;
    group_label: "Cons"
  }

  dimension: customer_acw_count {
    type: number
    sql: ${TABLE}.CUSTOMER_ACW_COUNT ;;
    group_label: "Customer Time"
    label: "ACW_COUNT"
  }

  dimension: customer_acw_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_ACW_DURATION ;;
    group_label: "Customer Time"
    label: "ACW_TIME"
  }

  dimension: customer_dial_count {
    type: number
    sql: ${TABLE}.CUSTOMER_DIAL_COUNT ;;
    group_label: "Customer Time"
    label: "DIAL_COUNT"
  }

  dimension: customer_dial_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_DIAL_DURATION ;;
    group_label: "Customer Time"
    label: "DIAL_TIME"
  }

  dimension: customer_handle_count {
    type: number
    sql: ${TABLE}.CUSTOMER_HANDLE_COUNT ;;
    group_label: "Customer Time"
    description: "Marca la interacción tomada por un representante."
  }

  dimension: customer_hold_count {
    type: number
    sql: ${TABLE}.CUSTOMER_HOLD_COUNT ;;
    group_label: "Customer Time"
    label: "HOLD_COUNT"
  }

  dimension: customer_hold_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_HOLD_DURATION ;;
    group_label: "Customer Time"
    label: "HOLD_TIME"
  }

  dimension: customer_ring_count {
    type: number
    sql: ${TABLE}.CUSTOMER_RING_COUNT ;;
    group_label: "Customer Time"
    label: "RING_COUNT"
  }

  dimension: customer_ring_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_RING_DURATION ;;
    group_label: "Customer Time"
    label: "RING_TIME"
  }

  dimension: customer_talk_count {
    type: number
    sql: ${TABLE}.CUSTOMER_TALK_COUNT ;;
    group_label: "Customer Time"
    label: "TALK_COUNT"
  }

  dimension: customer_talk_duration {
    type: number
    sql: ${TABLE}.CUSTOMER_TALK_DURATION ;;
    group_label: "Customer Time"
    label: "TALK_TIME"
  }

  dimension: dial_duration {
    type: number
    sql: ${TABLE}.DIAL_DURATION ;;
  }

  dimension: fecha_fin_llamada_epoch {
    type: number
    sql: ${TABLE}.FECHA_FIN_LLAMADA_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fecha_ingreso_ag_epoch {
    type: number
    sql: ${TABLE}.FECHA_INGRESO_AG_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fecha_ingreso_vq_epoch {
    type: number
    sql: ${TABLE}.FECHA_INGRESO_VQ_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fecha_ini_llamada_epoch {
    type: number
    sql: ${TABLE}.FECHA_INI_LLAMADA_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fecha_proceso_epoch {
    type: number
    sql: ${TABLE}.FECHA_PROCESO_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fecha_salida_ag_epoch {
    type: number
    sql: ${TABLE}.FECHA_SALIDA_AG_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fecha_salida_vq_epoch {
    type: number
    sql: ${TABLE}.FECHA_SALIDA_VQ_EPOCH ;;
    group_label: "Fecha"
  }

  dimension: fin_ifa_seg {
    type: number
    sql: ${TABLE}.FIN_IFA_SEG ;;
  }

  dimension: fin_irf_seg {
    type: number
    sql: ${TABLE}.FIN_IRF_SEG ;;
  }

  dimension: fin_msf_seg {
    type: number
    sql: ${TABLE}.FIN_MSF_SEG ;;
  }

  dimension: hold_count {
    type: number
    sql: ${TABLE}.HOLD_COUNT ;;
  }

  dimension: hold_duration {
    type: number
    sql: ${TABLE}.HOLD_DURATION ;;
  }

  dimension: ini_ifa_seg {
    type: number
    sql: ${TABLE}.INI_IFA_SEG ;;
  }

  dimension: ini_irf_seg {
    type: number
    sql: ${TABLE}.INI_IRF_SEG ;;
  }

  dimension: ini_msf_seg {
    type: number
    sql: ${TABLE}.INI_MSF_SEG ;;
  }

  dimension: interaction_type_key {
    type: number
    sql: ${TABLE}.INTERACTION_TYPE_KEY ;;
  }

  dimension: last_rp_resource_key {
    type: number
    sql: ${TABLE}.LAST_RP_RESOURCE_KEY ;;
  }

  dimension: last_vqueue_resource_key {
    type: number
    sql: ${TABLE}.LAST_VQUEUE_RESOURCE_KEY ;;
  }

  dimension: media_type_key {
    type: number
    sql: ${TABLE}.MEDIA_TYPE_KEY ;;
  }

  dimension: mediation_count {
    type: number
    sql: ${TABLE}.MEDIATION_COUNT ;;
  }

  dimension: mediation_segment_id {
    type: number
    sql: ${TABLE}.MEDIATION_SEGMENT_ID ;;
  }

  dimension: place_key {
    type: number
    sql: ${TABLE}.PLACE_KEY ;;
    description: "Es el cod del sitio de logueo del representante"
  }

  dimension: post_cons_xfer_hold_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_HOLD_COUNT ;;
    group_label: "Post Cons"
  }

  dimension: post_cons_xfer_hold_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_HOLD_DURATION ;;
    group_label: "Post Cons"
  }

  dimension: post_cons_xfer_ring_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_RING_COUNT ;;
    group_label: "Post Cons"
  }

  dimension: post_cons_xfer_ring_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_RING_DURATION ;;
    group_label: "Post Cons"
  }

  dimension: post_cons_xfer_talk_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_TALK_COUNT ;;
    group_label: "Post Cons"
  }

  dimension: post_cons_xfer_talk_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_TALK_DURATION ;;
    group_label: "Post Cons"
  }

  dimension: res_previous_sm_state_key {
    type: number
    sql: ${TABLE}.RES_PREVIOUS_SM_STATE_KEY ;;
  }

  dimension: ring_count {
    type: number
    sql: ${TABLE}.RING_COUNT ;;
  }

  dimension: ring_duration {
    type: number
    sql: ${TABLE}.RING_DURATION ;;
  }

  dimension: routing_point_duration {
    type: number
    sql: ${TABLE}.ROUTING_POINT_DURATION ;;
    group_label: "Routing"
  }

  dimension: routing_target_key {
    type: number
    sql: ${TABLE}.ROUTING_TARGET_KEY ;;
    group_label: "Routing"
  }

  dimension: t_duration_ag {
    type: number
    sql: ${TABLE}.T_DURATION_AG ;;
  }

  dimension: t_duration_vq {
    type: number
    sql: ${TABLE}.T_DURATION_VQ ;;
  }

  dimension: talk_count {
    type: number
    sql: ${TABLE}.TALK_COUNT ;;
  }

  dimension: talk_duration {
    type: number
    sql: ${TABLE}.TALK_DURATION ;;
  }

  dimension: technical_descriptor_key {
    type: number
    sql: ${TABLE}.TECHNICAL_DESCRIPTOR_KEY ;;
  }

  dimension: resource_group_combination_key {
    type: number
    sql: ${TABLE}.RESOURCE_GROUP_COMBINATION_KEY ;;
    group_label: "Resource"
  }

  dimension: resource_key {
    type: number
    sql: ${TABLE}.RESOURCE_KEY ;;
    group_label: "Resource"
  }


  ## Hidden ##

  dimension: interaction_resource_id {
    hidden: yes
    type: number
    sql: ${TABLE}.INTERACTION_RESOURCE_ID ;;
  }

  dimension: after_call_work_count {
    hidden: yes
    type: number
    sql: ${TABLE}.AFTER_CALL_WORK_COUNT ;;
  }

  dimension: after_call_work_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.AFTER_CALL_WORK_DURATION ;;
  }

  dimension: dial_count {
    hidden: yes
    type: number
    sql: ${TABLE}.DIAL_COUNT ;;
  }

  dimension: duration_call {
    hidden: yes
    type: number
    sql: ${TABLE}.DURATION_CALL ;;
  }


##############
## Measures ##
##############

  ## Count Distinct ##
  measure: count_interaction_resource_id {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Interacciones"
    label: "Cantidad Interacciones"
  }

  measure: count_estado_fin_abandonadasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Abandonadas"
    label: "Cantidad Abandonadas"
    filters: [estado_fin_abandonadasrcid: "yes"]
    }

  measure: count_abandono_q_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_1_9"
    group_item_label: "1- 01-09"
    description: "Abandonada en cola _q_01_09"
    filters: [abandono_q_1_9: "yes"]
  }

  measure: count_abandono_q_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_10_19"
    group_item_label: "2- 10-19"
    description: "Abandonada en cola _q_10_19"
    filters: [abandono_q_10_19: "yes"]

  }

  measure: count_abandono_q_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_20_29"
    group_item_label: "3- 20-29"
    description: "Abandonada en cola _q_20_29"
    filters: [abandono_q_20_29: "yes"]
  }

  measure: count_abandono_q_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_20-39"
    group_item_label: "4- 30-39"
    description: "Abandonada en cola _q_30_39"
    filters: [abandono_q_30_39: "yes"]
  }

  measure: count_abandono_q_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_40-49"
    group_item_label: "5- 40-49"
    description: "Abandonada en cola _q_40_49"
    filters: [abandono_q_40_49: "yes"]
  }

  measure: count_abandono_q_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_50-59"
    group_item_label: "6- 50-59"
    description: "Abandonada en cola _q_50_59"
    filters: [abandono_q_40_49: "yes"]
  }

  measure: count_abandono_q_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_60-89"
    group_item_label: "7- 60-89"
    description: "Abandonada en cola _q_60_89"
    filters: [abandono_q_60_89: "yes"]
  }

  measure: count_abandono_q_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_90-119"
    group_item_label: "8- 90-119"
    description: "Abandonada en cola _q_90_119"
    filters: [abandono_q_90_119: "yes"]
  }

  measure: count_abandono_q_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "Q"
    label: "Q_ABN_QUEUE_120-Mas"
    group_item_label: "9- 120-Mas"
    description: "Q_ABN_QUEUE_120_MAS"
    filters: [abandono_q_120_mas: "yes"]
  }

  measure: count_abandono_r_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_1-9"
    group_item_label: "1- 01-09"
    description: "Abandonada en ring _r_01_09"
    filters: [abandono_r_1_9: "yes"]
  }

  measure: count_abandono_r_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_10-19"
    group_item_label: "2- 10-19"
    description: "Abandonada en ring _r_10_19"
    filters: [abandono_r_10_19: "yes"]
  }

  measure: count_abandono_r_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_20-29"
    group_item_label: "3- 20-29"
    description: "Abandonada en ring _r_20_29"
    filters: [abandono_r_20_29: "yes"]
  }

  measure: count_abandono_r_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_30-39"
    group_item_label: "4- 30-39"
    description: "Abandonada en ring _r_30_39"
    filters: [abandono_r_30_39: "yes"]
  }

  measure: count_abandono_r_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_40-49"
    group_item_label: "5- 40-49"
    description: "Abandonada en ring _r_40_49"
    filters: [abandono_r_40_49: "yes"]
  }

  measure: count_abandono_r_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_50-59"
    group_item_label: "6- 50-59"
    description: "Abandonada en ring _r_50_59"
    filters: [abandono_r_50_59: "yes"]
  }

  measure: count_abandono_r_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_60-89"
    group_item_label: "7- 60-89"
    description: "Abandonada en ring _r_60_89"
    filters: [abandono_r_60_89: "yes"]
  }

  measure: count_abandono_r_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_90-119"
    group_item_label: "8- 90-119"
    description: "Abandonada en ring _r_90_119"
    filters: [abandono_r_90_119: "yes"]
  }

  measure: count_abandono_r_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Abandono"
    group_label: "R"
    label: "R_ABN RING_120_MAS"
    group_item_label: "9- 120-Mas"
    description: "Abandonada en ring _r_120_ms"
    filters: [abandono_r_120_mas: "yes"]
  }

  measure: count_active_flag {
    type: count_distinct
    sql: ${interaction_resource_id};;
    label: "VALIDO"
    description: "Tomar valor 1 para actividades de productividad"
    filters: [active_flag: "1"]
  }

  measure: count_after_call_work_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    label: "after_call_work_count"
    filters: [after_call_work_count: "1"]
  }

  measure: count_contestada_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_1_9: "yes"]
  }

  measure: count_contestada_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_10_19: "yes"]
  }

  measure: count_contestada_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_20_29: "yes"]
  }

  measure: count_contestada_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_30_39: "yes"]
  }

  measure: count_contestada_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_40_49: "yes"]
  }

  measure: count_contestada_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_50_59: "yes"]
  }

  measure: count_contestada_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_60_89: "yes"]
  }

  measure: count_contestada_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_90_119: "yes"]
  }

  measure: count_contestada_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    filters: [contestada_120_mas: "yes"]
  }

  measure: count_customer_acw_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Customer Time"
    label: "ACW_COUNT"
    filters: [customer_acw_count: "1"]
  }

  measure: count_customer_dial_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Customer Time"
    label: "DIAL_COUNT"
    filters: [customer_dial_count: "1"]
  }

  measure: count_customer_handle_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Customer Time"
    description: "Marca la interacción tomada por un representante."
    filters: [customer_handle_count: "1"]
  }

  measure: count_customer_hold_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Customer Time"
    label: "HOLD_COUNT"
    filters: [customer_hold_count: "1"]
  }

  measure: count_customer_ring_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Customer Time"
    label: "RING_COUNT"
    filters: [customer_ring_count: "1"]
  }

  measure: count_customer_talk_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Customer Time"
    label: "TALK_COUNT"
    filters: [customer_talk_count: "1"]
  }

  measure: count_dial_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    label: "dial_count"
    filters: [dial_count: "1"]
  }

  measure: count_llamada_corta_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    filters: [llamada_corta_1_9: "yes"]
  }

  measure: count_llamadacorta_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    filters: [llamada_corta_10_19: "yes"]
  }

  measure: count_llamadacorta_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    filters: [llamadacorta_20_29: "yes"]
  }

  measure: count_llamadacortasrcid {
    type: count_distinct
    sql: ${interaction_resource_id};;
    value_format_name: id
    group_label: "Llamada Corta"
    filters: [llamada_cortasrcid: "yes"]
  }

  measure: count_hold_count {
    type: count_distinct
    sql: ${interaction_resource_id};;
    label: "hold_count"
    filters: [hold_count: "1"]
  }

  measure: count_unico24 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    label: "CLIENTE_UNICO_DIA"
    filters: [unico24: "yes"]
  }

  measure: count_unico7_x24 {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    label: "CLIENTE_UNICO_MES"
    filters: [unico7_x24: "yes"]
  }


  ## Sum Distinct ##

  measure: total_estado_fin_atendidasrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_atendidasrcid} ;;
    group_label: "Total"
    label: "Total Atendidas"
    group_item_label: "Atendidas"
  }

  measure: total_estado_fin_recibidasrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_recibidasrcid} ;;
    group_label: "Total"
    label: "Total Recibidas"
    group_item_label: "Recibidas"

  }

  measure: total_estado_fin_salientesrcid {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${estado_fin_salientesrcid} ;;
    group_label: "Total"
    label: "Total Salientes"
    group_item_label: "Salientes"

  }

  measure: total_duration_call {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${duration_call} ;;
    group_label: "Total"
    label: "Total Duración"
    group_item_label: "Duracion"
  }

  measure: total_t_duration_ag {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${t_duration_ag} ;;
    group_label: "Total"
    label: "Total Duración AG"
    group_item_label: "Duración AG"
  }

  measure: total_after_call_work_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${after_call_work_duration} ;;
    label: "after_call_work_duration"
  }

  measure: total_customer_acw_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${customer_acw_duration};;
    group_label: "Customer Time"
    label: "ACW_TIME"
  }

  measure: total_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${hold_duration};;
    label: "hold_duration"
  }

  measure: total_customer_talk_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_talk_duration} ;;
    group_label: "Customer Time"
    label: "TALK_TIME"
  }

  measure: total_customer_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${customer_hold_duration};;
    group_label: "Customer Time"
    label: "HOLD_TIME"
  }

  measure: total_customer_ring_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_ring_duration} ;;
    group_label: "Customer Time"
    label: "RING_TIME"
  }

  measure: total_customer_dial_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_dial_duration} ;;
    group_label: "Customer Time"
    label: "DIAL_TIME"
  }

}
