view: dm_nomina {
  sql_table_name: @{gcp_ambiente}.DM_Nomina` ;;
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

  dimension_group: nomina_periodo_proceso {
    type: time
    timeframes: [
      date,
      month,
      month_name
    ]
    datatype: date
    sql: ${TABLE}.Nomina_PeriodoProceso ;;
    group_label: "Fecha Periodo Proceso"
    label: "Periodo Proceso"
    description: "Toma la fecha de ultima actualización del registro durante el mes en curso. Cuando cierra el mes deja por defecto el primer día del mes de cierre"
  }

  ## Strings

  dimension: nomina_canal {
    type: string
    sql: ${TABLE}.Nomina_Canal ;;
  }

  dimension: nomina_detalle_de_funcion {
    type: string
    sql: ${TABLE}.Nomina_Detalle_de_Funcion ;;
  }

  dimension: nomina_equipo_especifico {
    type: string
    sql: ${TABLE}.Nomina_Equipo_Especifico ;;
  }

  dimension: nomina_estados {
    type: string
    sql: ${TABLE}.Nomina_Estados ;;
  }

  dimension: nomina_funcion {
    type: string
    sql: ${TABLE}.Nomina_Funcion ;;
  }

  dimension: nomina_jefe_coordinador {
    type: string
    sql: ${TABLE}.Nomina_Jefe_Coordinador ;;
  }

  dimension: nomina_lider_supervisor_aux_assurance {
    type: string
    sql: ${TABLE}.Nomina_Lider_Supervisor_Aux_Assurance ;;
    label: "Nomina Lider"
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

  dimension: nomina_nombre_g1 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_G1 ;;
    label: "Nomina Nombre Gerente 1"
  }

  dimension: nomina_nombre_g2 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_G2 ;;
    label: "Nomina Nombre Gerente 2"
  }

  dimension: nomina_nombre_gerencia_1 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_Gerencia_1 ;;
  }

  dimension: nomina_nombre_gerencia_2 {
    type: string
    sql: ${TABLE}.Nomina_Nombre_Gerencia_2 ;;
  }

  dimension: nomina_propiedad {
    type: string
    sql: ${TABLE}.Nomina_Propiedad ;;
  }

  dimension: nomina_provincia {
    type: string
    sql: ${TABLE}.Nomina_Provincia ;;
  }

  dimension: nomina_punto_de_venta {
    type: string
    sql: ${TABLE}.Nomina_Punto_de_Venta ;;
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

  dimension: nomina_usuario_open {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Open ;;
  }

  dimension: nomina_usuario_open_anterior {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Open_Anterior ;;
  }

  dimension: nomina_usuario_teco {
    type: string
    sql: ${TABLE}.Nomina_Usuario_Teco ;;
  }

  ## Numbers

  dimension: nomina_horas_diarias {
    type: number
    sql: ${TABLE}.Nomina_Horas_Diarias ;;
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
