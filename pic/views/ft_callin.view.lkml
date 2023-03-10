view: ft_callin {
  label: "Call In"
  sql_table_name: @{gcp_ambiente}.FT_CALLIN`;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: ft_callinsrcid {
    primary_key: yes
    hidden: yes
    type:  string
    sql: ${TABLE}.FT_CALLINSRCId ;;
  }

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
    group_label: "Fecha Fin Llamada"
    label: "Fin Llamada"
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
    group_label: "Fecha Inicio Llamada"
    label: "Inicio Llamada"
  }

  dimension: fecha_ini_llamada_argsrcid {
    type: date
    convert_tz: no
    sql: ${TABLE}.FECHA_INI_LLAMADA_ARGSRCId ;;
    datatype: date
    label: "Fecha Proceso Llamada"
  }

  ## Flags

  dimension: stop_actionsrcid {
    type: yesno
    sql: ${TABLE}.STOP_ACTIONSRCId ;;
    group_label: "Marcas"
    label: "Es Stop Action"
  }

  dimension: llamada_cortasrcid {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTASRCId ;;
    group_label: "Marcas"
    label: "Es Llamada Corta"
  }

  dimension: estado_fin_abandonadasrcid {
    type: yesno
    sql: ${TABLE}.ESTADO_FIN_ABANDONADASRCId ;;
    group_label: "Marcas"
    label: "Es LLamada Abandonada"
  }

  dimension: estado_fin_atendidasrcid {
    type: yesno
    sql: ${TABLE}.ESTADO_FIN_ATENDIDASRCId ;;
    group_label: "Marcas"
    label: "Es Llamada Atendida"
  }

  dimension: estado_fin_recibidasrcid {
    type: yesno
    sql: ${TABLE}.ESTADO_FIN_RECIBIDASRCId ;;
    group_label: "Marcas"
    label: "Es Llamada Recibida"
  }

  dimension: estado_fin_salientesrcid {
    type: yesno
    sql: ${TABLE}.ESTADO_FIN_SALIENTESRCId ;;
    group_label: "Marcas"
    label: "Es Llamada Saliente"
  }

  dimension: fcrsrcid {
    type: yesno
    sql: ${TABLE}.FCRSRCId ;;
    group_label: "Marcas"
    label: "Es FCR"
    description: "Es la marca de resolucion del primer llamado (First Call Resolution)."
  }

  dimension: abandono_q_1_9 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_1_9;;
    group_label: "Abandono Cola"
    group_item_label: "1- 01-09"
    label: "Abandono Q-1-9"
    description: "Es una llamada abandonada en cola entre 1 y 9 segundos."
  }

  dimension: abandono_q_10_19 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_10_19 ;;
    group_label: "Abandono Cola"
    group_item_label: "2- 10-19"
    label: "Abandono Q-10-19"
    description: "Es una llamada abandonada en cola entre 10 y 19 segundos."
  }

  dimension: abandono_q_20_29 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_20_29 ;;
    group_label: "Abandono Cola"
    group_item_label: "3- 20-29"
    label: "Abandono Q-20-29"
    description: "Es una llamada abandonada en cola entre 20 y 29 segundos"
  }

  dimension: abandono_q_30_39 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_30_39 ;;
    group_label: "Abandono Cola"
    label: "Abandono Q-20-39"
    group_item_label: "4- 30-39"
    description: "Es una llamada abandonada en cola entre 30 y 39 segundos"
  }

  dimension: abandono_q_40_49 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_40_49 ;;
    group_label: "Abandono Cola"
    group_item_label: "5- 40-49"
    label: "Abandono Q-40-49"
    description: "Es una llamada abandonada en cola entre 40 y 49 segundos"
  }

  dimension: abandono_q_50_59 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_50_59 ;;
    group_label: "Abandono Cola"
    group_item_label: "6- 50-59"
    label: "Abandono Q-50-59"
    description: "Es una llamada abandonada en cola entre 50 y 59 segundos"
  }

  dimension: abandono_q_60_89 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_60_89 ;;
    group_label: "Abandono Cola"
    label: "Abandono Q-60-89"
    group_item_label: "7- 60-89"
    description: "Es una llamada abandonada en cola entre 60 y 89 segundos"
  }

  dimension: abandono_q_90_119 {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_90_119 ;;
    group_label: "Abandono Cola"
    group_item_label: "8- 90-119"
    label: "Abandono Q-90-119"
    description: "Es una llamada abandonada en cola entre 90 y 119 segundos"
  }

  dimension: abandono_q_120_mas {
    type: yesno
    sql: ${TABLE}.ABANDONO_Q_120_MAS ;;
    group_label: "Abandono Cola"
    group_item_label: "9- 120-Mas"
    label: "Abandono Q-120-Mas"
    description: "Es una llamada abandonada en cola mayor o igual a 120 segundos"
  }

  dimension: abandono_r_1_9 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_1_9 ;;
    group_label: "Abandono Ring"
    group_item_label: "1- 01-09"
    label: "Abandono R-1-9"
    description: "Es una llamada abandonada en ring entre 1 y 9 segundos"
  }

  dimension: abandono_r_10_19 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_10_19 ;;
    group_label: "Abandono Ring"
    label: "Abandono R-10-19"
    group_item_label: "2- 10-19"
    description: "Es una llamada abandonada en ring entre 10 y 19 segundos"
  }

  dimension: abandono_r_20_29 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_20_29 ;;
    group_label: "Abandono Ring"
    group_item_label: "3- 20-29"
    label: "Abandono R-20-29"
    description: "Es una llamada abandonada en ring entre 20 y 29 segundos"
  }

  dimension: abandono_r_30_39 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_30_39 ;;
    group_label: "Abandono Ring"
    group_item_label: "4- 30-39"
    label: "Abandono R-30-39"
    description: "Es una llamada abandonada en ring entre 30 y 39 segundos"
  }

  dimension: abandono_r_40_49 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_40_49 ;;
    group_label: "Abandono Ring"
    group_item_label: "5- 40-49"
    label: "Abandono R-40-49"
    description: "Es una llamada abandonada en ring entre 40 y 49 segundos"
  }

  dimension: abandono_r_50_59 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_50_59 ;;
    group_label: "Abandono Ring"
    group_item_label: "6- 50-59"
    label: "Abandono R-50-59"
    description: "Es una llamada abandonada en ring entre 50 y 59 segundos"
  }

  dimension: abandono_r_60_89 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_60_89 ;;
    group_label: "Abandono Ring"
    group_item_label: "7- 60-89"
    label: "Abandono R-60-89"
    description: "Es una llamada abandonada en ring entre 60 y 89 segundos"
  }

  dimension: abandono_r_90_119 {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_90_119 ;;
    group_label: "Abandono Ring"
    group_item_label: "8- 90-119"
    label: "Abandono R-90-119"
    description: "Es una llamada abandonada en ring entre 90 y 119 segundos"
  }

  dimension: abandono_r_120_mas {
    type: yesno
    sql: ${TABLE}.ABANDONO_R_120_MAS ;;
    group_label: "Abandono Ring"
    group_item_label: "9- 120-Mas"
    label: "Abandono R-120-Mas"
    description: "Es una llamada abandonada en ring mayor o igual a 120 segundos"
  }

  dimension: active_flag {
    type: yesno
    sql: ${TABLE}.ACTIVE_FLAG ;;
    group_label: "Marcas"
    label: "Es Valido"
    description: "Flag para actividades de productividad"
  }

  dimension: contestada_1_9 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_1_9 ;;
    group_label: "Contestada"
    group_item_label: "1- 01-09"
    label: "Es Contestada 01-09"
    description: "Es una llamada contestada entre 1 y 9 segundos"
  }

  dimension: contestada_10_19 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_10_19 ;;
    group_label: "Contestada"
    group_item_label: "2- 10-19"
    label: "Es Contestada 10-19"
    description: "Es una llamada contestada entre 10 y 19 segundos"
  }

  dimension: contestada_20_29 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_20_29 ;;
    group_label: "Contestada"
    group_item_label: "3- 20-29"
    label: "Es Contestada 20-29"
    description: "Es una llamada contestada entre 20 y 29 segundos"
  }

  dimension: contestada_30_39 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_30_39 ;;
    group_label: "Contestada"
    group_item_label: "4- 30-39"
    label: "Es Contestada 30-39"
    description: "Es una llamada contestada entre 30 y 39 segundos"
  }

  dimension: contestada_40_49 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_40_49 ;;
    group_label: "Contestada"
    group_item_label: "5- 40-49"
    label: "Es Contestada 40-49"
    description: "Es una llamada contestada entre 40 y 49 segundos"
  }

  dimension: contestada_50_59 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_50_59 ;;
    group_label: "Contestada"
    group_item_label: "6- 50-59"
    label: "Es Contestada 50-59"
    description: "Es una llamada contestada entre 50 y 59 segundos"
  }

  dimension: contestada_60_89 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_60_89 ;;
    group_label: "Contestada"
    group_item_label: "7- 60-89"
    label: "Es Contestada 60-89"
    description: "Es una llamada contestada entre 60 y 89 segundos"
  }

  dimension: contestada_90_119 {
    type: yesno
    sql: ${TABLE}.CONTESTADA_90_119 ;;
    group_label: "Contestada"
    group_item_label: "8- 90-119"
    label: "Es Contestada 90-119"
    description: "Es una llamada contestada entre 90 y 119 segundos"
  }

  dimension: contestada_120_mas {
    type: yesno
    sql: ${TABLE}.CONTESTADA_120_MAS ;;
    group_label: "Contestada"
    group_item_label: "9- 120-Mas"
    label: "Es Contestada 120-Mas"
    description: "Es una llamada contestada mayor o igual a 120 segundos"
  }

  dimension: llamada_corta_1_9 {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTA_1_9 ;;
    group_label: "Llamada Corta"
    group_item_label: "1- 01-09"
    label: "Llamada Corta 1-9"
    description: "Es una llamada corta entre 1 y 9 segundos"
  }

  dimension: llamada_corta_10_19 {
    type: yesno
    sql: ${TABLE}.LLAMADA_CORTA_10_19 ;;
    group_label: "Llamada Corta"
    group_item_label: "2- 10-19"
    label: "Llamada Corta 10-19"
    description: "Es una llamada corta entre 10 y 19 segundos."
  }

  dimension: llamadacorta_20_29 {
    type: yesno
    sql: ${TABLE}.LLAMADACORTA_20_29 ;;
    group_label: "Llamada Corta"
    group_item_label: "3- 20-29"
    label: "Llamada Corta 20-29"
    description: "Es una llamada corta entre 20 y 29 segundos."
  }

  dimension: unico24 {
    type: yesno
    sql: ${TABLE}.UNICO24 ;;
    group_label: "Marcas"
    label: "Es Cliente Unico 24H"
    description: "Cliente unico que se contacto dentro de las 24hs."
  }

  dimension: unico7_x24 {
    type: yesno
    sql: ${TABLE}.UNICO7X24 ;;
    group_label: "Marcas"
    label: "Es Cliente Unico 7D"
    description: "Cliente unico que se contacto dentro de los 7 d??as."
  }

  ## Strings

  dimension: tabpackagesrcid {
    type: string
    sql: ${TABLE}.TABPACKAGESRCId ;;
    suggest_dimension: lk_tabpackage.tabpackagesrcid
    label: "TAB Package"
  }

  dimension: tabulacion1_srcid {
    type: string
    sql: ${TABLE}.TABULACION1SRCId ;;
    suggest_dimension: lk_tabulacion1.tabulacion1_srcid
    group_label: "Tabulacion"
    group_item_label: "Tabulacion 1"
    label: "TAB 1"
  }

  dimension: tabulacion2_srcid {
    type: string
    sql: ${TABLE}.TABULACION2SRCId ;;
    suggest_dimension: lk_tabulacion2.tabulacion2_srcid
    group_label: "Tabulacion"
    group_item_label: "Tabulacion 2"
    label: "TAB 2"
  }

  dimension: tabulacion3_srcid {
    type: string
    sql: ${TABLE}.TABULACION3SRCId ;;
    suggest_dimension: lk_tabulacion3.tabulacion3_srcid
    group_label: "Tabulacion"
    group_item_label: "Tabulacion 3"
    label: "TAB 3"
  }

  dimension: tabulacion4_srcid {
    type: string
    sql: ${TABLE}.TABULACION4SRCId ;;
    suggest_dimension: lk_tabulacion4.tabulacion4_srcid
    group_label: "Tabulacion"
    group_item_label: "Tabulacion 4"
    label: "TAB 4"
  }

  dimension: tab_agrupador_reportingsrcid {
    type: string
    sql: ${TABLE}.TAB_AGRUPADOR_REPORTINGSRCId ;;
    suggest_dimension: lk_tab_agrupador_reporting.tab_agrupador_reportingsrcid
    group_label: "Tabulacion"
    group_item_label: "Agrupador Reporting"
    label: "TAB Agrupador Reporting"
    description: "Es el agrupador 1 reporting"
  }

  dimension: tab_consulta_porsrcid {
    type: string
    sql: ${TABLE}.TAB_CONSULTA_PORSRCId ;;
    suggest_dimension: lk_tab_consulta_por.tab_consulta_porsrcid
    group_label: "Tabulacion"
    group_item_label: "Consulta Por"
    label: "TAB Consulta Por"
    description: "Agrupador consulta por."
  }

  dimension: tab_contactosrcid {
    type: string
    sql: ${TABLE}.TAB_CONTACTOSRCId ;;
    suggest_dimension: lk_tab_contacto.tab_contactosrcid
    group_label: "Tabulacion"
    group_item_label: "Contactos"
    label: "TAB Contactos"
    description: "Agrupador contactos."
  }

  dimension: tab_motivosrcid {
    type: string
    sql: ${TABLE}.TAB_MOTIVOSRCId ;;
    suggest_dimension: lk_tab_motivo.tab_motivosrcid
    group_label: "Tabulacion"
    group_item_label: "Motivos"
    label: "TAB Motivos"
    description: "Agrupador 3 - Motivos."
  }

  dimension: tab_movilsrcid {
    type: string
    sql: ${TABLE}.TAB_MOVILSRCId ;;
    suggest_dimension: lk_tab_movil.tab_movilsrcid
    group_label: "Tabulacion"
    group_item_label: "Movil"
    label: "TAB Movil"
    description: "Agrupador movil."
  }

  dimension: tab_que_tienesrcid {
    type: string
    sql: ${TABLE}.TAB_QUE_TIENESRCId ;;
    suggest_dimension: lk_tab_que_tiene.tab_que_tienesrcid
    group_label: "Tabulacion"
    group_item_label: "Que Tiene"
    label: "TAB Que tiene"
    description: "Agrupador que tiene (arbol ventas)."
  }

  dimension: tab_resultadosrcid {
    type: string
    sql: ${TABLE}.TAB_RESULTADOSRCId ;;
    suggest_dimension: lk_tab_resultado.tab_resultadosrcid
    group_label: "Tabulacion"
    group_item_label: "Resultados"
    label: "TAB Resultados"
    description: "Agrupador 4 - Resultado."
  }

  dimension: tab_tipo_de_llamadosrcid {
    type: string
    sql: ${TABLE}.TAB_TIPO_DE_LLAMADOSRCId ;;
    suggest_dimension: lk_tab_tipo_de_llamado.tab_tipo_de_llamadosrcid
    group_label: "Tabulacion"
    group_item_label: "Tipo de Llamados"
    label: "TAB Tipo de Llamados"
    description: "Agrupador 2 - Tipo de llamado."
  }

  dimension: contexto_ivr_0800_srcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800SRCId ;;
    suggest_dimension: lk_contexto_ivr0800.contexto_ivr_0800_srcid
    group_label: "Contexto IVR"
    group_item_label: "Contexto"
    label: "Contexto IVR"
  }

  dimension: contexto_ivr_0800_opcionsrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_OPCIONSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_opcion.contexto_ivr_0800_opcionsrcid
    group_label: "Contexto IVR"
    group_item_label: "Opcion"
    label: "Contexto IVR Opcion"
  }

  dimension: contexto_ivr_0800_segmentosrcid {
    type: string
    sql: ${TABLE}.CONTEXTO_IVR_0800_SEGMENTOSRCId ;;
    suggest_dimension: lk_contexto_ivr0800_segmento.contexto_ivr_0800_segmentosrcid
    group_label: "Contexto IVR"
    group_item_label: "Segmento"
    label: "Contexto IVR Segemento"
  }

  dimension: vagsrcid {
    type: string
    sql: ${TABLE}.VAGSRCId ;;
    suggest_dimension: lk_vag.vagsrcid
    group_label: "VAG"
    group_item_label: "Nombre"
    label: "VAG Nombre"
  }

  dimension: vag_agrupador4_srcid {
    type: string
    sql: ${TABLE}.VAG_AGRUPADOR4SRCId ;;
    suggest_dimension: lk_vagagrupador4.vag_agrupador4_srcid
    group_label: "VAG"
    group_item_label: "Agrupador 4"
    label: "VAG Agrupador 4"
  }

  dimension: vag_canalidadsrcid {
    type: string
    sql: ${TABLE}.VAG_CANALIDADSRCId ;;
    suggest_dimension: lk_vagcanalidad.vag_canalidadsrcid
    group_label: "VAG"
    group_item_label: "Canalidad"
    label: "VAG Canalidad"
  }

  dimension: vag_fansrcid {
    type: string
    sql: ${TABLE}.VAG_FANSRCId ;;
    suggest_dimension: lk_vagfan.vag_fansrcid
    group_label: "VAG"
    group_item_label: "Fan"
    label: "VAG Fan"
  }

  dimension: vag_negociosrcid {
    type: string
    sql: ${TABLE}.VAG_NEGOCIOSRCId ;;
    suggest_dimension: lk_vagnegocio.vag_negociosrcid
    group_label: "VAG"
    group_item_label: "Negocios"
    label: "VAG Negocios"
  }

  dimension: vag_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC1SRCId ;;
    suggest_dimension: lk_vagpcrc1.vag_pcrc1_srcid
    group_label: "VAG"
    group_item_label: "PCRC 1"
    label: "VAG PCRC 1"
  }

  dimension: vag_pcrc2_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC2SRCId ;;
    suggest_dimension: lk_vagpcrc2.vag_pcrc2_srcid
    group_label: "VAG"
    group_item_label: "PCRC 2"
    label: "VAG PCRC 2"
  }

  dimension: vag_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VAG_PCRC3SRCId ;;
    suggest_dimension: lk_vagpcrc3.vag_pcrc3_srcid
    group_label: "VAG"
    group_item_label: "PCRC 3"
    label: "VAG PCRC 3"
  }

  dimension: vag_programasrcid {
    type: string
    sql: ${TABLE}.VAG_PROGRAMASRCId ;;
    suggest_dimension: lk_vagprograma.vag_programasrcid
    group_label: "VAG"
    group_item_label: "Programa"
    label: "VAG Programa"
  }

  dimension: vag_propiedadsrcid {
    type: string
    sql: ${TABLE}.VAG_PROPIEDADSRCId ;;
    suggest_dimension: lk_vagpropiedad.vag_propiedadsrcid
    group_label: "VAG"
    group_item_label: "Propiedad"
    label: "VAG Propiedad"
  }

  dimension: vag_segmentosrcid {
    type: string
    sql: ${TABLE}.VAG_SEGMENTOSRCId ;;
    suggest_dimension: lk_vagsegmento.vag_segmentosrcid
    group_label: "VAG"
    group_item_label: "Segmento"
    label: "VAG Segmento"
  }

  dimension: vag_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SITIOSRCId ;;
    suggest_dimension: lk_vagsitio.vag_sitiosrcid
    group_label: "VAG"
    group_item_label: "Sitio"
    label: "VAG Sitio"
  }

  dimension: vag_sub_sitiosrcid {
    type: string
    sql: ${TABLE}.VAG_SUB_SITIOSRCId ;;
    suggest_dimension: lk_vagsub_sitio.vag_sub_sitiosrcid
    group_label: "VAG"
    group_item_label: "Subsitio"
    label: "VAG Subsitio"
  }

  dimension: vag_tipo_contactosrcid {
    type: string
    sql: ${TABLE}.VAG_TIPO_CONTACTOSRCId ;;
    suggest_dimension: lk_vagtipo_contacto.vag_tipo_contactosrcid
    group_label: "VAG"
    group_item_label: "Tipo Contacto"
    label: "VAG Tipo Contacto"
  }

  dimension: vqsrcid {
    type: string
    sql: ${TABLE}.VQSRCId ;;
    suggest_dimension: lk_vq.vqsrcid
    group_label: "VQ"
    group_item_label: "Nombre"
    label: "VQ Nombre"
  }

  dimension: vq_agrupador2_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR2SRCId ;;
    suggest_dimension: lk_vqagrupador2.vq_agrupador2_srcid
    group_label: "VQ"
    group_item_label: "Agrupador 2"
    label: "VQ Agrupador 2"
  }

  dimension: vq_agrupador3_srcid {
    type: string
    sql: ${TABLE}.VQ_AGRUPADOR3SRCId ;;
    suggest_dimension: lk_vqagrupador3.vq_agrupador3_srcid
    group_label: "VQ"
    group_item_label: "Agrupador 3"
    label: "VQ Agrupador 3"
  }

  dimension: vq_canalidadsrcid {
    type: string
    sql: ${TABLE}.VQ_CANALIDADSRCId ;;
    suggest_dimension: lk_vqcanalidad.vq_canalidadsrcid
    group_label: "VQ"
    group_item_label: "Canalidad"
    label: "VQ Canalidad"
  }

  dimension: vq_estadosrcid {
    type: string
    sql: ${TABLE}.VQ_ESTADOSRCId ;;
    suggest_dimension: lk_vqestado.vq_estadosrcid
    group_label: "VQ"
    group_item_label: "Estado"
    label: "VQ Estado"
  }

  dimension: vq_fansrcid {
    type: string
    sql: ${TABLE}.VQ_FANSRCId ;;
    suggest_dimension: lk_vqfan.vq_fansrcid
    group_label: "VQ"
    group_item_label: "Fan"
    label: "VQ Fan"
  }

  dimension: vq_fcrsrcid {
    type: string
    sql: ${TABLE}.VQ_FCRSRCId ;;
    suggest_dimension: lk_vqfcr.vq_fcrsrcid
    group_label: "VQ"
    group_item_label: "FCR"
    label: "VQ FCR"
  }

  dimension: vq_negociosrcid {
    type: string
    sql: ${TABLE}.VQ_NEGOCIOSRCId ;;
    suggest_dimension: lk_vqnegocio.vq_negociosrcid
    group_label: "VQ"
    group_item_label: "Negocio"
    label: "VQ Negocio"
  }

  dimension: vq_origen_digitalsrcid {
    type: string
    sql: ${TABLE}.VQ_ORIGEN_DIGITALSRCId ;;
    suggest_dimension: lk_vqorigen_digital.vq_origen_digitalsrcid
    group_label: "VQ"
    group_item_label: "Origen Digital"
    label: "VQ Origen Digital"
  }

  dimension: vq_pcrc1_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC1SRCId ;;
    suggest_dimension: lk_vqpcrc1.vq_pcrc1_srcid
    group_label: "VQ"
    group_item_label: "PCRC 1"
    label: "VQ PCRC 1"
  }

  dimension: vq_pcrc2_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC2SRCId ;;
    suggest_dimension: lk_vqpcrc2.vq_pcrc2_srcid
    group_label: "VQ"
    group_item_label: "PCRC 2"
    label: "VQ PCRC 2"
  }

  dimension: vq_pcrc3_srcid {
    type: string
    sql: ${TABLE}.VQ_PCRC3SRCId ;;
    suggest_dimension: lk_vqpcrc3.vq_pcrc3_srcid
    group_label: "VQ"
    group_item_label: "PCRC 3"
    label: "VQ PCRC 3"
  }

  dimension: vq_programasrcid {
    type: string
    sql: ${TABLE}.VQ_PROGRAMASRCId ;;
    suggest_dimension: lk_vqprograma.vq_programasrcid
    group_label: "VQ"
    group_item_label: "Programa"
    label: "VQ Programa"
  }

  dimension: vq_segmentosrcid {
    type: string
    sql: ${TABLE}.VQ_SEGMENTOSRCId ;;
    suggest_dimension: lk_vqsegmento.vq_segmentosrcid
    group_label: "VQ"
    group_item_label: "Segmento"
    label: "VQ Segmento"
  }

  dimension: vq_tipo_contactosrcid {
    type: string
    sql: ${TABLE}.VQ_TIPO_CONTACTOSRCId ;;
    suggest_dimension: lk_vqtipo_contacto.vq_tipo_contactosrcid
    group_label: "VQ"
    group_item_label: "Tipo Contacto"
    label: "VQ Tipo Contacto"
  }

  dimension: gvqsrcid {
    type: string
    sql: ${TABLE}.GVQSRCId ;;
    suggest_dimension: lk_gvq.gvqsrcid
    label: "GVQ"
    description: "Grupo al que perternece la VQ."
  }

  dimension: interaction_typesrcid {
    type: string
    sql: ${TABLE}.INTERACTION_TYPESRCId ;;
    suggest_dimension: lk_interaction_type.interaction_typesrcid
    label: "Tipo Interaccion"
  }

  dimension: media_namesrcid {
    type: string
    sql: ${TABLE}.MEDIA_NAMESRCId ;;
    suggest_dimension: lk_media_name.media_namesrcid
    label: "Media Name"
  }

  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
    group_label: "ANI"
    group_item_label: "Nombre"
    label: "ANI Nombre"
  }

  dimension: anis_ani_descripcion {
    type: string
    sql: ${TABLE}.ANIS_ANI_DESCRIPCION ;;
    group_label: "ANI"
    group_item_label: "Descripcion"
    label: "ANI Descripcion"
    description: "Es el numero de linea de ingreso al call."
  }

  dimension: anis_postdiscado_descripcion {
    type: string
    sql: ${TABLE}.ANIS_POSTDISCADO_DESCRIPCION ;;
    group_label: "ANI"
    group_item_label: "Postdiscado Descripcion"
    label: "ANI Postdiscado Descripcion"
    description: "Corresponde al numero validado con el cliente diferente del numero del llamado original."
  }

  dimension: apellido {
    type: string
    sql: ${TABLE}.APELLIDO ;;
    group_label: "Agente"
    group_item_label: "Apellido"
    label: "Agente Apellido"
    description: "Es el apellido del agente que atiende la llamada."
  }

  dimension: dim_vag_tipo {
    type: string
    sql: ${TABLE}.DIM_VAG_TIPO ;;
    group_label: "VAG"
    group_item_label: "Tipo"
    label: "VAG Tipo"
  }

  dimension: dnis {
    type: string
    sql: ${TABLE}.DNIS ;;
    label: "DNIS"
    description: "Es el numero de linea de la llamada saliente contactada."
  }

  dimension: documento {
    type: string
    sql: ${TABLE}.DOCUMENTO ;;
    group_label: "Cliente"
    group_item_label: "Documento"
    label: "Cliente Documento"
    description: "Es el DNI del cliente"
  }

  dimension: encuesta {
    type: string
    sql: ${TABLE}.ENCUESTA ;;
    view_label: "Encuesta"
    label: "Encuesta"
  }

  dimension: id_ivr {
    type: string
    sql: ${TABLE}.ID_IVR ;;
    label: "IVR Id"
    description: "Identificador de la llamada en el IVR."
  }

  dimension: id_nice {
    type: string
    sql: ${TABLE}.ID_NICE ;;
    label: "Nice Id"
    description: "Identificador de la grabacion de la llamada para acciones de calidad."
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
    group_label: "Cliente"
    group_item_label: "Id"
    label: "Cliente Id"
    description: "Identificador del cliente unico."
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
    group_label: "Agente"
    group_item_label: "Nombre"
    label: "Agente Nombre"
    description: "Es el nombre del agente que atiende la llamada."
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NOMBRE_CLIENTE ;;
    group_label: "Cliente"
    group_item_label: "Nombre"
    label: "Cliente Nombre"
  }

  dimension: place_name {
    type: string
    sql: ${TABLE}.PLACE_NAME ;;
    label: "Place Name"
    description: "Es el sitio de logueo del representante"
  }

  dimension: postdiscado {
    type: string
    sql: ${TABLE}.POSTDISCADO ;;
    label: "Postdiscado"
    description: "Corresponde al numero validado con el cliente diferente del numero del llamado original."
  }

  dimension: pregunta_1 {
    type: string
    sql: ${TABLE}.PREGUNTA_1 ;;
    view_label: "Encuesta"
    group_label: "Preguntas"
    label: "Pregunta 1"
    description: "Pregunta Encuesta 1"
  }

  dimension: pregunta_2 {
    type: string
    sql: ${TABLE}.PREGUNTA_2 ;;
    view_label: "Encuesta"
    group_label: "Preguntas"
    label: "Pregunta 2"
    description: "Pregunta Encuesta 2"
  }

  dimension: pregunta_3 {
    type: string
    sql: ${TABLE}.PREGUNTA_3 ;;
    view_label: "Encuesta"
    group_label: "Preguntas"
    label: "Pregunta 3"
    description: "Pregunta Encuesta 3"
  }

  dimension: pregunta_4 {
    type: string
    sql: ${TABLE}.PREGUNTA_4 ;;
    view_label: "Encuesta"
    group_label: "Preguntas"
    label: "Pregunta 4"
    description: "Pregunta Encuesta 4"
  }

  dimension: pregunta_5 {
    type: string
    sql: ${TABLE}.PREGUNTA_5 ;;
    view_label: "Encuesta"
    group_label: "Preguntas"
    label: "Pregunta 5"
    description: "Pregunta Encuesta 5"
  }

  dimension: respuesta_1 {
    type: string
    sql: ${TABLE}.RESPUESTA_1 ;;
    view_label: "Encuesta"
    group_label: "Respuestas"
    label: "Respuesta 1"
    description: "Respuesta Encuesta 1"
  }

  dimension: respuesta_2 {
    type: string
    sql: ${TABLE}.RESPUESTA_2 ;;
    view_label: "Encuesta"
    group_label: "Respuestas"
    label: "Respuesta 2"
    description: "Respuesta Encuesta 2"
  }

  dimension: respuesta_3 {
    type: string
    sql: ${TABLE}.RESPUESTA_3 ;;
    view_label: "Encuesta"
    group_label: "Respuestas"
    label: "Respuesta 3"
    description: "Respuesta Encuesta 3"
  }

  dimension: respuesta_4 {
    type: string
    sql: ${TABLE}.RESPUESTA_4 ;;
    view_label: "Encuesta"
    group_label: "Respuestas"
    label: "Respuesta 4"
    description: "Respuesta Encuesta 4"
  }

  dimension: respuesta_5 {
    type: string
    sql: ${TABLE}.RESPUESTA_5 ;;
    view_label: "Encuesta"
    group_label: "Respuestas"
    label: "Respuesta 5"
    description: "Respuesta Encuesta 5"
  }

  dimension: rp_ingreso_call {
    type: string
    sql: ${TABLE}.RP_INGRESO_CALL ;;
    label: "RP_INGRESO_CALL"
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.TELEFONO ;;
    group_label: "Cliente"
    group_item_label: "Telefono"
    label: "Cliente Telefono"
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
    group_item_label: "Legajo"
    label: "Agente Legajo"
    description: "Es el legajo del agente que atiende la llamada."
  }

  dimension: resource_role_vq_srcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_VQSRCId ;;
  }

  dimension: technical_result_vq_srcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_VQSRCId ;;
  }

  dimension: result_reason_vq_srcid {
    type: string
    sql: ${TABLE}.RESULTREASON_VQSRCId ;;
  }

  dimension: resource_role_ag_srcid {
    type: string
    sql: ${TABLE}.RESOURCEROLE_AGSRCId ;;
  }

  dimension: technical_result_ag_srcid {
    type: string
    sql: ${TABLE}.TECHNICALRESULT_AGSRCId ;;
  }

  dimension: result_reason_ag_srcid {
    type: string
    sql: ${TABLE}.RESULTREASON_AGSRCId ;;
  }

  dimension: tabs_concatenadas {
    type: string
    sql: ${TABLE}.TABS_CONCATENADAS ;;
  }

  dimension: id_gia {
    type: string
    sql: ${TABLE}.ID_GIA ;;
    group_label: "Cognitivo"
    label: "ID Gia"
    description: "ID de sesi??n en GIA."
  }

  dimension: id_watson {
    type: string
    sql: ${TABLE}.ID_WATSON ;;
    group_label: "Cognitivo"
    label: "ID Watson"
    description: "ID de sesi??n en Watson."
  }

  dimension: skil_alias_watson {
    type: string
    sql: ${TABLE}.SKIL_ALIAS_WATSON ;;
    group_label: "Cognitivo"
    label: "Skil Alias Watson"
    description: "Alias del Skill en Watson"
  }

  ## Numbers

  dimension: res_ordinalsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RES_ORDINALSRCId ;;
    label: "RES_ORDINAL"
    description: "Marca la cantidad de transferencias de la llamada original en distintas colas de atencion."
  }

  dimension: sub_estado_finsrcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SUB_ESTADO_FINSRCId ;;
    label: "Subestado Fin"
    description: "Estado con el que cierre la llamada."
  }

  dimension: interaction_id {
    type: number
    sql: ${TABLE}.INTERACTION_ID ;;
    label: "Interaction Id"
    description: "Es el numero identificador de la llamada en PIC (no es unico)."
  }

  dimension: interaction_type_key {
    type: number
    sql: ${TABLE}.INTERACTION_TYPE_KEY ;;
    label: "Iteraction Type Key"
  }

  dimension: media_type_key {
    type: number
    sql: ${TABLE}.MEDIA_TYPE_KEY ;;
    label: "Media Type Key"
  }

  dimension: place_key {
    type: number
    sql: ${TABLE}.PLACE_KEY ;;
    label: "Place Key"
    description: "Codigo del sitio de logueo del representante"
  }

  dimension: interaction_resource_id {
    type: number
    sql: ${TABLE}.INTERACTION_RESOURCE_ID ;;
  }

  dimension: routing_point_duration {
    type: number
    sql: ${TABLE}.ROUTING_POINT_DURATION ;;
  }

  dimension: conector_idinteraccion  {
    type: number
    sql: ${TABLE}.CONECTOR_IDINTERACCION ;;
    group_label: "Cognitivo"
    label: "Conector ID Interaccion"
    description: "Connection ID de la interacci??n"
  }

  ## Hidden

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

  dimension: agent_to_agent_cons_count {
    hidden: yes
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_COUNT ;;
  }

  dimension: agent_to_agent_cons_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.AGENT_TO_AGENT_CONS_DURATION ;;
  }

  dimension: conference_initiated_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONFERENCE_INITIATED_COUNT ;;
  }

  dimension: conf_init_hold_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_COUNT ;;
  }

  dimension: conf_init_hold_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_INIT_HOLD_DURATION ;;
  }

  dimension: conf_init_talk_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_COUNT ;;
  }

  dimension: conf_init_talk_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_INIT_TALK_DURATION ;;
  }

  dimension: conf_join_hold_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_COUNT ;;
  }

  dimension: conf_join_hold_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_JOIN_HOLD_DURATION ;;
  }

  dimension: conf_join_ring_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_COUNT ;;
  }

  dimension: conf_join_ring_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_JOIN_RING_DURATION ;;
  }

  dimension: conf_join_talk_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_COUNT ;;
  }

  dimension: conf_join_talk_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONF_JOIN_TALK_DURATION ;;
  }

  dimension: cons_init_dial_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_COUNT ;;
  }

  dimension: cons_init_dial_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_INIT_DIAL_DURATION ;;
  }

  dimension: cons_init_hold_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_COUNT ;;
  }

  dimension: cons_init_hold_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_INIT_HOLD_DURATION ;;
  }

  dimension: cons_init_talk_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_COUNT ;;
  }

  dimension: cons_init_talk_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_INIT_TALK_DURATION ;;
  }

  dimension: cons_rcv_acw_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_COUNT ;;
  }

  dimension: cons_rcv_acw_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_ACW_DURATION ;;
  }

  dimension: cons_rcv_hold_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_COUNT ;;
  }

  dimension: cons_rcv_hold_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_HOLD_DURATION ;;
  }

  dimension: cons_rcv_ring_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_RING_COUNT ;;
  }

  dimension: cons_rcv_ring_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_RING_DURATION ;;
  }

  dimension: cons_rcv_talk_count {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_COUNT ;;
  }

  dimension: cons_rcv_talk_duration {
    hidden: yes
    type: number
    sql: ${TABLE}.CONS_RCV_TALK_DURATION ;;
  }

  dimension: t_duration_ag {
    hidden: yes
    type: number
    sql: ${TABLE}.T_DURATION_AG ;;
  }

  dimension: t_duration_vq {
    hidden: yes
    type: number
    sql: ${TABLE}.T_DURATION_VQ ;;
  }

  dimension: nomina_usr_creacion_fk {
    hidden: yes
    type: string
    sql: ${TABLE}.NOMINA_PERIODO_INI_LLAMADA_USUARIO_FK ;;
  }

## Measures

  measure: count_interaction_resource_id {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Interacciones"
    label: "Cantidad Interacciones"
    description: "Cuenta el total de interacciones distintas sobre el campo Interaction Resource Id."
  }

  measure: count_estado_fin_abandonadasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Abandonadas"
    label: "Cantidad Abandonadas"
    filters: [estado_fin_abandonadasrcid: "Yes"]
    description: "Es la cantidad total de llamadas donde el estado fin es igual a Abandonada."
    }

  measure: count_estado_fin_atendidasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Atendidas"
    label: "Cantidad Atendidas"
    filters: [estado_fin_atendidasrcid: "Yes"]
  }

  measure: count_estado_fin_recibidasrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Recibidas"
    label: "Cantidad Recibidas"
    filters: [estado_fin_recibidasrcid: "Yes"]
  }

  measure: count_estado_fin_salientesrcid {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Salientes"
    label: "Cantidad Salientes"
    filters: [estado_fin_salientesrcid: "Yes"]
    description: "Es la cantidad total de llamadas donde el estado fin es igual a Saliente."
  }

  measure: count_abandono_q_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "1- 01-09"
    label: "Cantidad Abandono Q-1-9"
    description: "Cantidad de llamadas abandonadas en cola entre 1 y 9 segundos"
    filters: [abandono_q_1_9: "Yes"]
  }

  measure: count_abandono_q_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "2- 10-19"
    label: "Cantidad Abandono Q-10-19"
    description: "Cantidad de llamadas abandonadas en cola entre 10 y 19 segundos"
    filters: [abandono_q_10_19: "Yes"]
  }

  measure: count_abandono_q_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "3- 20-29"
    label: "Cantidad Abandono Q-20-29"
    description: "Cantidad de llamadas abandonadas en cola entre 20 y 29 segundos"
    filters: [abandono_q_20_29: "Yes"]
  }

  measure: count_abandono_q_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "4- 30-39"
    label: "Cantidad Abandono Q-30-39"
    description: "Cantidad de llamadas abandonadas en cola entre 30 y 39 segundos"
    filters: [abandono_q_30_39: "Yes"]
  }

  measure: count_abandono_q_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "5- 40-49"
    label: "Cantidad Abandono Q-40-49"
    description: "Cantidad de llamadas abandonadas en cola entre 40 y 49 segundos"
    filters: [abandono_q_40_49: "Yes"]
  }

  measure: count_abandono_q_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "6- 50-59"
    label: "Cantidad Abandono Q-50-59"
    description: "Cantidad de llamadas abandonadas en cola entre 50 y 59 segundos"
    filters: [abandono_q_50_59: "Yes"]
  }

  measure: count_abandono_q_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    label: "Cantidad Abandono Q-60-89"
    group_item_label: "7- 60-89"
    description: "Cantidad de llamadas abandonadas en cola entre 60 y 89 segundos"
    filters: [abandono_q_60_89: "Yes"]
  }

  measure: count_abandono_q_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "8- 90-119"
    label: "Cantidad Abandono Q-90-119"
    description: "Cantidad de llamadas abandonadas en cola entre 90 y 119 segundos"
    filters: [abandono_q_90_119: "Yes"]
  }

  measure: count_abandono_q_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Cola"
    group_item_label: "9- 120-Mas"
    label: "Cantidad Abandono Q-120-Mas"
    description: "Cantidad de llamadas abandonadas en cola mayor o igual a 120 segundos"
    filters: [abandono_q_120_mas: "Yes"]
  }

  measure: count_abandono_r_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "1- 01-09"
    label: "Cantidad Abandono R-1-9"
    description: "Cantidad de llamadas abandonadas en ring entre 1 y 9 segundos"
    filters: [abandono_r_1_9: "Yes"]
  }

  measure: count_abandono_r_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "2- 10-19"
    label: "Cantidad Abandono R-10-19"
    description: "Cantidad de llamadas abandonadas en ring entre 10 y 19 segundos"
    filters: [abandono_r_10_19: "Yes"]
  }

  measure: count_abandono_r_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "3- 20-29"
    label: "Cantidad Abandono R-20-29"
    description: "Cantidad de llamadas abandonadas en ring entre 20 y 29 segundos"
    filters: [abandono_r_20_29: "Yes"]
  }

  measure: count_abandono_r_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    label: "Cantidad Abandono R-30-39"
    group_item_label: "4- 30-39"
    description: "Cantidad de llamadas abandonadas en ring entre 30 y 39 segundos"
    filters: [abandono_r_30_39: "Yes"]
  }

  measure: count_abandono_r_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "5- 40-49"
    label: "Cantidad Abandono R-40-49"
    description: "Cantidad de llamadas abandonadas en ring entre 40 y 49 segundos"
    filters: [abandono_r_40_49: "Yes"]
  }

  measure: count_abandono_r_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "6- 50-59"
    label: "Cantidad Abandono R-50-59"
    description: "Cantidad de llamadas abandonadas en ring entre 50 y 59 segundos"
    filters: [abandono_r_50_59: "Yes"]
  }

  measure: count_abandono_r_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "7- 60-89"
    label: "Cantidad Abandono R-60-89"
    description: "Cantidad de llamadas abandonadas en ring entre 60 y 89 segundos"
    filters: [abandono_r_60_89: "Yes"]
  }

  measure: count_abandono_r_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "8- 90-119"
    label: "Canridad Abandono R_90-119"
    description: "Cantidad de llamadas abandonadas en ring entre 90 y 119 segundos"
    filters: [abandono_r_90_119: "Yes"]
  }

  measure: count_abandono_r_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Abandono Ring"
    group_item_label: "9- 120-Mas"
    label: "Canrtidad Abandono R-120-Mas"
    description: "Cantidad de llamadas abandonadas en ring mayor o igual a 120 segundos"
    filters: [abandono_r_120_mas: "Yes"]
  }

  measure: count_contestada_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "1- 01-09"
    label: "Cantidad Contestadas 01-09"
    description: "Cantidad de llamadas contestadas entre 1 y 9 segundos"
    filters: [contestada_1_9: "Yes"]
  }

  measure: count_contestada_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "2- 10-19"
    label: "Cantidad Contestadas 10-19"
    description: "Cantidad de llamadas contestadas entre 10 y 19 segundos"
    filters: [contestada_10_19: "Yes"]
  }

  measure: count_contestada_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "3- 20-29"
    label: "Cantidad Contestadas 20-29"
    description: "Cantidad de llamadas contestadas entre 20 y 29 segundos"
    filters: [contestada_20_29: "Yes"]
  }

  measure: count_contestada_30_39 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "4- 30-39"
    label: "Cantidad Contestadas 30-39"
    description: "Cantidad de llamadas contestadas entre 30 y 39 segundos"
    filters: [contestada_30_39: "Yes"]
  }

  measure: count_contestada_40_49 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "5- 40-49"
    label: "Cantidad Contestadas 40-49"
    description: "Cantidad de llamadas contestadas entre 40 y 49 segundos"
    filters: [contestada_40_49: "Yes"]
  }

  measure: count_contestada_50_59 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "6- 50-59"
    label: "Cantidad Contestadas 50-59"
    description: "Cantidad de llamadas contestadas entre 50 y 59 segundos"
    filters: [contestada_50_59: "Yes"]
  }

  measure: count_contestada_60_89 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "7- 60-89"
    label: "Cantidad Contestadas 60-89"
    description: "Cantidad de llamadas contestadas entre 60 y 89 segundos"
    filters: [contestada_60_89: "Yes"]
  }

  measure: count_contestada_90_119 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "8- 90-119"
    label: "Cantidad Contestadas 90-119"
    description: "Cantidad de llamadas contestadas entre 90 y 119 segundos"
    filters: [contestada_90_119: "Yes"]
  }

  measure: count_contestada_120_mas {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Contestada"
    group_item_label: "9- 120-Mas"
    label: "Cantidad Contestadas 120-Mas"
    description: "Cantidad de llamadas contestadas mayor o igual a 120 segundos"
    filters: [contestada_120_mas: "Yes"]
  }

  measure: count_llamada_corta_1_9 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    group_item_label: "1- 01-09"
    label: "Cantidad Cortas 1-9"
    description: "Cantidad de llamadas cortas entre 1 y 9 segundos"
    filters: [llamada_corta_1_9: "Yes"]
  }

  measure: count_llamadacorta_10_19 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    group_item_label: "2- 10-19"
    label: "Cantidad Cortas 10-19"
    description: "Cantidad de llamadas cortas entre 10 y 19 segundos"
    filters: [llamada_corta_10_19: "Yes"]
  }

  measure: count_llamadacorta_20_29 {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Llamada Corta"
    group_item_label: "3- 20-29"
    label: "Cantidad Cortas 20-29"
    description: "Cantidad de llamadas cortas entre 20 y 29 segundos"
    filters: [llamadacorta_20_29: "Yes"]
  }

  measure: count_llamadacortasrcid {
    type: count_distinct
    sql: ${interaction_resource_id};;
    group_label: "Cantidad"
    group_item_label: "Llamadas Cortas"
    label: "Cantidad Cortas"
    description: "Cantidad de llamadas clasificadas como cortas"
    filters: [llamada_cortasrcid: "Yes"]
  }

  measure: count_llamadas_transferidas {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Transferidas"
    label: "Transferidas"
    description: "Cantidad de veces que una llamada atendida es posteriormente transferida"
    filters: [
        estado_fin_atendidasrcid: "Yes"
      , technical_result_ag_srcid: "Transferred"
    ]
  }

  measure: count_llamadas_abandonadas_hold {
    type: count_distinct
    sql: ${interaction_resource_id} ;;
    group_label: "Cantidad"
    group_item_label: "Abandonadas Hold"
    label: "Abandonadas Hold"
    description: "Cantidad de veces que una llamada atendida es abandonada en hold"
    filters: [
        estado_fin_atendidasrcid: "Yes"
      , result_reason_ag_srcid: "AbandonedFromHold"
    ]
  }

  measure: total_customer_dial_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_dial_count} ;;
    group_label: "Customer Time"
    label: "Total DIAL_COUNT"
  }

  measure: total_customer_ring_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_ring_count};;
    group_label: "Customer Time"
    label: "Total RING_COUNT"
  }

  measure: total_customer_talk_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_talk_count} ;;
    group_label: "Customer Time"
    label: "Total TALK_COUNT"
  }

  measure: total_duration_call {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${duration_call} ;;
    group_label: "Total"
    group_item_label: "Duracion Llamada"
    label: "Total Duracion Llamada"
  }

  measure: total_t_duration_ag {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${t_duration_ag} ;;
    group_label: "Total"
    group_item_label: "Duracion AG"
    label: "TOTAL_T_DURATION_AG"
  }

  measure: total_customer_acw_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_acw_duration};;
    group_label: "Customer Time"
    label: "Total Tiempo Trabajo"
    description: "Es el tiempo total de trabajo despu??s que finaliza la llamada. (ACW_TIME)"
  }

  measure: total_customer_talk_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_talk_duration};;
    group_label: "Customer Time"
    label: "Total Tiempo Llamada"
    description: "Es el tiempo total que dura la llamada una vez que es atendida. (TALK_TIME)"
  }

  measure: total_customer_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_hold_duration};;
    group_label: "Customer Time"
    label: "Total Tiempo Espera"
    description: "Es el tiempo total de espera hasta que la llamada es atendida. (HOLD_TIME)"
  }

  measure: total_customer_ring_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_ring_duration};;
    group_label: "Customer Time"
    label: "Total RING_TIME"
  }

  measure: total_customer_dial_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_dial_duration};;
    group_label: "Customer Time"
    label: "Total DIAL_TIME"
  }

  measure: total_agent_to_agent_cons_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${agent_to_agent_cons_count};;
    group_label: "Agente"
    label: "Total AGENT_TO_AGENT_CONS_COUNT"
  }

  measure: total_agent_to_agent_cons_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${agent_to_agent_cons_duration};;
    group_label: "Agente"
    label: "Total AGENT_TO_AGENT_CONS_DURATION"
  }

  measure: total_conference_initiated_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conference_initiated_count};;
    group_label: "Conference"
    label: "Cantidad Inicios Conferencia"
    description: "Cuenta la cantidad de veces que se inicia una llamada en conferencia"
  }

  measure: total_conf_init_hold_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_init_hold_count};;
    group_label: "Conference"
    label: "Total CONF_INIT_HOLD_COUNT"
  }

  measure: total_conf_init_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_init_hold_duration};;
    group_label: "Conference"
    label: "Total CONF_INIT_HOLD_DURATION"
  }

  measure: total_conf_init_talk_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_init_talk_count};;
    group_label: "Conference"
    label: "Total CONF_INIT_TALK_COUNT"
  }

  measure: total_conf_init_talk_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_init_talk_duration};;
    group_label: "Conference"
    label: "Total CONF_INIT_TALK_DURATION"
  }

  measure: total_conf_join_hold_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_join_hold_count};;
    group_label: "Conference"
    label: "Total Tiempo Espera Conferencia"
    description: "Cuenta el tiempo en espera unido a la conferencia"
  }

  measure: total_conf_join_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_join_hold_duration};;
    group_label: "Conference"
    label: "Total CONF_JOIN_HOLD_DURATION"
  }

  measure: total_conf_join_ring_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_join_ring_count};;
    group_label: "Conference"
    label: "Total CONF_JOIN_RING_COUNT"
  }

  measure: total_conf_join_ring_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_join_ring_duration};;
    group_label: "Conference"
    label: "Total CONF_JOIN_RING_DURATION"
  }

  measure: total_conf_join_talk_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_join_talk_count};;
    group_label: "Conference"
    label: "Total CONF_JOIN_TALK_COUNT"
  }

  measure: total_conf_join_talk_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${conf_join_talk_duration};;
    group_label: "Conference"
    label: "Total CONF_JOIN_TALK_DURATION"
  }

  measure: total_cons_init_dial_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_init_dial_count};;
    group_label: "Cons"
    label: "Total CONS_INIT_DIAL_COUNT"
  }

  measure: total_cons_init_dial_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_init_dial_duration};;
    group_label: "Cons"
    label: "Total CONS_INIT_DIAL_DURATION"
  }

  measure: total_cons_init_hold_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_init_hold_count};;
    group_label: "Cons"
    label: "Total CONS_INIT_HOLD_COUNT"
  }

  measure: total_cons_init_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_init_hold_duration};;
    group_label: "Cons"
    label: "Total CONS_INIT_HOLD_DURATION"
  }

  measure: total_cons_init_talk_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_init_talk_count};;
    group_label: "Cons"
    label: "Total CONS_INIT_TALK_COUNT"
  }

  measure: total_cons_init_talk_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_init_talk_duration};;
    group_label: "Cons"
    label: "Total CONS_INIT_TALK_DURATION"
  }

  measure: total_cons_rcv_acw_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_acw_count};;
    group_label: "Cons"
    label: "Total CONS_RCV_ACW_COUNT"
  }

  measure: total_cons_rcv_acw_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_acw_duration};;
    group_label: "Cons"
    label: "Total CONS_RCV_ACW_DURATION"
  }

  measure: total_cons_rcv_hold_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_hold_count};;
    group_label: "Cons"
    label: "Total CONS_RCV_HOLD_COUNT"
  }

  measure: total_cons_rcv_hold_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_hold_duration};;
    group_label: "Cons"
    label: "Total CONS_RCV_HOLD_DURATION"
  }

  measure: total_cons_rcv_ring_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_ring_count};;
    group_label: "Cons"
    label: "Total CONS_RCV_RING_COUNT"
  }

  measure: total_cons_rcv_ring_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_ring_duration};;
    group_label: "Cons"
    label: "Total CONS_RCV_RING_DURATION"
  }

  measure: total_cons_rcv_talk_count {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${cons_rcv_talk_count};;
    group_label: "Cons"
    label: "Total CONS_RCV_TALK_COUNT"
  }

  measure: total_cons_rcv_talk_duration {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${cons_rcv_talk_duration} ;;
    group_label: "Cons"
    label: "Total CONS_RCV_TALK_DURATION"
  }

  measure: total_t_duration_vq {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id} ;;
    sql: ${t_duration_vq} ;;
    group_label: "Total"
    group_item_label: "Duracion VQ"
    label: "Total Duracion VQ"
  }

  measure: total_tiempo_llamada {
    type: sum_distinct
    sql_distinct_key: ${interaction_resource_id};;
    sql: ${customer_hold_duration} + ${customer_talk_duration} + ${customer_acw_duration} ;;
    group_label: "Total"
    group_item_label: "Tiempo Llamada"
    label: "Total Tiempo Llamada"
    description: "Es la suma total de los componentes de una llamada, se calcula mediante la suma de HOLD, TALK y ACW"
  }

  measure: num_tiempo_promedio_atencion {
    type: number
    sql:  ROUND((${total_t_duration_vq} / NULLIF(${count_estado_fin_atendidasrcid}, 0)), 2) ;;
    group_label: "KPI"
    label: "ASA"
    description: "Promedio de espera en segundos de una llamada para ser atendida."
  }

  measure: num_tiempo_medio_operativo_seg {
    type: number
    sql:  ROUND((${total_tiempo_llamada} / NULLIF(${count_estado_fin_atendidasrcid}, 0)), 2) ;;
    group_label: "KPI"
    label: "TMO seg"
    description: "Tiempo promedio operativo de una llamada en segundos. Incluye TALK+HOLD+ACW"
  }

  measure: num_tiempo_medio_operativo_min {
    type: number
    sql: ROUND(((${total_tiempo_llamada} / NULLIF(${count_estado_fin_atendidasrcid}, 0)) / 60), 2) ;;
    group_label: "KPI"
    label: "TMO min"
    description: "Tiempo promedio operativo de una llamada en minutos. Incluye TALK+HOLD+ACW"
  }

  measure: num_nivel_atencion {
    type: number
    sql:  ROUND(1.0*${count_estado_fin_atendidasrcid} / NULLIF(${count_estado_fin_recibidasrcid}, 0), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% Nivel Atencion"
    description: "Porcentaje de llamadas atendidas sobre total recibidas"
  }

  measure: num_nivel_abandono {
    type: number
    sql:  ROUND(1.0*${count_estado_fin_abandonadasrcid} / NULLIF(${count_estado_fin_recibidasrcid}, 0), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% Abandono"
    description: "Porcentaje de llamadas abandonadas sobre total recibidas"
  }

  measure: num_nivel_transferidas {
    type: number
    sql:  ROUND(1.0*${count_llamadas_transferidas} / NULLIF(${count_estado_fin_atendidasrcid}, 0), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% Transferidas"
    description: "Porcentaje de llamadas Transferidas sobre total de atendidas"
  }

  measure: num_nivel_servicio_0_30 {
    type: number
    sql:  ROUND(1.0*((${count_contestada_1_9} + ${count_contestada_10_19} + ${count_contestada_20_29}) / NULLIF(${count_estado_fin_recibidasrcid}, 0)), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% SL<30"
    description: "Porcentaje de llamadas atendidas antes de 30 segundos sobre total recibidas"
  }

  measure: num_nivel_servicio_0_60 {
    type: number
    sql:  ROUND(1.0*((${count_contestada_1_9} + ${count_contestada_10_19} + ${count_contestada_20_29} + ${count_contestada_30_39} + ${count_contestada_40_49} + ${count_contestada_50_59}) / NULLIF(${count_estado_fin_recibidasrcid}, 0)), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% SL<60"
    description: "Porcentaje de llamadas atendidas antes de 60 segundos sobre total recibidas"
  }

  measure: num_nivel_servicio_60_mas {
    type: number
    sql:  ROUND(1.0*((${count_estado_fin_atendidasrcid} - ${count_contestada_1_9} + ${count_contestada_10_19} + ${count_contestada_20_29} + ${count_contestada_30_39} + ${count_contestada_40_49} + ${count_contestada_50_59}) / NULLIF(${count_estado_fin_recibidasrcid}, 0)), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% SL>60"
    description: "Porcentaje de llamadas atendidas despues de 60 segundos sobre total recibidas"
  }

  measure: num_nivel_servicio_0_90 {
    type: number
    sql:  ROUND(1.0*((${count_contestada_1_9} + ${count_contestada_10_19} + ${count_contestada_20_29} + ${count_contestada_30_39} + ${count_contestada_40_49} + ${count_contestada_50_59} + ${count_contestada_60_89}) / NULLIF(${count_estado_fin_recibidasrcid}, 0)), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% SL<90"
    description: "Porcentaje de llamadas atendidas antes de 90 segundos sobre total recibidas"
  }

  measure: num_nivel_servicio_90_mas {
    type: number
    sql:  ROUND(1.0*((${count_estado_fin_atendidasrcid} - (${count_contestada_1_9} + ${count_contestada_10_19} + ${count_contestada_20_29} + ${count_contestada_30_39} + ${count_contestada_40_49} + ${count_contestada_50_59} + ${count_contestada_60_89})) / NULLIF(${count_estado_fin_recibidasrcid}, 0)), 2) ;;
    value_format_name: percent_2
    group_label: "KPI"
    label: "% SL>90"
    description: "Porcentaje de llamadas atendidas despues de 90 segundos sobre total recibidas"
  }
}
