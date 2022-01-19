view: ft_callin {
  sql_table_name: @{gcp_dataset_pub}.FT_CALLIN`;;
  suggestions: no
  label: "Call In"

  ## Primary Key

  dimension: pk {
    primary_key: yes
    type: string
    sql: ${ft_callinsrcid} ;;
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
    label: "FECHA_FIN_LLAMADA"
  }

  dimension_group: fecha_ingreso_agsrcid {
    type: time
    sql: ${TABLE}.FECHA_INGRESO_AGSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
    label: "FECHA_INGRESO_AG"
  }

  dimension_group: fecha_ingreso_vqsrcid {
    type: time
    sql: ${TABLE}.FECHA_INGRESO_VQSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
    label: "FECHA_INGRESO_VQ"
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
    group_label: "Fecha"
    label: "FECHA_INI_LLAMADA"
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
    group_label: "Fecha"
    label: "FECHA_PROCESO"
  }

  dimension_group: fecha_salida_agsrcid {
    type: time
    sql: ${TABLE}.FECHA_SALIDA_AGSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
    label: "FECHA_SALIDA_AG"
  }

  dimension_group: fecha_salida_vqsrcid {
    type: time
    sql: ${TABLE}.FECHA_SALIDA_VQSRCId ;;
    datatype: timestamp
    group_label: "Fecha"
    label: "FECHA_SALIDA_VQ"
  }

  dimension_group: _fechaCreacion {
    type: time
    sql: ${TABLE}._fechaCreacion ;;
    datatype: timestamp
    group_label: "Fecha"
    label: "FECHA_CREACION"
  }


## Flags ##

  dimension: stop_actionsrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.STOP_ACTIONSRCId ;;
    label: "STOP_ACTION"
  }

  dimension: llamada_cortasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.LLAMADA_CORTASRCId ;;
    group_label: "Llamada Corta"
    label: "LLAMADA_CORTA"
  }

  dimension: estado_fin_abandonadasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ABANDONADASRCId ;;
    group_label: "Estado"
    label: "ABANDONADA"
  }

  dimension: estado_fin_atendidasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_ATENDIDASRCId ;;
    group_label: "Estado"
    label: "ATENDIDA"
  }

  dimension: estado_fin_recibidasrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_RECIBIDASRCId ;;
    group_label: "Estado"
    label: "RECIBIDA"
  }

  dimension: estado_fin_salientesrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.ESTADO_FIN_SALIENTESRCId ;;
    group_label: "Estado"
    label: "SALIENTE"
  }

  dimension: fcrsrcid {
    type: yesno
    value_format_name: id
    sql: ${TABLE}.FCRSRCId ;;
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
    group_item_label: "1- 01-09"
  }

  dimension: contestada_10_19 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_10_19 ;;
    view_label: "Contestada"
    group_item_label: "2- 10-19"
  }

  dimension: contestada_20_29 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_20_29 ;;
    view_label: "Contestada"
    group_item_label: "3- 20-29"
  }

  dimension: contestada_30_39 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_30_39 ;;
    view_label: "Contestada"
    group_item_label: "4- 30-39"
  }

  dimension: contestada_40_49 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_40_49 ;;
    view_label: "Contestada"
    group_item_label: "5- 40-49"
  }

  dimension: contestada_50_59 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_50_59 ;;
    view_label: "Contestada"
    group_item_label: "6- 50-59"
  }

  dimension: contestada_60_89 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_60_89 ;;
    view_label: "Contestada"
    group_item_label: "7- 60-89"
  }

  dimension: contestada_90_119 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_90_119 ;;
    view_label: "Contestada"
    group_item_label: "8- 90-119"
  }

  dimension: contestada_120_mas {
    type: yesno
    sql: ${TABLE}.CONTESTADA_120_MAS ;;
    view_label: "Contestada"
    group_item_label: "9- 120-Mas"
  }

  dimension: llamada_corta_1_9 {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTA_1_9 ;;
    group_label: "Llamada Corta"
    group_item_label: "1- 01-09"
  }

  dimension: llamada_corta_10_19 {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTA_10_19 ;;
    group_label: "Llamada Corta"
    group_item_label: "2- 10-19"
  }

  dimension: llamadacorta_20_29 {
    type: yesno
    sql: ${TABLE}.LLAMADACORTA_20_29 ;;
    group_label: "Llamada Corta"
    group_item_label: "3- 20-29"
  }

  dimension: unico24 {
    type: yesno
    sql: ${TABLE}.UNICO24 ;;
    label: "CLIENTE_UNICO_24H"
  }

  dimension: unico7_x24 {
    type: yesno
    sql: ${TABLE}.UNICO7X24 ;;
    label: "CLIENTE_UNICO_7D"
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
    label: "TECHNICAL_RESULT_AG"
  }

  dimension: technicalresult_vqsrcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
    suggest_dimension: lk_technical_result_vq.technicalresult_vqsrcid
    label: "TECHNICAL_RESULT_VQ"
  }

  dimension: contexto_ivr_0800_srcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800SRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
    group_label: "Contexto IVR"
    label: "CONTEXTO_IVR_0800"
  }

  dimension: contexto_ivr_0800_opcionsrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_OPCIONSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
    group_label: "Contexto IVR"
    label: "CONTEXTO_IVR_0800_OPCION"
  }

  dimension: contexto_ivr_0800_segmentosrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_SEGMENTOSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_segmento.contexto_ivr_0800_segmentosrcid
    group_label: "Contexto IVR"
    label: "CONTEXTO_IVR_0800_SEGMENTO"
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
    label: "INTERACTION_TYPE"
  }

  dimension: media_namesrcid {
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
    suggest_dimension: lk_media_name.media_namesrcid
    label: "MEDIA_NAME"
  }

  dimension: resultreason_agsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_AGSRCId ;;
    suggest_dimension: lk_result_reason_ag.resultreason_agsrcid
    label: "RESULT_REASON_AG"
  }

  dimension: resultreason_vqsrcid {
    type: string
    sql: ${TABLE}.RESULTREASON_VQSRCId ;;
    suggest_dimension: lk_result_reason_vq.resultreason_vqsrcid
    label: "RESULT_REASON_VQ"
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
    label: "ANI"
  }

  dimension: anis_ani_descripcion {
    type: string
    sql: ${TABLE}.ANIS_ANI_DESCRIPCION ;;
    group_label: "ANI"
    label: "ANI_DESCRIPCION"
  }

  dimension: anis_postdiscado_descripcion {
    type: string
    sql: ${TABLE}.ANIS_POSTDISCADO_DESCRIPCION ;;
    group_label: "ANI"
    label: "ANI_POSTDISCADO_DESCRIPCION"
  }

  dimension: apellido {
    type: string
    sql: ${TABLE}.APELLIDO ;;
    label: "APELLIDO"
  }

  dimension: dim_vag_tipo {
    type: string
    sql: ${TABLE}.DIM_VAG_TIPO ;;
    label: "DIM_VAG_TIPO"
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.DNIS ;;
    label: "DNIS"
  }

  dimension: documento {
    type: string
    sql: ${TABLE}.DOCUMENTO ;;
    label: "DOCUMENTO"
  }

  dimension: encuesta {
    type: string
    sql: ${TABLE}.ENCUESTA ;;
    label: "ENCUESTA"
  }

  dimension: id_ivr {
    type: string
    sql: ${TABLE}.ID_IVR ;;
    label: "ID_IVR"
  }

  dimension: id_nice {
    type: string
    sql: ${TABLE}.ID_NICE ;;
    label: "ID_NICE"
  }

  dimension: email_cliente {
    type: string
    sql: ${TABLE}.EMAIL_CLIENTE ;;
    label: "EMAIL_CLIENTE"
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
    group_label: "Customer Time"
    label: "CUSTOMER_ID"
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
    label: "NOMBRE"
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NOMBRE_CLIENTE ;;
    label: "NOMBRE_CLIENTE"
  }

  dimension: place_name {
    type: string
    sql: ${TABLE}.PLACE_NAME ;;
    label: "PLACE_NAME"
    description: "Es el sitio de logueo del representante"
  }

  dimension: postdiscado {
    type: string
    sql: ${TABLE}.POSTDISCADO ;;
    label: "POSTDISCADO"
  }

  dimension: pregunta_1 {
    type: string
    sql: ${TABLE}.PREGUNTA_1 ;;
    group_label: "Pregunta"
    label: "PREGUNTA_1"
    description: "Pregunta Encuesta 1"
  }

  dimension: pregunta_2 {
    type: string
    sql: ${TABLE}.PREGUNTA_2 ;;
    group_label: "Pregunta"
    label: "PREGUNTA_2"
    description: "Pregunta Encuesta 2"
  }

  dimension: pregunta_3 {
    type: string
    sql: ${TABLE}.PREGUNTA_3 ;;
    group_label: "Pregunta"
    label: "PREGUNTA_3"
    description: "Pregunta Encuesta 3"
  }

  dimension: pregunta_4 {
    type: string
    sql: ${TABLE}.PREGUNTA_4 ;;
    group_label: "Pregunta"
    label: "PREGUNTA_4"
    description: "Pregunta Encuesta 4"
  }

  dimension: pregunta_5 {
    type: string
    sql: ${TABLE}.PREGUNTA_5 ;;
    group_label: "Pregunta"
    label: "PREGUNTA_5"
    description: "Pregunta Encuesta 5"
  }

  dimension: region_localidad {
    type: string
    sql: ${TABLE}.REGION_LOCALIDAD ;;
    label: "ID_WATSON"
    description: "Indentificador de Cognitivo."
  }

  dimension: resourcerole_agsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_AGSRCId ;;
    group_label: "Resource"
    label: "RESOURCE_ROLE_AG"
    suggest_dimension: lk_resource_role_ag.resourcerole_agsrcid
  }

  dimension: resourcerole_vqsrcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_VQSRCId ;;
    group_label: "Resource"
    label: "RESOURCE_ROLE_VQ"
    suggest_dimension: lk_resource_role_vq.resourcerole_vqsrcid
  }

  dimension: resource_subtypesrcid {
    type: string
    sql: ${TABLE}.RESOURCE_SUBTYPESRCId ;;
    group_label: "Resource"
    label: "RESOURCE_SUBTYPE"
    suggest_dimension: lk_resource_sub_type.resource_subtypesrcid
  }

  dimension: resource_type {
    type: string
    sql: ${TABLE}.RESOURCE_TYPE ;;
    group_label: "Resource"
    label: "RESOURCE_TYPE"
  }

  dimension: respuesta_1 {
    type: string
    sql: ${TABLE}.RESPUESTA_1 ;;
    group_label: "Respuesta"
    label: "RESPUESTA_1"
    description: "Respuesta Encuesta 1"
  }

  dimension: respuesta_2 {
    type: string
    sql: ${TABLE}.RESPUESTA_2 ;;
    group_label: "Respuesta"
    label: "RESPUESTA_2"
    description: "Respuesta Encuesta 2"
  }

  dimension: respuesta_3 {
    type: string
    sql: ${TABLE}.RESPUESTA_3 ;;
    group_label: "Respuesta"
    label: "RESPUESTA_3"
    description: "Respuesta Encuesta 3"
  }

  dimension: respuesta_4 {
    type: string
    sql: ${TABLE}.RESPUESTA_4 ;;
    group_label: "Respuesta"
    label: "RESPUESTA_4"
    description: "Respuesta Encuesta 4"
  }

  dimension: respuesta_5 {
    type: string
    sql: ${TABLE}.RESPUESTA_5 ;;
    group_label: "Respuesta"
    label: "RESPUESTA_5"
    description: "Respuesta Encuesta 5"
  }

  dimension: rp_ingreso_call {
    type: string
    sql: ${TABLE}.RP_INGRESO_CALL ;;
    label: "RP_INGRESO_CALL"
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
    label: "STATE_NAME"
  }

  dimension: switch_name {
    type: string
    sql: ${TABLE}.SWITCH_NAME ;;
    label: "SWITCH_NAME"
  }

  dimension: target_object_selected {
    type: string
    sql: ${TABLE}.TARGET_OBJECT_SELECTED ;;
    label: "TARGET_OBJECT_SELECTED"
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.TELEFONO ;;
    label: "TELEFONO"
  }

  dimension: tipo_target {
    type: string
    sql: ${TABLE}.TIPO_TARGET ;;
    label: "TIPO_TARGET"
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
    label: "ROUTING_TARGET_TYPE"
  }

  dimension: routing_target_type_code {
    type: string
    sql: ${TABLE}.ROUTING_TARGET_TYPE_CODE ;;
    group_label: "Routing"
    label: "ROUTING_TARGET_TYPE_CODE"
  }


  ## Numbers ##

  dimension: res_ordinalsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RES_ORDINALSRCId ;;
    label: "RES_ORDINAL"
  }

  dimension: sub_estado_finsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SUB_ESTADO_FINSRCId ;;
    label: "SUB_ESTADO_FIN"
  }

  dimension: interaction_id {
    type: number
    sql: ${TABLE}.INTERACTION_ID ;;
    label: "INTERACTION_ID"
  }

  dimension: agent_to_agent_cons_count {
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_COUNT ;;
    group_label: "Agente"
    label: "AGENT_TO_AGENT_CONS_COUNT"
  }

  dimension: agent_to_agent_cons_duration {
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_DURATION ;;
    group_label: "Agente"
    label: "AGENT_TO_AGENT_CONS_DURATION"
  }

  dimension: conference_initiated_count {
    type: number
    sql: ${TABLE}.CONFERENCE_INITIATED_COUNT ;;
    group_label: "Conference"
    label: "CONFERENCE_INITIATED_COUNT"
  }

  dimension: conf_init_hold_count {
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_COUNT ;;
    group_label: "Conference"
    label: "CONF_INIT_HOLD_COUNT"
  }

  dimension: conf_init_hold_duration {
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_DURATION ;;
    group_label: "Conference"
    label: "CONF_INIT_HOLD_DURATION"
  }

  dimension: conf_init_talk_count {
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_COUNT ;;
    group_label: "Conference"
    label: "CONF_INIT_TALK_COUNT"
  }

  dimension: conf_init_talk_duration {
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_DURATION ;;
    group_label: "Conference"
    label: "CONF_INIT_TALK_DURATION"
  }

  dimension: conf_join_hold_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_COUNT ;;
    group_label: "Conference"
    label: "CONF_JOIN_HOLD_COUNT"
  }

  dimension: conf_join_hold_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_DURATION ;;
    group_label: "Conference"
    label: "CONF_JOIN_HOLD_DURATION"
  }

  dimension: conf_join_ring_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_COUNT ;;
    group_label: "Conference"
    label: "CONF_JOIN_RING_COUNT"
  }

  dimension: conf_join_ring_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_DURATION ;;
    group_label: "Conference"
    label: "CONF_JOIN_RING_DURATION"
  }

  dimension: conf_join_talk_count {
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_COUNT ;;
    group_label: "Conference"
    label: "CONF_JOIN_TALK_COUNT"
  }

  dimension: conf_join_talk_duration {
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_DURATION ;;
    group_label: "Conference"
    label: "CONF_JOIN_TALK_DURATION"
  }

  dimension: cons_init_dial_count {
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_COUNT ;;
    group_label: "Cons"
    label: "CONS_INIT_DIAL_COUNT"
  }

  dimension: cons_init_dial_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_DURATION ;;
    group_label: "Cons"
    label: "CONS_INIT_DIAL_DURATION"
  }

  dimension: cons_init_hold_count {
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_COUNT ;;
    group_label: "Cons"
    label: "CONS_INIT_HOLD_COUNT"
  }

  dimension: cons_init_hold_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_DURATION ;;
    group_label: "Cons"
    label: "CONS_INIT_HOLD_DURATION"
  }

  dimension: cons_init_talk_count {
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_COUNT ;;
    group_label: "Cons"
    label: "CONS_INIT_TALK_COUNT"
  }

  dimension: cons_init_talk_duration {
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_DURATION ;;
    group_label: "Cons"
    label: "CONS_INIT_TALK_DURATION"
  }

  dimension: cons_rcv_acw_count {
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_COUNT ;;
    group_label: "Cons"
    label: "CONS_RCV_ACW_COUNT"
  }

  dimension: cons_rcv_acw_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_DURATION ;;
    group_label: "Cons"
    label: "CONS_RCV_ACW_DURATION"
  }

  dimension: cons_rcv_hold_count {
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_COUNT ;;
    group_label: "Cons"
    label: "CONS_RCV_HOLD_COUNT"
  }

  dimension: cons_rcv_hold_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_DURATION ;;
    group_label: "Cons"
    label: "CONS_RCV_HOLD_DURATION"
  }

  dimension: cons_rcv_ring_count {
    type: number
    sql: ${TABLE}.CONS_RCV_RING_COUNT ;;
    group_label: "Cons"
    label: "CONS_RCV_RING_COUNT"
  }

  dimension: cons_rcv_ring_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_RING_DURATION ;;
    group_label: "Cons"
    label: "CONS_RCV_RING_DURATION"
  }

  dimension: cons_rcv_talk_count {
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_COUNT ;;
    group_label: "Cons"
    label: "CONS_RCV_TALK_COUNT"
  }

  dimension: cons_rcv_talk_duration {
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_DURATION ;;
    group_label: "Cons"
    label: "CONS_RCV_TALK_DURATION"
  }

  dimension: interaction_type_key {
    type: number
    sql: ${TABLE}.INTERACTION_TYPE_KEY ;;
    label: "INTERACTION_TYPE_KEY"
  }

  dimension: last_rp_resource_key {
    type: number
    sql: ${TABLE}.LAST_RP_RESOURCE_KEY ;;
    label: "LAST_RP_RESOURCE_KEY"
  }

  dimension: last_vqueue_resource_key {
    type: number
    sql: ${TABLE}.LAST_VQUEUE_RESOURCE_KEY ;;
    label: "LAST_VQ_RESOURCE_KEY"
  }

  dimension: fin_ifa_seg {
    type: number
    sql: ${TABLE}.FIN_IFA_SEG ;;
    label: "FIN_IFA_SEG"
  }

  dimension: fin_irf_seg {
    type: number
    sql: ${TABLE}.FIN_IRF_SEG ;;
    label: "FIN_IRF_SEG"
  }

  dimension: fin_msf_seg {
    type: number
    sql: ${TABLE}.FIN_MSF_SEG ;;
    label: "FIN_MSF_SEG"
  }

  dimension: ini_ifa_seg {
    type: number
    sql: ${TABLE}.INI_IFA_SEG ;;
    label: "INI_IFA_SEG"
  }

  dimension: ini_irf_seg {
    type: number
    sql: ${TABLE}.INI_IRF_SEG ;;
    label: "INI_IRF_SEG"
  }

  dimension: ini_msf_seg {
    type: number
    sql: ${TABLE}.INI_MSF_SEG ;;
    label: "INI_MSF_SEG"
  }

  dimension: mediation_count {
    type: number
    sql: ${TABLE}.MEDIATION_COUNT ;;
    label: "MEDIATION_COUNT"
  }

  dimension: mediation_segment_id {
    type: number
    sql: ${TABLE}.MEDIATION_SEGMENT_ID ;;
    label: "MEDIATION_SEGMENT_ID"
  }

  dimension: media_type_key {
    type: number
    sql: ${TABLE}.MEDIA_TYPE_KEY ;;
    label: "MEDIA_TYPE_KEY"
  }

  dimension: place_key {
    type: number
    sql: ${TABLE}.PLACE_KEY ;;
    label: "PLACE_KEY"
    description: "Es el código del sitio de logueo del representante"
  }

  dimension: post_cons_xfer_hold_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_HOLD_COUNT ;;
    group_label: "Post Cons"
    label: "POST_CONS_XFER_HOLD_COUNT"
  }

  dimension: post_cons_xfer_hold_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_HOLD_DURATION ;;
    group_label: "Post Cons"
    label: "POST_CONS_XFER_HOLD_DURATION"
  }

  dimension: post_cons_xfer_ring_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_RING_COUNT ;;
    group_label: "Post Cons"
    label: "POST_CONS_XFER_RING_COUNT"
  }

  dimension: post_cons_xfer_ring_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_RING_DURATION ;;
    group_label: "Post Cons"
    label: "POST_CONS_XFER_RING_DURATION"
  }

  dimension: post_cons_xfer_talk_count {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_TALK_COUNT ;;
    group_label: "Post Cons"
    label: "POST_CONS_XFER_TALK_COUNT"
  }

  dimension: post_cons_xfer_talk_duration {
    type: number
    sql: ${TABLE}.POST_CONS_XFER_TALK_DURATION ;;
    group_label: "Post Cons"
    label: "POST_CONS_XFER_TALK_DURATION"
  }

  dimension: resource_group_combination_key {
    type: number
    sql: ${TABLE}.RESOURCE_GROUP_COMBINATION_KEY ;;
    group_label: "Resource"
    label: "RESOURCE_GROUP_COMBINATION_KEY"
  }

  dimension: resource_key {
    type: number
    sql: ${TABLE}.RESOURCE_KEY ;;
    group_label: "Resource"
    label: "RESOURCE_KEY"
  }

  dimension: res_previous_sm_state_key {
    type: number
    sql: ${TABLE}.RES_PREVIOUS_SM_STATE_KEY ;;
    label: "RES_PREVIOUS_SM_STATE_KEY"
  }

  dimension: routing_point_duration {
    type: number
    sql: ${TABLE}.ROUTING_POINT_DURATION ;;
    group_label: "Routing"
    label: "ROUTING_POINT_DURATION"
  }

  dimension: routing_target_key {
    type: number
    sql: ${TABLE}.ROUTING_TARGET_KEY ;;
    group_label: "Routing"
    label: "ROUTING_TARGET_KEY"
  }

  dimension: t_duration_ag {
    type: number
    sql: ${TABLE}.T_DURATION_AG ;;
    label: "T_DURATION_AG"
  }

  dimension: t_duration_vq {
    type: number
    sql: ${TABLE}.T_DURATION_VQ ;;
    label: "T_DURATION_VQ"
  }

  dimension: technical_descriptor_key {
    type: number
    sql: ${TABLE}.TECHNICAL_DESCRIPTOR_KEY ;;
    label: "TECHNICAL_DESCRIPTOR_KEY"
  }


  ## Hidden ##

  dimension: ft_callinsrcid {
    hidden: yes
    type:  string
    sql: ${TABLE}.FT_CALLINSRCId ;;
  }

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

  dimension: customer_acw_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_ACW_COUNT ;;
  }

  dimension: customer_acw_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_ACW_DURATION ;;
  }

  dimension: customer_dial_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_DIAL_COUNT ;;
  }

  dimension: customer_dial_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_DIAL_DURATION ;;
  }

  dimension: customer_handle_count {
    hidden: yes
    type: number
  }

  dimension: customer_hold_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_HOLD_COUNT ;;
  }

  dimension: customer_hold_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_HOLD_DURATION ;;
  }

  dimension: customer_ring_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_RING_COUNT ;;
  }

  dimension: customer_ring_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_RING_DURATION ;;
  }

  dimension: customer_talk_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_TALK_COUNT ;;
  }

  dimension: customer_talk_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CUSTOMER_TALK_DURATION ;;
  }

  dimension: dial_count {
    hidden: yes
    type: number
    sql: ${TABLE}.DIAL_COUNT ;;
  }

  dimension: dial_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.DIAL_DURATION ;;
  }

  dimension: duration_call {
    hidden: yes
    type: number
    sql: ${TABLE}.DURATION_CALL ;;
  }

  dimension: fecha_fin_llamada_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_FIN_LLAMADA_EPOCH ;;
  }

  dimension: fecha_ingreso_ag_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_INGRESO_AG_EPOCH ;;
  }

  dimension: fecha_ingreso_vq_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_INGRESO_VQ_EPOCH ;;
  }

  dimension: fecha_ini_llamada_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_INI_LLAMADA_EPOCH ;;
  }

  dimension: fecha_proceso_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_PROCESO_EPOCH ;;
  }

  dimension: fecha_salida_ag_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_SALIDA_AG_EPOCH ;;
  }

  dimension: fecha_salida_vq_epoch {
    hidden: yes
    type: number
    sql: ${TABLE}.FECHA_SALIDA_VQ_EPOCH ;;
  }

  dimension: hold_count {
    hidden: yes
    type: number
    sql: ${TABLE}.HOLD_COUNT ;;
  }

  dimension: hold_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.HOLD_DURATION ;;
  }

  dimension: ring_count {
    hidden: yes
    type: number
    sql: ${TABLE}.RING_COUNT ;;
  }

  dimension: ring_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.RING_DURATION ;;
  }

  dimension: talk_count {
    hidden: yes
    type: number
    sql: ${TABLE}.TALK_COUNT ;;
  }

  dimension: talk_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.TALK_DURATION ;;
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
    label: "CANTIDAD_INTERACIONES"
  }

  measure: count_estado_fin_abandonadasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Abandonadas"
    label: "CANTIDAD_ABANDONADAS"
    filters: [estado_fin_abandonadasrcid: "yes"]
    }

  measure: count_estado_fin_atendidasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Atendidas"
    label: "CANTIDAD_ATENDIDAS"
    filters: [estado_fin_atendidasrcid: "yes"]
  }

  measure: count_estado_fin_recibidasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Recibidas"
    label: "CANTIDAD_RECIBIDAS"
    filters: [estado_fin_recibidasrcid: "yes"]
  }

  measure: count_estado_fin_salientesrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Salientes"
    label: "CANTIDAD_SALIENTES"
    filters: [estado_fin_salientesrcid: "yes"]
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
    filters: [active_flag: "yes"]
  }

  measure: count_contestada_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "1- 01-09"
    filters: [contestada_1_9: "yes"]
  }

  measure: count_contestada_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "2- 10-09"
    filters: [contestada_10_19: "yes"]
  }

  measure: count_contestada_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "3- 20-29"
    filters: [contestada_20_29: "yes"]
  }

  measure: count_contestada_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "4- 30-39"
    filters: [contestada_30_39: "yes"]
  }

  measure: count_contestada_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "5- 40-49"
    filters: [contestada_40_49: "yes"]
  }

  measure: count_contestada_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "6- 50-59"
    filters: [contestada_50_59: "yes"]
  }

  measure: count_contestada_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "7- 60-89"
    filters: [contestada_60_89: "yes"]
  }

  measure: count_contestada_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "8- 60-119"
    filters: [contestada_90_119: "yes"]
  }

  measure: count_contestada_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    view_label: "Contestada"
    group_item_label: "9- 120-Mas"
    filters: [contestada_120_mas: "yes"]
  }

  measure: count_llamada_corta_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    group_item_label: "1- 01-09"
    filters: [llamada_corta_1_9: "yes"]
  }

  measure: count_llamadacorta_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    group_item_label: "2- 10-19"
    filters: [llamada_corta_10_19: "yes"]
  }

  measure: count_llamadacorta_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    group_item_label: "3- 20-29"
    filters: [llamadacorta_20_29: "yes"]
  }

  measure: count_llamadacortasrcid {
    type: count_distinct
    sql: ${interaction_resource_id};;
    value_format_name: id
    group_label: "Llamada Corta"
    group_item_label: "COUNT_LLAMADA_CORTA"
    filters: [llamada_cortasrcid: "yes"]
  }

  measure: count_unico24 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    label: "CLIENTE_UNICO_24H"
    filters: [unico24: "yes"]
  }

  measure: count_unico7_x24 {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    label: "CLIENTE_UNICO_7D"
    filters: [unico7_x24: "yes"]
  }


  ## Sum Distinct ##

  measure: total_after_call_work_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${after_call_work_count} ;;
    label: "TOTAL_AFTER_CALL_WORK_COUNT"
  }

  measure: total_after_call_work_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${after_call_work_duration} ;;
    label: "TOTAL_AFTER_CALL_WORK_DURATION"
  }

  measure: total_customer_acw_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${customer_acw_count} ;;
    group_label: "Customer Time"
    label: "ACW_COUNT"
  }

  measure: total_customer_dial_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_dial_count}  ;;
    label: "DIAL_COUNT"
  }

  measure: total_customer_handle_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_handle_count} ;;
    group_label: "Customer Time"
    label: "HANDLE_COUNT"
  }

  measure: total_customer_hold_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_hold_count} ;;
    group_label: "Customer Time"
    label: "HOLD_COUNT"
  }

  measure: total_customer_ring_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_ring_count} ;;
    group_label: "Customer Time"
    label: "RING_COUNT"
  }

  measure: total_customer_talk_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_talk_count} ;;
    group_label: "Customer Time"
    label: "TALK_COUNT"
  }

  measure: total_duration_call {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${duration_call} ;;
    group_label: "Total"
    label: "TOTAL_DURATION_CALL"
    group_item_label: "Duracion"
  }

  measure: total_t_duration_ag {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${t_duration_ag} ;;
    group_label: "Total"
    label: "TOTAL_T_DURATION_AG"
    group_item_label: "Duración AG"
  }

  measure: total_customer_acw_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${customer_acw_duration};;
    group_label: "Customer Time"
    label: "ACW_TIME"
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

  measure: total_mediation_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${mediation_count} ;;
    label: "TOTAL_MEDIATION_COUNT"
  }
}
