view: fth_retencion_fidelizacion {
  label: "Retencion y Fidelizacion"
  sql_table_name: @{gcp_ambiente}.FTH_RetencionFidelizacion`  ;;
  suggestions: no


## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.RetenFidePK ;;
  }

  ## Dates

  dimension: _fecha_creacion {
    type: date_time
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Ultima Actualizacion"
  }

  dimension: fecha_entidad {
    type: date
    datatype: date
    sql: ${TABLE}.FechaEntidad ;;
    label: "Fecha Entidad"
    description: "Indica la Fecha de Foto seleccionada"
  }

  dimension_group: o_fecha_activacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.FechaActivacion ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Activacion"
    label: "Orden Activacion"
    description: "Fecha de activación de la orden."
  }

  dimension_group: o_fecha_creacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.FechaCreacion ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Creacion"
    label: "Orden Creacion"
    description: "Fecha de Creacion de la orden."
  }

  dimension_group: o_fecha_ultima_mod {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.FechaUltimaMod ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Ultima Mod"
    label: "Orden Ultima Mod"
    description: "Fecha de ultima modificaicion de la orden."
  }

  dimension_group: o_plan_nuevo_fecha_fin {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.PlanNuevoFechaFin ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Fin Plan Nuevo"
    label: "Fin Plan Nuevo"
  }

  dimension_group: o_plan_nuevo_fechainicio {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.PlanNuevoFechainicio ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Inicio Plan Nuevo"
    label: "Inicio Plan Nuevo"
  }

  dimension_group: o_plan_original_fecha_fin {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.PlanOriginalFechaFin ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Fin Plan Original"
    label: "Fin Plan Original"
  }

  dimension_group: o_plan_original_fechainicio {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.PlanOriginalFechainicio ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Inicio Plan Original"
    label: "Inicio Plan Original"
  }

  dimension_group: pa_fecha_baja {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.ProductoAdquirido.Fechas.FechaBaja ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fecha Baja"
    label: "Baja"
  }

  dimension_group: fecha_cierre {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.FechaCierre ;;
    datatype: timestamp
    group_label: "Fecha Cierre"
    label: "Cierre"
    description: "Fecha de cierre del caso"
  }

  dimension_group: fecha_creacion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Fechas.FechaCreacion ;;
    datatype: timestamp
    group_label: "Fecha Creacion"
    label: "Creacion"
    description: "Fecha de creación del caso"
  }

  ## Strings

  dimension: alias_usuario_asignado {
    type: string
    sql: ${TABLE}.AliasUsuarioAsignado ;;
    group_label: "Usuario"
    label: "Alias Usuario Asignado"
  }

  dimension: asesoria_retencion {
    type: string
    sql: ${TABLE}.AsesoriaRetencion ;;
    label: "Asesoria Retencion"
    description: "Motivo de asesoramiento"
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.Canal ;;
    label: "Canal"
    description: "Canal de Atencion del caso"
  }

  dimension: canal_usuario_asignado {
    type: string
    sql: ${TABLE}.CanalUsuarioAsignado ;;
    group_label: "Punto de Venta"
    label: "Canal Usuario Asignado"
  }

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.CasoEstadoNombre ;;
    label: "Caso Estado"
    description: "Estado del Caso de Pedido de Baja/Fidelización"
  }

  dimension: ch_comentario_resolucion_hijo {
    type: string
    sql: ${TABLE}.CasoHijo.ComentarioResolucionHijo ;;
    view_label: "Caso Hijo"
    label: "Comentario Resolucion Hijo"
    description: "Comentario de resolución del caso hijo"
  }

  dimension: ch_estado_gestion_hijo {
    type: string
    sql: ${TABLE}.CasoHijo.EstadoGestionHijo ;;
    view_label: "Caso Hijo"
    label: "Estado Gestion Hijo"
    description: "Estado del caso hijo"
  }

  dimension: ch_numero_caso_hijo {
    type: string
    sql: ${TABLE}.CasoHijo.NumeroCasoHijo ;;
    view_label: "Caso Hijo"
    label: "Numero Caso Hijo"
    description: "Numero del caso hijo"
  }

  dimension: ch_numerocaso_padre {
    type: string
    sql: ${TABLE}.CasoHijo.NumerocasoPadre ;;
    view_label: "Caso Hijo"
    label: "Numero Caso Padre"
    description: "Número del caso padre intermedio"
  }

  dimension: ch_tipo_caso_hijo {
    type: string
    sql: ${TABLE}.CasoHijo.TipoCasoHijo ;;
    view_label: "Caso Hijo"
    label: "Tipo Caso Hijo"
    description: "Tipo del Caso Hijo"
  }

  dimension: caso_numero {
    type: string
    sql: ${TABLE}.CasoNumero ;;
    label: "Caso Numero"
    description: "Número de Caso de Pedido de Baja/Fidelización"
  }

  dimension: caso_tipo {
    type: string
    sql: ${TABLE}.CasoTipo ;;
    label: "Caso Tipo"
    description: "Tipo de Caso asociado a la Orden Retencion/Fidelización."
  }

  dimension: cc_ciclo_facturacion {
    type: string
    sql: ${TABLE}.CuentaCliente.CicloFacturacion ;;
    view_label: "Cuenta Cliente"
    label: "Ciclo Facturacion"
  }

  dimension: cc_razon_social {
    type: string
    sql: ${TABLE}.CuentaCliente.RazonSocial ;;
    view_label: "Cuenta Cliente"
    label: "Razon Social"
    description: "Razón social del cliente"
  }

  dimension: cc_seg_nivel1 {
    type: string
    sql: ${TABLE}.CuentaCliente.SegNivel1 ;;
    view_label: "Cuenta Cliente"
    label: "Seg Nivel 1"
    description: "Score del cliente"
  }

  dimension: cc_seg_nivel2 {
    type: string
    sql: ${TABLE}.CuentaCliente.SegNivel2 ;;
    view_label: "Cuenta Cliente"
    label: "Seg Nivel 2"
    description: "Segmento del producto"
  }

  dimension: cc_tipo_cuenta {
    type: string
    sql: ${TABLE}.CuentaCliente.TipoCuenta ;;
    view_label: "Cuenta Cliente"
    label: "Tipo Cuenta"
  }

  dimension: grupo_trabajo_usuario_asignado {
    type: string
    sql: ${TABLE}.GrupoTrabajoUsuarioAsignado ;;
    group_label: "Grupo Trabajo"
    label: "Usuario Asignado"
  }

  dimension: i_dninumero {
    type: string
    sql: ${TABLE}.Individuo.DNINumero ;;
    group_label: "Individuo"
    label: "DNI Numero"
    description: "Número de Documento Nacional de Identidad"
  }

  dimension: i_dnitipo {
    type: string
    sql: ${TABLE}.Individuo.DNITipo ;;
    group_label: "Individuo"
    label: "DNI Tipo"
  }

  dimension: motivo_baja {
    type: string
    sql: ${TABLE}.MotivoBaja ;;
    label: "Motivo Baja"
    description: "Motivo de Baja"
  }

  dimension: o_alias_usuario_mod {
    type: string
    sql: ${TABLE}.Orden.AliasUsuarioMod ;;
    view_label: "Orden"
    label: "Alias Usuario Mod"
    description: "Usuario que modificó la orden"
  }

  dimension: o_canal {
    type: string
    sql: ${TABLE}.Orden.Canal ;;
    view_label: "Orden"
    label: "Canal"
    description: "Canal de origen de la orden"
  }

  dimension: o_estado {
    type: string
    sql: ${TABLE}.Orden.Estado ;;
    view_label: "Orden"
    label: "Estado"
    description: "Estado de la Orden/Pedido"
  }

  dimension: o_gestion {
    type: string
    sql: ${TABLE}.Orden.Gestion ;;
    view_label: "Orden"
    label: "Gestion"
    description: "Tipo de Orden/Pedido"
  }

  dimension: o_internet_plan_original_producto_tipo {
    type: string
    sql: ${TABLE}.Orden.InternetPlanOriginalProductoTipo ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Internet Producto Tipo"
    description: "Familia del producto original"
  }

  dimension: o_internet_plan_original_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.InternetPlanOriginalProductoNombre ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Internet Producto Nombre"
    description: "Nombre del producto original"
  }

  dimension: o_internet_plan_original_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.InternetPlanOriginalProductoCodigo ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Internet Producto Codigo"
    description: "Codigo del producto original"
  }

  dimension: o_internet_plan_nuevo_producto_tipo {
    type: string
    sql: ${TABLE}.Orden.InternetPlanNuevoProductoTipo ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Internet Producto Tipo"
    description: "Familia del producto nuevo"
  }

  dimension: o_internet_plan_nuevo_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.InternetPlanNuevoProductoNombre ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Internet Producto Nombre"
    description: "Nombre del producto nuevo"
  }

  dimension: o_internet_plan_nuevo_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.InternetPlanNuevoProductoCodigo ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Internet Producto Codigo"
    description: "Codigo del producto nuevo"
  }

  dimension: o_numero {
    type: string
    sql: ${TABLE}.Orden.OrdenNumero ;;
    view_label: "Orden"
    label: "Orden Numero"
    description: "Número de Orden/Pedido"
  }

  dimension: o_plan_nuevo_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.PlanNuevoProductoCodigo ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Producto Codigo"
    description: "Código del producto nuevo"
  }

  dimension: o_plan_nuevo_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.PlanNuevoProductoNombre ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Producto Nombre"
    description: "Nombre del producto nuevo"
  }

  dimension: o_plan_nuevo_producto_tipo {
    type: string
    sql: ${TABLE}.Orden.PlanNuevoProductoTipo ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Producto Tipo"
  }

  dimension: o_plan_nuevo_promocion_nombre {
    type: string
    sql: ${TABLE}.Orden.PlanNuevoPromocionNombre ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "Promocion Nombre"
    description: "Promoción del producto nuevo"
  }

  dimension: o_plan_original_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.PlanOriginalProductoCodigo ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Producto Codigo"
    description: "Código del producto original"
  }

  dimension: o_plan_original_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.PlanOriginalProductoNombre ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Producto Nombre"
    description: "Nombre del producto original"
  }

  dimension: o_plan_original_producto_tipo {
    type: string
    sql: ${TABLE}.Orden.PlanOriginalProductoTipo ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Producto Tipo"
    description: "Familia de producto original"
  }

  dimension: o_plan_original_promocion_nombre {
    type: string
    sql: ${TABLE}.Orden.PlanOriginalPromocionNombre ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "Promocion Nombre"
  }

  dimension: o_subgestion {
    type: string
    sql: ${TABLE}.Orden.Subgestion ;;
    view_label: "Orden"
    label: "Subgestion"
    description: "Subtipo de baja del caso hijo"
  }

  dimension: o_subtipo {
    type: string
    sql: ${TABLE}.Orden.Subtipo ;;
    view_label: "Orden"
    label: "Subtipo"
    description: "Submotivo de baja"
  }

  dimension: o_tv_plan_original_producto_tipo {
    type: string
    sql: ${TABLE}.Orden.TVPlanOriginalProductoTipo ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "TV Producto Tipo"
    description: "Familia de producto original"
  }

  dimension: o_tv_plan_original_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.TVPlanOriginalProductoNombre ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "TV Producto Nombre"
    description: "Nombre del producto original"
  }

  dimension: o_tv_plan_original_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.TVPlanOriginalProductoCodigo ;;
    view_label: "Orden"
    group_label: "Plan Original"
    label: "TV Producto Codigo"
    description: "Codigo del producto original"
  }

  dimension: o_tv_plan_nuevo_producto_tipo {
    type: string
    sql: ${TABLE}.Orden.TVPlanNuevoProductoTipo ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "TV Producto Tipo"
    description: "Familia de producto nuevo"
  }

  dimension: o_tv_plan_nuevo_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.TVPlanNuevoProductoNombre ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "TV Producto Nombre"
    description: "Nombre del producto nuevo"
  }

  dimension: o_tv_plan_nuevo_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.TVPlanNuevoProductoCodigo ;;
    view_label: "Orden"
    group_label: "Plan Nuevo"
    label: "TV Producto Codigo"
    description: "Codigo del producto nuevo"
  }

  dimension: o_usuario_orden_alta_alias {
    type: string
    sql: ${TABLE}.Orden.UsuarioOrdenAltaAlias ;;
    view_label: "Orden"
    label: "Alias Usuario Alta"
    description: "Usuario que generó la orden"
  }

  dimension: o_usuario_orden_alta_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.Orden.UsuarioOrdenAltaGrupoTrabajoNombre ;;
    view_label: "Orden"
    label: " Grupo Trabajo Usuario Alta"
    description: "Grupo de trabajo del usuario que genero la orden"
  }

  dimension: o_usuario_orden_alta_punto_venta_canal {
    type: string
    sql: ${TABLE}.Orden.UsuarioOrdenAltaPuntoVentaCanal ;;
    view_label: "Orden"
    group_label: "Punto de Venta"
    label: "Canal Usuario Alta"
  }

  dimension: o_usuario_orden_alta_punto_venta_canal3 {
    type: string
    sql: ${TABLE}.Orden.UsuarioOrdenAltaPuntoVentaCanal3 ;;
    view_label: "Orden"
    group_label: "Punto de Venta"
    label: "Canal 3 Usuario Alta"
  }

  dimension: o_usuario_orden_alta_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.Orden.UsuarioOrdenAltaPuntoVentaDescripcion ;;
    view_label: "Orden"
    group_label: "Punto de Venta"
    label: "Punto Venta Usuario Alta"
    description: "Punto de Venta del usuario que genero la orden"
  }

  dimension: pa_estado_producto {
    type: string
    sql: ${TABLE}.ProductoAdquirido.EstadoProducto ;;
    view_label: "Producto Adquirido"
    label: "Estado Producto"
    description: "Estado del Producto"
  }

  dimension: pa_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.NumeroLinea ;;
    view_label: "Producto Adquirido"
    label: "Numero Linea"
    description: "Numero de Linea"
  }

  dimension: pa_subscripcion_id {
    type: string
    sql: ${TABLE}.ProductoAdquirido.SubscripcionId ;;
    view_label: "Producto Adquirido"
    label: "Subscripcion ID"
    description: "ID Subscripcion"
  }

  dimension: punto_venta_usuario_asignado {
    type: string
    sql: ${TABLE}.PuntoVentaUsuarioAsignado ;;
    group_label: "Punto de Venta"
    label: "Usuario Asignado"
  }

  dimension: resolucion_incidente {
    type: string
    sql: ${TABLE}.ResolucionIncidente ;;
    label: "Resolucion Incidente"
    description: "Resolución del Caso de Pedido de Baja/Fidelización"
  }

  dimension: resultado_retencion {
    type: string
    sql: ${TABLE}.ResultadoRetencion ;;
    label: "Resultado Retencion"
    description: "Resultado del Caso de Pedido de Baja/Fidelización"
  }

  dimension: submotivo_baja {
    type: string
    sql: ${TABLE}.SubmotivoBaja ;;
    label: "Submotivo de Baja"
    description: "Submotivo de baja"
  }

  dimension: subtipo {
    type: string
    sql: ${TABLE}.Subtipo ;;
    label: "Subtipo"
    description: "Subtipo de caso de Pedido de Baja/Fidelización"
  }

  dimension: tipo_caso_hijo {
    type: string
    sql: ${TABLE}.TipoCasoHijo ;;
    label: "Tipo Caso Hijo"
    description: "Tipo de caso del caso hijo intermedio"
  }

  dimension: usuario_caso_alta_alias {
    type: string
    sql: ${TABLE}.UsuarioCasoAltaAlias ;;
    group_label: "Usuario"
    label: "Alias Usuario Alta"
    description: "Usuario que registró el caso"
  }

  dimension: usuario_caso_alta_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.UsuarioCasoAltaGrupoTrabajoNombre ;;
    group_label: "Grupo Trabajo"
    label: "Usuario Alta"
    description: "Grupo de trabajo del usuario que registró el caso"
  }

  dimension: usuario_caso_alta_punto_venta_canal {
    type: string
    sql: ${TABLE}.UsuarioCasoAltaPuntoVentaCanal ;;
    group_label: "Punto de Venta"
    label: "Canal Usuario Alta"
    description: "Canal de Atención del  usuario que registró el caso"
  }

  dimension: usuario_caso_alta_punto_venta_canal3 {
    type: string
    sql: ${TABLE}.UsuarioCasoAltaPuntoVentaCanal3 ;;
    group_label: "Punto de Venta"
    label: "Canal 3 Usuario Alta"
  }

  dimension: usuario_caso_alta_punto_venta_descripcion {
    type: string
    sql: ${TABLE}.UsuarioCasoAltaPuntoVentaDescripcion ;;
    group_label: "Punto de Venta"
    label: "Usuario Alta"
    description: "Punto de Venta del usuario que registró el caso"
  }

  ## Flags

  dimension: canal3_usuario_asignado {
    type: yesno
    sql: ${TABLE}.Canal3UsuarioAsignado ;;
    label: "Canal 3 Usuario Asignado"
  }

  dimension: o_cambio {
    type: yesno
    sql: ${TABLE}.Orden.Cambio ;;
    view_label: "Orden"
    label: "Cambio"
    description: "Define si la Orden implica un cambio de producto (SI/NO)"
  }

  ## Number

  dimension: cc_codigo_cuenta {
    type: number
    sql: ${TABLE}.CuentaCliente.CodigoCuenta ;;
    view_label: "Cuenta Cliente"
    label: "Codigo Cuenta"
    description: "Numero de Cuenta"
  }

  ## Hidden
  dimension: o_plan_nuevo_valor_ajuste {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.PlanNuevoValorAjuste ;;
  }

  dimension: o_plan_nuevo_cargo_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.PlanNuevoCargoRecurrente ;;
  }

  dimension: o_plan_original_cargo_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.PlanOriginalCargoRecurrente ;;
  }

  dimension: o_plan_original_valor_ajuste {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.PlanOriginalValorAjuste ;;
  }

## Measures

  measure: count_retencion_fidelizacion {
    type: count
    label: "Cantidad "
  }

  measure: total_o_plan_nuevo_valor_ajuste {
    type: sum
    sql: ${o_plan_nuevo_valor_ajuste}  ;;
    value_format_name: decimal_2
    view_label: "Orden"
    group_label: "Total"
    label: "Plan Nuevo Valor Ajuste"
    description: "Valor ajuste (descuento) del producto nuevo"
  }

  measure: total_o_plan_nuevo_cargo_recurrente {
    type: sum
    sql: ${o_plan_nuevo_cargo_recurrente} ;;
    value_format_name: decimal_2
    view_label: "Orden"
    group_label: "Total"
    label: "Plan Nuevo Cargo Recurrente"
    description: "Cargo recurrente del producto nuevo"
  }

  measure: total_o_plan_original_cargo_recurrente {
    type: sum
    sql: ${o_plan_original_cargo_recurrente} ;;
    value_format_name: decimal_2
    view_label: "Orden"
    group_label: "Total"
    label: "Plan Original Cargo Recurrente"
    description: "Cargo recurrente del producto original"

  }

  measure: total_o_plan_original_valor_ajuste {
    type: sum
    sql: ${o_plan_original_valor_ajuste} ;;
    value_format_name: decimal_2
    view_label: "Orden"
    group_label: "Total"
    label: "Plan Original Valor Ajuste"
    description: "Valor ajuste (descuento) del producto original"
  }
}
