view: dm_nomina_d {
  sql_table_name: @{gcp_ambiente}.DM_NominaD` ;;
  suggestions: no
  label: "Nomina"

  ## Dimensions

    ## Primary Key

      ## PENDIENTE DEFINICON

    ## Dates

  dimension: fecha_proceso {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaProceso ;;
    group_label: "Fechas"
    group_item_label: "Proceso"
    label: "Fecha Proceso"
  }

  dimension: nomina_d_fecha_de_baja {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NominaD_Fecha_de_Baja ;;
    group_label: "Fechas"
    group_item_label: "Baja"
    label: "Fecha Baja"
  }

  dimension: nomina_d_fecha_ingreso {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NominaD_Fecha_Ingreso ;;
    group_label: "Fechas"
    group_item_label: "Ingreso"
    label: "Fecha Ingreso"
  }

  dimension: nomina_d_fecha_ingreso_linea {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NominaD_Fecha_Ingreso_Linea ;;
    group_label: "Fechas"
    group_item_label: "Ingreso Linea"
    label: "Fecha Ingreso Linea"
  }

  dimension: nomina_d_fecha_nac {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NominaD_Fecha_Nac ;;
    group_label: "Fechas"
    group_item_label: "Nacimiento"
    label: "Fecha Nacimiento"
  }

  dimension: nomina_d_fecha_pase_pcrc {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NominaD_Fecha_Pase_Pcrc ;;
    group_label: "Fechas"
    group_item_label: "Pase PCRC"
    label: "Fecha Pase PCRC"
  }

    ## Flags

  dimension: nomina_d_activos {
    type: yesno
    sql: ${TABLE}.NominaD_Activos ;;
    group_label: "Marcas"
    label: "Es Activo"
  }

    ## Strings

  dimension: nomina_d_afectacion_parcial {
    type: string
    sql: ${TABLE}.NominaD_Afectacion_Parcial ;;
    label: "Afectacion Parcial"
  }

  dimension: nomina_d_asegurado {
    type: string
    sql: ${TABLE}.NominaD_Asegurado ;;
    label: "Asegurado"
  }

  dimension: nomina_d_canal {
    type: string
    sql: ${TABLE}.NominaD_Canal ;;
    label: "Canal"
  }

  dimension: nomina_d_centro_de_costos {
    type: string
    sql: ${TABLE}.NominaD_Centro_de_Costos ;;
    label: "Centro Costos"
  }

  dimension: nomina_d_codigo_de_actor1 {
    type: string
    sql: ${TABLE}.NominaD_Codigo_de_Actor1 ;;
    label: "Codigo Actor 1"
  }

  dimension: nomina_d_codigo_de_actor2 {
    type: string
    sql: ${TABLE}.NominaD_Codigo_de_Actor2 ;;
    label: "Codigo Actor 2"
  }

  dimension: nomina_d_columna1 {
    type: string
    sql: ${TABLE}.NominaD_Columna1 ;;
    label: "Custom 1"
  }

  dimension: nomina_d_columna2 {
    type: string
    sql: ${TABLE}.NominaD_Columna2 ;;
    label: "Custom 2"
  }

  dimension: nomina_d_columna3 {
    type: string
    sql: ${TABLE}.NominaD_Columna3 ;;
    label: "Custom 3"
  }

  dimension: nomina_d_convenio {
    type: string
    sql: ${TABLE}.NominaD_Convenio ;;
    label: "Convenio"
  }

  dimension: nomina_d_detalle_de_funcion {
    type: string
    sql: ${TABLE}.NominaD_Detalle_de_Funcion ;;
    label: "Detalle Funcion"
  }

  dimension: nomina_d_edificio_laboral {
    type: string
    sql: ${TABLE}.NominaD_Edificio_Laboral ;;
    label: "Edificio Laboral"
  }

  dimension: nomina_d_empresa {
    type: string
    sql: ${TABLE}.NominaD_Empresa ;;
    label: "Empresa"
  }

  dimension: nomina_d_equipo_especifico {
    type: string
    sql: ${TABLE}.NominaD_Equipo_Especifico ;;
    label: "Equipo Especifico"
  }

  dimension: nomina_d_equipo_siebel_movil {
    type: string
    sql: ${TABLE}.NominaD_Equipo_Siebel_Movil ;;
    label: "Equipo Siebel Movil"
  }

  dimension: nomina_d_estado_colaborador {
    type: string
    sql: ${TABLE}.NominaD_Estado_Colaborador ;;
    label: "Estado Colaborador"
  }

  dimension: nomina_d_estados {
    type: string
    sql: ${TABLE}.NominaD_Estados ;;
    label: "Estados"
  }

  dimension: nomina_d_funcion {
    type: string
    sql: ${TABLE}.NominaD_Funcion ;;
    label: "Funcion"
  }

  dimension: nomina_d_hora_egreso {
    type: string
    sql: ${TABLE}.NominaD_Hora_Egreso ;;
    label: "Hora Egreso"
  }

  dimension: nomina_d_hora_ingreso {
    type: string
    sql: ${TABLE}.NominaD_Hora_Ingreso ;;
    label: "Hora Ingreso"
  }

  dimension: nomina_d_id_avaya {
    type: string
    sql: ${TABLE}.NominaD_ID_Avaya ;;
    label: "Avaya Id"
  }

  dimension: nomina_d_id_open {
    type: string
    sql: ${TABLE}.NominaD_ID_Open ;;
    label: "Open Id"
  }

  dimension: nomina_d_jefe_coordinador {
    type: string
    sql: ${TABLE}.NominaD_Jefe_Coordinador ;;
    label: "Jefe Coordinador"
  }

  dimension: nomina_d_legajo_ex_cable {
    type: string
    sql: ${TABLE}.NominaD_Legajo_ex_Cable ;;
    label: "Legajo Ex Cable"
  }

  dimension: nomina_d_legajo_sup_directo {
    type: string
    sql: ${TABLE}.NominaD_Legajo_Sup_Directo ;;
    label: "Legajo Supervisor Directo"
  }

  dimension: nomina_d_lider_supervisor_aux_assurance {
    type: string
    sql: ${TABLE}.NominaD_Lider_Supervisor_Aux_Assurance ;;
    label: "Lider Supervisor Aux Assurance"
  }

  dimension: nomina_d_mail {
    type: string
    sql: ${TABLE}.NominaD_Mail ;;
    label: "Mail"
  }

  dimension: nomina_d_motivo_asegurado {
    type: string
    sql: ${TABLE}.NominaD_Motivo_Asegurado ;;
    label: "Motivo Asegurado"
  }

  dimension: nomina_d_motivo_de_baja {
    type: string
    sql: ${TABLE}.NominaD_Motivo_de_Baja ;;
    label: "Motivo Baja"
  }

  dimension: nomina_d_motivo_ingreso {
    type: string
    sql: ${TABLE}.NominaD_Motivo_Ingreso ;;
    label: "Motivo Ingreso"
  }

  dimension: nomina_d_negocio {
    type: string
    sql: ${TABLE}.NominaD_Negocio ;;
    label: "Negocio"
  }

  dimension: nomina_d_nombre {
    type: string
    sql: ${TABLE}.NominaD_Nombre ;;
    label: "Nombre"
  }

  dimension: nomina_d_nombre_avaya {
    type: string
    sql: ${TABLE}.NominaD_Nombre_Avaya ;;
    label: "Avaya"
  }

  dimension: nomina_d_nombre_g1 {
    type: string
    sql: ${TABLE}.NominaD_Nombre_G1 ;;
    label: "G1"
  }

  dimension: nomina_d_nombre_g2 {
    type: string
    sql: ${TABLE}.NominaD_Nombre_G2 ;;
    label: "G2"
  }

  dimension: nomina_d_nombre_gerencia_1 {
    type: string
    sql: ${TABLE}.NominaD_Nombre_Gerencia_1 ;;
    label: "Gerencia 1"
  }

  dimension: nomina_d_nombre_gerencia_2 {
    type: string
    sql: ${TABLE}.NominaD_Nombre_Gerencia_2 ;;
    label: "Gerencia 2"
  }

  dimension: nomina_d_numero_unidad_org {
    type: string
    sql: ${TABLE}.NominaD_Numero_Unidad_Org ;;
    label: "Unidad Org"
  }

  dimension: nomina_d_propiedad {
    type: string
    sql: ${TABLE}.NominaD_Propiedad ;;
    label: "Propiedad"
  }

  dimension: nomina_d_provincia {
    type: string
    sql: ${TABLE}.NominaD_Provincia ;;
    label: "Provincia"
  }

  dimension: nomina_d_provincia_origen {
    type: string
    sql: ${TABLE}.NominaD_Provincia_Origen ;;
    label: "Provincia Origen"
  }

  dimension: nomina_d_punto_de_venta {
    type: string
    sql: ${TABLE}.NominaD_Punto_de_Venta ;;
    label: "Punto Venta"
  }

  dimension: nomina_d_razon_social {
    type: string
    sql: ${TABLE}.NominaD_Razon_Social ;;
    label: "Razon Social"
  }

  dimension: nomina_d_region {
    type: string
    sql: ${TABLE}.NominaD_Region ;;
    label: "Region"
  }

  dimension: nomina_d_responsable {
    type: string
    sql: ${TABLE}.NominaD_Responsable ;;
    label: "Responsable"
  }

  dimension: nomina_d_sector {
    type: string
    sql: ${TABLE}.NominaD_Sector ;;
    label: "Sector"
  }

  dimension: nomina_d_segmentacion {
    type: string
    sql: ${TABLE}.NominaD_Segmentacion ;;
    label: "Segmentacion"
  }

  dimension: nomina_d_sexo {
    type: string
    sql: ${TABLE}.NominaD_Sexo ;;
    label: "Sexo"
  }

  dimension: nomina_d_sitio {
    type: string
    sql: ${TABLE}.NominaD_Sitio ;;
    label: "Sitio"
  }

  dimension: nomina_d_subregion {
    type: string
    sql: ${TABLE}.NominaD_Subregion ;;
    label: "Subregion"
  }

  dimension: nomina_d_supervisor {
    type: string
    sql: ${TABLE}.NominaD_Supervisor ;;
    label: "Supervisor"
  }

  dimension: nomina_d_turno {
    type: string
    sql: ${TABLE}.NominaD_Turno ;;
    label: "Turno"
  }

  dimension: nomina_d_usuario_celsis {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Celsis ;;
    group_label: "Usuario"
    group_item_label: "Celsis"
    label: "Usuario Celsis"
  }

  dimension: nomina_d_usuario_eflow {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Eflow ;;
    group_label: "Usuario"
    group_item_label: "Eflow"
    label: "Usuario Eflow"
  }

  dimension: nomina_d_usuario_ememo {
    type: string
    sql: ${TABLE}.NominaD_Usuario_EMEMO ;;
    group_label: "Usuario"
    group_item_label: "EMEMO"
    label: "Usuario EMEMO"
  }

  dimension: nomina_d_usuario_genesis {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Genesis ;;
    group_label: "Usuario"
    group_item_label: "Genesys"
    label: "Usuario Genesys"
  }

  dimension: nomina_d_usuario_nice {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Nice ;;
    group_label: "Usuario"
    group_item_label: "Nice"
    label: "Usuario Nice"
  }

  dimension: nomina_d_usuario_nt {
    type: string
    sql: ${TABLE}.NominaD_Usuario_NT ;;
    group_label: "Usuario"
    group_item_label: "NT"
    label: "Usuario NT"
  }

  dimension: nomina_d_usuario_open {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Open ;;
    group_label: "Usuario"
    group_item_label: "Open"
    label: "Usuario Open"
  }

  dimension: nomina_d_usuario_open_anterior {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Open_Anterior ;;
    group_label: "Usuario"
    group_item_label: "Open Anterior"
    label: "Usuario Open Anterior"
  }

  dimension: nomina_d_usuario_pic {
    type: string
    sql: ${TABLE}.NominaD_Usuario_PIC ;;
    group_label: "Usuario"
    group_item_label: "PIC"
    label: "Usuario PIC"
  }

  dimension: nomina_d_usuario_rn {
    type: string
    sql: ${TABLE}.NominaD_Usuario_RN ;;
    group_label: "Usuario"
    group_item_label: "RN"
    label: "Usuario RN"
  }

  dimension: nomina_d_usuario_siebel_fija {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Siebel_Fija ;;
    group_label: "Usuario"
    group_item_label: "Siebel Fija"
    label: "Usuario Siebel Fija"
  }

  dimension: nomina_d_usuario_siebel_movil_net1 {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Siebel_Movil_Net1 ;;
    group_label: "Usuario"
    group_item_label: "Siebel Movil Net 1"
    label: "Usuario Siebel Movil Net 1"
  }

  dimension: nomina_d_usuario_siebel_movil_net2 {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Siebel_Movil_Net2 ;;
    group_label: "Usuario"
    group_item_label: "Sievel Movil Net 2"
    label: "Usuario Siebel Movil Net 2"
  }

  dimension: nomina_d_usuario_teco {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Teco ;;
    group_label: "Usuario"
    group_item_label: "Teco"
    label: "Usuario Teco"
  }

  dimension: nomina_d_usuario_veraz {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Veraz ;;
    group_label: "Usuario"
    group_item_label: "Veraz"
    label: "Usuario Veraz"
  }

  dimension: nomina_d_usuario_watchdog {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Watchdog ;;
    group_label: "Usuario"
    group_item_label: "Watchdog"
    label: "Usuario Watchdog"
  }

  dimension: nomina_d_usuario_yoizen {
    type: string
    sql: ${TABLE}.NominaD_Usuario_Yoizen ;;
    group_label: "Usuario"
    group_item_label: "Yoizen"
    label: "Usuario Yoizen"
  }

    ## Numbers

  dimension: nomina_d_cuil {
    type: number
    sql: ${TABLE}.NominaD_CUIL ;;
    label: "CUIL"
  }

  dimension: nomina_d_legajo {
    type: number
    sql: ${TABLE}.NominaD_Legajo ;;
    label: "Legajo"
  }

  dimension: nomina_d_horas_diarias {
    type: number
    sql: ${TABLE}.NominaD_Horas_Diarias ;;
    label: "Horas Diarias"
  }

  dimension: nomina_d_horas_semanales {
    type: number
    sql: ${TABLE}.NominaD_Horas_Semanales ;;
    label: "Horas Semanales"
  }

  ## Measures

  measure: count {
    type: count
    drill_fields: []
  }
}