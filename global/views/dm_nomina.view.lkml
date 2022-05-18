view: dm_nomina {
  sql_table_name: `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.DM_Nomina` ;;
  label: "Nomina"

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.Nomina_PeriodoProcesoUsuarioPK ;;
  }

  ## Dates

  dimension: nomina_fecha_de_baja {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Nomina_Fecha_de_Baja ;;
  }

  dimension: nomina_fecha_ingreso {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Nomina_Fecha_Ingreso ;;
  }

  dimension: nomina_fecha_ingreso_linea {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Nomina_Fecha_Ingreso_Linea ;;
  }

  dimension: nomina_fecha_nac {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Nomina_Fecha_Nac ;;
  }

  dimension: nomina_fecha_pase_pcrc {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Nomina_Fecha_Pase_Pcrc ;;
  }

  dimension: nomina_periodo_proceso {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Nomina_PeriodoProceso ;;
  }

  ## Flags

  dimension: nomina_activos {
    type: yesno
    sql: ${TABLE}.Nomina_Activos ;;
    label: "Es Activo"
  }

  ## Strings

  dimension: nomina_afectacion_parcial {
    type: string
    sql: ${TABLE}.Nomina_Afectacion_Parcial ;;
  }

  dimension: nomina_asegurado {
    type: string
    sql: ${TABLE}.Nomina_Asegurado ;;
  }

  dimension: nomina_canal {
    type: string
    sql: ${TABLE}.Nomina_Canal ;;
  }

  dimension: nomina_centro_de_costos {
    type: string
    sql: ${TABLE}.Nomina_Centro_de_Costos ;;
  }

  dimension: nomina_codigo_de_actor1 {
    type: string
    sql: ${TABLE}.Nomina_Codigo_de_Actor1 ;;
  }

  dimension: nomina_codigo_de_actor2 {
    type: string
    sql: ${TABLE}.Nomina_Codigo_de_Actor2 ;;
  }

  dimension: nomina_columna1 {
    type: string
    sql: ${TABLE}.Nomina_Columna1 ;;
  }

  dimension: nomina_columna2 {
    type: string
    sql: ${TABLE}.Nomina_Columna2 ;;
  }

  dimension: nomina_columna3 {
    type: string
    sql: ${TABLE}.Nomina_Columna3 ;;
  }

  dimension: nomina_convenio {
    type: string
    sql: ${TABLE}.Nomina_Convenio ;;
  }

  dimension: nomina_detalle_de_funcion {
    type: string
    sql: ${TABLE}.Nomina_Detalle_de_Funcion ;;
  }

  dimension: nomina_edificio_laboral {
    type: string
    sql: ${TABLE}.Nomina_Edificio_Laboral ;;
  }

  dimension: nomina_empresa {
    type: string
    sql: ${TABLE}.Nomina_Empresa ;;
  }

  dimension: nomina_equipo_especifico {
    type: string
    sql: ${TABLE}.Nomina_Equipo_Especifico ;;
  }

  dimension: nomina_equipo_siebel_movil {
    type: string
    sql: ${TABLE}.Nomina_Equipo_Siebel_Movil ;;
  }

  dimension: nomina_estado_colaborador {
    type: string
    sql: ${TABLE}.Nomina_Estado_Colaborador ;;
  }

  dimension: nomina_estados {
    type: string
    sql: ${TABLE}.Nomina_Estados ;;
  }

  dimension: nomina_funcion {
    type: string
    sql: ${TABLE}.Nomina_Funcion ;;
  }

  dimension: nomina_hora_egreso {
    type: string
    sql: ${TABLE}.Nomina_Hora_Egreso ;;
  }

  dimension: nomina_hora_ingreso {
    type: string
    sql: ${TABLE}.Nomina_Hora_Ingreso ;;
  }

  dimension: nomina_id_avaya {
    type: string
    sql: ${TABLE}.Nomina_ID_Avaya ;;
  }

  dimension: nomina_id_open {
    type: string
    sql: ${TABLE}.Nomina_ID_Open ;;
  }

  dimension: nomina_jefe_coordinador {
    type: string
    sql: ${TABLE}.Nomina_Jefe_Coordinador ;;
  }

  dimension: nomina_legajo_ex_cable {
    type: string
    sql: ${TABLE}.Nomina_Legajo_ex_Cable ;;
  }

  dimension: nomina_legajo_sup_directo {
    type: string
    sql: ${TABLE}.Nomina_Legajo_Sup_Directo ;;
  }

  dimension: nomina_lider_supervisor_aux_assurance {
    type: string
    sql: ${TABLE}.Nomina_Lider_Supervisor_Aux_Assurance ;;
  }

  dimension: nomina_mail {
    type: string
    sql: ${TABLE}.Nomina_Mail ;;
  }

  dimension: nomina_motivo_asegurado {
    type: string
    sql: ${TABLE}.Nomina_Motivo_Asegurado ;;
  }

  dimension: nomina_motivo_de_baja {
    type: string
    sql: ${TABLE}.Nomina_Motivo_de_Baja ;;
  }

  dimension: nomina_motivo_ingreso {
    type: string
    sql: ${TABLE}.Nomina_Motivo_Ingreso ;;
  }

  dimension: nomina_negocio {
    type: string
    sql: ${TABLE}.Nomina_Negocio ;;
  }

  dimension: nomina_nombre {
    type: string
    sql: ${TABLE}.Nomina_Nombre ;;
  }

  dimension: nomina_nombre_avaya {
    type: string
    sql: ${TABLE}.Nomina_Nombre_Avaya ;;
  }

  dimension: nomina_nombre_g1 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_G1 ;;
  }

  dimension: nomina_nombre_g2 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_G2 ;;
  }

  dimension: nomina_nombre_gerencia_1 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_Gerencia_1 ;;
  }

  dimension: nomina_nombre_gerencia_2 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_Gerencia_2 ;;
  }

  dimension: nomina_numero_unidad_org {
    type: string
    sql: ${TABLE}.Nomina_Numero_Unidad_Org ;;
  }

  dimension: nomina_propiedad {
    type: string
    sql: ${TABLE}.Nomina_Propiedad ;;
  }

  dimension: nomina_provincia {
    type: string
    sql: ${TABLE}.Nomina_Provincia ;;
  }

  dimension: nomina_provincia_origen {
    type: string
    sql: ${TABLE}.Nomina_Provincia_Origen ;;
  }

  dimension: nomina_punto_de_venta {
    type: string
    sql: ${TABLE}.Nomina_Punto_de_Venta ;;
  }

  dimension: nomina_razon_social {
    type: string
    sql: ${TABLE}.Nomina_Razon_Social ;;
  }

  dimension: nomina_region {
    type: string
    sql: ${TABLE}.Nomina_Region ;;
  }

  dimension: nomina_responsable {
    type: string
    sql: ${TABLE}.Nomina_Responsable ;;
  }

  dimension: nomina_sector {
    type: string
    sql: ${TABLE}.Nomina_Sector ;;
  }

  dimension: nomina_segmentacion {
    type: string
    sql: ${TABLE}.Nomina_Segmentacion ;;
  }

  dimension: nomina_sexo {
    type: string
    sql: ${TABLE}.Nomina_Sexo ;;
  }

  dimension: nomina_sitio {
    type: string
    sql: ${TABLE}.Nomina_Sitio ;;
  }

  dimension: nomina_subregion {
    type: string
    sql: ${TABLE}.Nomina_Subregion ;;
  }

  dimension: nomina_supervisor {
    type: string
    sql: ${TABLE}.Nomina_Supervisor ;;
  }

  dimension: nomina_turno {
    type: string
    sql: ${TABLE}.Nomina_Turno ;;
  }

  dimension: nomina_usuario_celsis {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Celsis ;;
  }

  dimension: nomina_usuario_eflow {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Eflow ;;
  }

  dimension: nomina_usuario_ememo {
    type: string
    sql: ${TABLE}.Nomina_Usuario_EMEMO ;;
  }

  dimension: nomina_usuario_genesis {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Genesis ;;
  }

  dimension: nomina_usuario_nice {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Nice ;;
  }

  dimension: nomina_usuario_nt {
    type: string
    sql: ${TABLE}.Nomina_Usuario_NT ;;
  }

  dimension: nomina_usuario_open {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Open ;;
  }

  dimension: nomina_usuario_open_anterior {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Open_Anterior ;;
  }

  dimension: nomina_usuario_pic {
    type: string
    sql: ${TABLE}.Nomina_Usuario_PIC ;;
  }

  dimension: nomina_usuario_rn {
    type: string
    sql: ${TABLE}.Nomina_Usuario_RN ;;
  }

  dimension: nomina_usuario_siebel_fija {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Siebel_Fija ;;
  }

  dimension: nomina_usuario_siebel_movil_net1 {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Siebel_Movil_Net1 ;;
  }

  dimension: nomina_usuario_siebel_movil_net2 {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Siebel_Movil_Net2 ;;
  }

  dimension: nomina_usuario_teco {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Teco ;;
  }

  dimension: nomina_usuario_veraz {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Veraz ;;
  }

  dimension: nomina_usuario_watchdog {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Watchdog ;;
  }

  dimension: nomina_usuario_yoizen {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Yoizen ;;
  }

  ## Numbers

  dimension: nomina_horas_diarias {
    type: number
    sql: ${TABLE}.Nomina_Horas_Diarias ;;
  }

  dimension: nomina_cuil {
    type: number
    sql: ${TABLE}.Nomina_CUIL ;;
  }

  dimension: nomina_horas_semanales {
    type: number
    sql: ${TABLE}.Nomina_Horas_Semanales ;;
  }

  dimension: nomina_legajo {
    type: number
    sql: ${TABLE}.Nomina_Legajo ;;
  }

## Measures


}
