view: fth_orden {
  label: "Orden Item"
  sql_table_name: @{gcp_ambiente}.FTH_Orden` ;;
  suggestions: no

## Filters

  filter: ultimo_cierre {
    view_label: "Cierres"
    type: yesno
    sql: ${fth_orden.fecha_entidad} = ${lk_ultimo_cierre_orden.ultimo_cierre}  ;;
    label: "Ultimo Cierre"
    description: "Filtra los datos a partir del ultimo cierre disponible"
  }

## Dimensions

  ################
  ## Orden Item ##
  ################

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.OrdenItemPK ;;
  }

  ## Nested Fields

  dimension: medio_pago {
    hidden: yes
    sql: ${TABLE}.MedioPago ;;
  }

  dimension: promocion {
    hidden: yes
    sql: ${TABLE}.promocion ;;
  }

  ## Dates

  dimension: fecha_entidad {
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    datatype: date
    label: "Fecha Cierre"
    description: "Se utiliza para consultar el estado de los datos al cierre de un dia determinado donde cada dia contiene la totalidad de los registros historicos almacenados hasta esa fecha."
  }

  dimension_group: orden_item_fecha_creacion_src {
    type: time
    sql: ${TABLE}.Fechas.OrdenItemFechaCreacionSRC ;;
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
    datatype: timestamp
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: orden_item_fecha_modificacion_src {
    type: time
    sql: ${TABLE}.Fechas.OrdenItemFechaModificacionSRC ;;
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
    datatype: timestamp
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  dimension: _fecha_creacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._auditoria._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
    datatype: timestamp
    sql: ${TABLE}._auditoria._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Actualizacion"
  }

  ## Flags

  dimension: orden_item_marca_facturable {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenItemMarcaFacturable ;;
    group_label: "Marcas"
    group_item_label: "Facturable"
    label: "Es Facturable"
  }

  dimension: orden_item_marca_no_provisionable {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenItemMarcaNoProvisionable ;;
    group_label: "Marcas"
    group_item_label: "No Provisionable"
    label: "Es No Provisionable"
  }

  dimension: orden_item_requiere_cambio_dispositivo {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenItemRequiereCambioDispositivo ;;
    group_label: "Marcas"
    group_item_label: "Cambio Dispositivo"
    label: "Es Cambio Dispositivo"
  }

  ## Strings

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._auditoria._sesionId ;;
    view_label: "Auditoria"
    label: "Sesion ID"
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioCreacion ;;
    view_label: "Auditoria"
    label: "Usuario Creacion"
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._auditoria._usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Modificacion"
  }

  dimension: orden_item_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_item_estado_provisionamiento.orden_item_estado_provisionamiento_nombre
    label: "Estado Provisionamiento"
  }

  dimension: orden_item_estado_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoNombre ;;
    suggest_dimension: lk_orden_item_estado.orden_item_estado_nombre
    label: "Estado"
  }

  dimension: orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion.orden_item_accion_nombre
    label: "Accion"
  }

  dimension: orden_item_sub_accion_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubAccionNombre ;;
    suggest_dimension: lk_orden_item_sub_accion.orden_item_sub_accion_nombre
    label: "Subaccion"
  }

  dimension: orden_item_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.OrdenItemSubMotivoBajaNombre ;;
    suggest_dimension: lk_orden_item_sub_motivo_baja.orden_item_sub_motivo_baja_nombre
    label: "Submotivo Baja"
  }

  dimension: orden_item_codigo_deposito {
    type: string
    sql: ${TABLE}.OrdenItemCodigoDeposito ;;
    label: "Codigo Deposito"
  }

  dimension: orden_item_codigo_operacion {
    type: string
    sql: ${TABLE}.OrdenItemCodigoOperacion ;;
    label: "Codigo Operacion"
  }

  dimension: orden_item_estado_stock_nombre {
    type: string
    sql: ${TABLE}.OrdenItemEstadoStockNombre ;;
    label: "Estado Stock"
  }

  dimension: orden_item_instancia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemInstanciaSRCId ;;
    label: "Instancia"
  }

  dimension: orden_item_nmu {
    type: string
    sql: ${TABLE}.OrdenItemNMU ;;
    label: "NMU"
  }

  dimension: orden_item_numero {
    type: string
    sql: ${TABLE}.OrdenItemNumero ;;
    label: "Numero"
  }

  dimension: orden_item_numero_secuencia {
    type: string
    sql: ${TABLE}.OrdenItemNumeroSecuencia ;;
    label: "Numero Secuencia"
  }

  dimension: orden_item_numero_serie {
    type: string
    sql: ${TABLE}.OrdenItemNumeroSerie ;;
    label: "Numero Serie"
  }

  dimension: orden_item_producto_padre_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemProductoPadreSRCId ;;
    label: "Producto Padre"
  }

  dimension: orden_item_producto_raiz_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemProductoRaizSRCId ;;
    label: "Producto Raiz"
  }

  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
    label: "ID"
  }

  dimension: orden_item_ya_suspendido {
    type: string
    sql: ${TABLE}.OrdenItemYaSuspendido ;;
    label: "Ya Suspendido"
  }

  ## Numbers

  dimension: origen_srcid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OrigenSRCId ;;
    label: "Origen"
  }

  ## Hidden

  dimension: orden_item_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoSK ;;
  }

  dimension: orden_item_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_item_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenItemEstadoSK ;;
  }

  dimension: orden_item_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemEstadoSRCId ;;
  }

  dimension: orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenItemAccionSK ;;
  }

  dimension: orden_item_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemAccionSRCId ;;
  }

  dimension: orden_item_sub_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenItemSubAccionSK ;;
  }

  dimension: orden_item_sub_accion_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSubAccionSRCId ;;
    hidden: yes
  }

  dimension: orden_item_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenItemSubMotivoBajaSK ;;
  }

  dimension: orden_item_sub_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenItemSubMotivoBajaSRCId ;;
  }

  dimension: orden_item_cantidad {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemCantidad ;;
  }

  dimension: orden_item_cargo_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemCargoRecurrente ;;
  }

  dimension: orden_item_cargo_recurrente_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemCargoRecurrenteSinImpuesto ;;
  }

  dimension: orden_item_cargo_unica_vez {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemCargoUnicaVez ;;
  }

  dimension: orden_item_precio_calculado_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioCalculadoRecurrente ;;
  }

  dimension: orden_item_precio_calculado_recurrente_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioCalculadoRecurrenteSinImpuesto ;;
  }

  dimension: orden_item_precio_dcto_unica_vez {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioDctoUnicaVez ;;
  }

  dimension: orden_item_precio_dcto_unica_vez_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioDctoUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_precio_efectivo_unica_vez {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioEfectivoUnicaVez ;;
  }

  dimension: orden_item_precio_efectivo_unica_vez_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioEfectivoUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_precio_lista {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioLista ;;
  }

  dimension: orden_item_precio_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioRecurrente ;;
  }

  dimension: orden_item_precio_recurrente_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioRecurrenteSinImpuesto ;;
  }

  dimension: orden_item_precio_total_unica_vez {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioTotalUnicaVez ;;
  }
  dimension: orden_item_precio_total_unica_vez_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioTotalUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_precio_unitario {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemPrecioUnitario ;;
  }

  dimension: orden_item_cargo_unica_vez_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemCargoUnicaVezSinImpuesto ;;
  }

  dimension: orden_item_total_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemTotalRecurrente ;;
  }

  dimension: orden_item_total_recurrente_sin_impuesto {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenItemTotalRecurrenteSinImpuesto ;;
  }

  dimension: orden_estadoa_om_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoaOMSK ;;
  }

  dimension: orden_bajas_totales {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenBajasTotales ;;
  }

  dimension: orden_tipo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenTipoBajaSK ;;
  }

  dimension: orden_suspensiones_totales {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenSuspensionesTotales ;;
  }

  dimension: orden_tipo_suspension_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.OrdenTipoSuspensionSK ;;
  }

  dimension: orden_volte {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenVolte ;;
  }


  ##########
  ## Caso ##
  ##########

  ## Dates

  dimension: caso_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Caso.Fechas.CasoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Caso"
    label: "Fecha Creacion"
  }

  ## Strings

  dimension: caso_tipo_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoTipoNombre ;;
    suggest_dimension: lk_caso_tipo.caso_tipo_nombre
    view_label: "Caso"
    label: "Tipo"
  }

  dimension: caso_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoSubTipoNombre ;;
    suggest_dimension: lk_caso_sub_tipo.caso_sub_tipo_nombre
    view_label: "Caso"
    label: "Subtipo"
  }

  dimension: caso_estado_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoEstadoNombre ;;
    suggest_dimension: lk_caso_estado.caso_estado_nombre
    view_label: "Caso"
    label: "Estado"
  }

  dimension: caso_mercado_donante_portacion {
    type: string
    sql: ${TABLE}.Caso.CasoMercadoDonantePortacion ;;
    view_label: "Caso"
    label: "Mercado Donante Portacion"
  }

  dimension: caso_mercado_donante_portacion_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoMercadoDonantePortacionSRCId ;;
    view_label: "Caso"
    label: "Mercado Donante ID"
  }

  dimension: caso_numero {
    type: string
    sql: ${TABLE}.Caso.CasoNumero ;;
    view_label: "Caso"
    label: "Numero"
  }

  dimension: caso_operadora_receptora_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoOperadoraReceptoraSRCId ;;
    view_label: "Caso"
    label: "Operadora Receptora"
  }

  dimension: caso_padre_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoPadreSRCId ;;
    view_label: "Caso"
    label: "Padre"
  }

  dimension: caso_pinportabilidad {
    type: string
    sql: ${TABLE}.Caso.CasoPINPortabilidad ;;
    view_label: "Caso"
    label: "PIN Portabilidad"
  }

  dimension: caso_red_portacion_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoRedPortacionNombre ;;
    view_label: "Caso"
    label: "Red Portacion"
  }

  dimension: caso_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoSRCId ;;
    view_label: "Caso"
    label: "ID"
  }

  dimension: caso_tema_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoTemaNombre ;;
    view_label: "Caso"
    label: "Tema"
  }

  dimension: caso_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoMotivoBajaNombre ;;
    suggest_dimension: lk_caso_motivo_baja.caso_motivo_baja_nombre
    view_label: "Caso"
    label: "Motivo Baja"
  }

  dimension: caso_sub_motivo_baja_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoSubMotivoBajaNombre ;;
    suggest_dimension: lk_caso_sub_motivo_baja.caso_sub_motivo_baja_nombre
    view_label: "Caso"
    label: "SubMotivo Baja"
  }


  ## Hidden

  dimension: caso_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Caso.CasoTipoSK ;;
  }

  dimension: caso_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Caso.CasoTipoSRCId ;;
  }

  dimension: caso_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Caso.CasoSubTipoSK ;;
  }

  dimension: caso_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Caso.CasoSubTipoSRCId ;;
  }

  dimension: caso_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Caso.CasoEstadoSK ;;
  }

  dimension: caso_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Caso.CasoEstadoSRCId ;;
  }

  dimension: caso_sub_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Caso.CasoSubMotivoBajaSK ;;
  }

  dimension: caso_sub_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Caso.CasoSubMotivoBajaSRCId ;;
  }

  dimension: caso_motivo_baja_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Caso.CasoMotivoBajaSK ;;
  }

  dimension: caso_motivo_baja_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Caso.CasoMotivoBajaSRCId ;;
  }

  #############
  ## Cliente ##
  #############

  ## Dates

  dimension: cuenta_fecha_creacion_hwsrc {
    type: date_time
    sql: ${TABLE}.Cliente.Fechas.CuentaFechaCreacionHWSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fechas"
    group_item_label: "Creacion HW"
    label: "Fecha Creacion HW"
  }

  dimension: persona_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Cliente.Fechas.PersonaFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fechas"
    group_item_label: "Creacion Persona"
    label: "Fecha Creacion Persona"
  }

  dimension: persona_fecha_nacimiento {
    type: date
    sql: ${TABLE}.Cliente.PersonaFechaNacimiento ;;
    datatype: date
    convert_tz: no
    view_label: "Cliente"
    group_label: "Fechas"
    group_item_label: "Nacimiento Persona"
    label: "Fecha Nacimiento"
  }

  ## Strings

  dimension: cliente_segmento1_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1Nombre ;;
    suggest_dimension: lk_cliente_segmento1.cliente_segmento1_nombre
    view_label: "Cliente"
    label: "Segmento 1"
  }

  dimension: cliente_segmento2_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2Nombre ;;
    suggest_dimension: lk_cliente_segmento2.cliente_segmento2_nombre
    view_label: "Cliente"
    label: "Segmento 2"
  }

  dimension: persona_tipo_documento_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoNombre ;;
    suggest_dimension: lk_persona_tipo_documento.persona_tipo_documento_nombre
    view_label: "Cliente"
    label: "Documento Tipo"
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    suggest_dimension: lk_cuenta_tipo.cuenta_tipo_nombre
    view_label: "Cliente"
    label: "Cuenta Tipo"
  }

  dimension: cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    view_label: "Cliente"
    label: "Tipo"
  }

  dimension: cliente_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.ClienteCicloFacturacion ;;
    view_label: "Cliente"
    label: "Ciclo Facturacion"
  }

  dimension: cliente_email {
    type: string
    sql: ${TABLE}.Cliente.ClienteEmail ;;
    view_label: "Cliente"
    label: "Email"
  }

  dimension: cliente_persona_contacto_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClientePersonaContactoSRCId ;;
    view_label: "Cliente"
    label: "Contacto"
  }

  dimension: cliente_razon_social {
    type: string
    sql: ${TABLE}.Cliente.ClienteRazonSocial ;;
    view_label: "Cliente"
    label: "Razon Social"
  }

  dimension: cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.ClienteSRCId ;;
    view_label: "Cliente"
    label: "ID"
  }

  dimension: cuenta_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Cliente.CuentaCicloFacturacion ;;
    view_label: "Cliente"
    label: "Cuenta Ciclo Facturacion"
  }

  dimension: cuenta_cliente_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaClienteSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Cliente"
  }

  dimension: cuenta_codigo {
    type: string
    sql: ${TABLE}.Cliente.CuentaCodigo ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
    description: "Numero de cuenta del cliente"
  }

  dimension: cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Domicilio Envio"
  }

  dimension: cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Domicilio Facturacion"
  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaSRCId ;;
    view_label: "Cliente"
    label: "Cuenta"
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    view_label: "Cliente"
    label: "Apellido"
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    view_label: "Cliente"
    label: "Documento Numero"
  }

  dimension: persona_email {
    type: string
    sql: ${TABLE}.Cliente.PersonaEmail ;;
    view_label: "Cliente"
    label: "Email Persona"
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    view_label: "Cliente"
    label: "Nombre"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaSRCId ;;
    view_label: "Cliente"
    label: "Persona"
  }

  ## Numbers

  dimension: persona_edad {
    type: number
    sql: ${TABLE}.Cliente.PersonaEdad ;;
    view_label: "Cliente"
    label: "Edad"
  }

  ## Hidden

  dimension: cliente_segmento1_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento1SK ;;
  }

  dimension: cliente_segmento1_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento1SRCId ;;
  }

  dimension: cliente_segmento2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteSegmento2SK ;;
  }

  dimension: cliente_segmento2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteSegmento2SRCId ;;
  }

  dimension: persona_tipo_documento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSK ;;
  }

  dimension: persona_tipo_documento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.PersonaTipoDocumentoSRCId ;;
  }

  dimension: cuenta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.CuentaTipoSK ;;
  }

  dimension: cuenta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoSRCId ;;
  }

  dimension: cliente_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Cliente.ClienteTipoSK ;;
  }

  dimension: cliente_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoSRCId ;;
  }

  dimension: nomina_usr_creacion_fk {
    hidden: yes
    type: string
    sql: ${TABLE}.OrdenNominaPeriodoCreacionUsuarioFK ;;
  }

  ###########
  ## Orden ##
  ###########

  ## Dates

  dimension_group: orden_ejecucion_cambio_ciclo_fecha_src {
    type: time
    sql: ${TABLE}.Orden.Fechas.OrdenEjecucionCambioCicloFechaSRC ;;
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    datatype: date
    view_label: "Orden"
    group_label: "Fecha Ejecucion Cambio Ciclo"
    label: "Ejecucion Cambio Ciclo"
  }

  dimension_group: orden_fecha_activacion_src {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    label: "Fecha Activacion"
  }

  dimension_group: orden_fecha_creacion_src {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: orden_fecha_entrega_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.OrdenFechaEntregaSRC ;;
    datatype: date
    view_label: "Orden"
    group_label: "Fecha Entrega"
    label: "Entrega"
  }

  dimension_group: orden_fecha_fin_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.OrdenFechaFinSRC ;;
    datatype: date
    view_label: "Orden"
    group_label: "Fecha Fin"
    label: "Fin"
  }

  dimension_group: orden_fecha_inicio_src {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.Orden.Fechas.OrdenFechaInicioSRC ;;
    datatype: date
    view_label: "Orden"
    group_label: "Fecha Inicio"
    label: "Inicio"
  }

  dimension_group: orden_fecha_mod_src {
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
    sql: ${TABLE}.Orden.Fechas.OrdenFechaModSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fecha Modificacion"
    label: "Modificacion"
  }

  ## Flags

  dimension: orden_marca_batch {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaBatch ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Batch"
    label: "Es Batch"
  }

  dimension: orden_marca_cambio_mercado {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaCambioMercado ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Cambio Mercado"
    label: "Es Cambio Mercado"
  }

  dimension: orden_marca_cambio_producto {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaCambioProducto ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Cambio Producto"
    label: "Es Cambio Producto"
  }

  dimension: orden_marca_campania {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaCampania ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Campania"
    label: "Es Campania"
  }

  dimension: orden_marca_cierre_parcial {
    type: yesno
    sql: ${TABLE}.Orden.OrdenMarcaCierreParcial ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Cierre Parcial"
    label: "Es Cierre Parcial"
  }

  dimension: orden_prefactibilidad_flow {
    type: yesno
    sql: ${TABLE}.Orden.OrdenPrefactibilidadFLOW ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Prefactibilidad Flow"
    label: "Es Prefactibilidad Flow"
  }

  dimension: orden_prefactibilidad_toip {
    type: yesno
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTOIP ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Prefactibilidad TOIP"
    label: "Es Prefactibilidad TOIP"
  }

  ## Strings

  dimension: orden_tipo_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionNombre ;;
    suggest_dimension: lk_orden_tipo_gestion.orden_tipo_gestion_nombre
    view_label: "Orden"
    label: "Tipo Gestion"
  }

  dimension: orden_tipo_sub_gestion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionNombre ;;
    suggest_dimension: lk_orden_tipo_sub_gestion.orden_tipo_sub_gestion_nombre
    view_label: "Orden"
    label: "Tipo Subgestion"
  }

  dimension: orden_tipo_baja_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoBajaNombre ;;
    suggest_dimension: lk_orden_tipo_baja.orden_tipo_baja_nombre
    view_label: "Orden"
    label: "Tipo Baja"
  }

  dimension: orden_tipo_suspension_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSuspensionNombre ;;
    suggest_dimension: lk_orden_tipo_suspension.orden_tipo_suspension_nombre
    view_label: "Orden"
    label: "Tipo Suspension"
    description: "Campo calculado que indica el tipo de suspension que corresponde de acuerdo:
    SUSPENSION POR MORA = OrdenItemSubAccionNombre es 'SUSPENDER - DEGRADACION', 'SUSPENDER - MORA 1', 'SUSPENDER - MORA 2'
    SUSPENSION NO VOLUNTARIA = OrdenItemSubAccionNombre es 'SUSPENDER - SINIESTRO', 'SUSPENDER - FRAUDE'
    SUSPENSION VOLUNTARIA = OrdenItemSubAccionNombre es 'SUSPENDER - VOLUNTARIO'"
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_nombre
    view_label: "Orden"
    label: "Tipo Cambio Plan"
    description: "Es el tipo de cambio de plan Upgrade/Downgrade/Cross"
  }

  dimension: orden_servicio_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaNombre ;;
    suggest_dimension: lk_orden_servicio_entrega.orden_servicio_entrega_nombre
    view_label: "Orden"
    label: "Servicio Entrega"
  }

  dimension: orden_metodo_entrega_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaNombre ;;
    suggest_dimension: lk_orden_metodo_entrega.orden_metodo_entrega_nombre
    view_label: "Orden"
    label: "Metodo Entrega"
    description: "Metodo de envio (Delivery/Presencial)"
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    view_label: "Orden"
    label: "Canal Origen"
    description: "Canal de origen de la gestion (Telefonico/Fisico/digital/etc)"
  }

  dimension: orden_estado_aprobacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionNombre ;;
    suggest_dimension: lk_orden_estado_aprobacion.orden_estado_aprobacion_nombre
    view_label: "Orden"
    label: "Estado Aprobacion"
  }

  dimension: orden_estado_provisionamiento_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoNombre ;;
    suggest_dimension: lk_orden_estado_provisionamiento.orden_estado_provisionamiento_nombre
    view_label: "Orden"
    label: "Estado Provisionamiento"
  }

  dimension: orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoNombre ;;
    suggest_dimension: lk_orden_estado.orden_estado_nombre
    view_label: "Orden"
    label: "Estado"
  }

  dimension: orden_estado_trackeo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoNombre ;;
    suggest_dimension: lk_orden_estado_trackeo.orden_estado_trackeo_nombre
    view_label: "Orden"
    label: "Estado Trackeo"
  }

  dimension: orden_estado_validado_cliente_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoValidadoClienteNombre ;;
    view_label: "Orden"
    label: "Estado Validado Cliente"
  }

  dimension: orden_estadoa_om_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoaOMNombre ;;
    suggest_dimension: lk_orden_estadoa_om.orden_estadoa_om_nombre
    view_label: "Orden"
    label: "Estado a OM"
    description: "Estado real de la orden a Order Manager"
  }

  dimension: orden_operador_logistico {
    type: string
    sql: ${TABLE}.Orden.OrdenOperadorLogistico  ;;
    view_label: "Orden"
    label: "Operador Logistico"
    description: "Operador logistico de procesos de delivery"
  }

  dimension: orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenGrupoTrabajoNombre ;;
    view_label: "Orden"
    label: "Grupo Trabajo"
    description: "Equipo de trabajo"
  }

  dimension: orden_lista_productos_cuenta {
    type: string
    sql: ${TABLE}.Orden.OrdenListaProductosCuenta ;;
    view_label: "Orden"
    label: "Lista Productos Cuenta"
  }

  dimension: orden_llamada_padre_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenLlamadaPadreSRCId ;;
    view_label: "Orden"
    label: "Llamada Padre ID"
    description: "Integracion con PIC - Call Parent ID"
  }

  dimension: orden_llamada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenLlamadaSRCId ;;
    view_label: "Orden"
    label: "Llamada Id"
    description: "Integracion con PIC - Call ID"
  }

  dimension: orden_estado_consentimiento_cliente {
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoConsentimientoCliente ;;
    view_label: "Orden"
    label: "Estado Consentimiento Cliente"
  }

  dimension: campania_srcid {
    type: string
    sql: ${TABLE}.Orden.CampaniaSRCId ;;
    view_label: "Orden"
    label: "Campaña"
  }

  dimension: domicilio_direccion_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.DomicilioDireccionEntregaSRCId ;;
    view_label: "Orden"
    label: "Domicilio Direccion Entrega"
    description: "Id correspondiente al Address2 direccion de entrega"
  }

  dimension: metodo_pago_srcid {
    type: string
    sql: ${TABLE}.Orden.MetodoPagoSRCId ;;
    view_label: "Orden"
    label: "Metodo Pago"
  }

  dimension: orden_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Orden.OrdenCicloFacturacion ;;
    view_label: "Orden"
    label: "Ciclo Facturacion"
    description: "Ciclo de Facturacion del Producto"
  }

  dimension: orden_codigo_banco {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoBanco ;;
    view_label: "Orden"
    label: "Codigo Banco"
  }

  dimension: orden_codigo_operacion {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoOperacion ;;
    view_label: "Orden"
    label: "Codigo Operacion"
  }

  dimension: orden_codigo_pais_envio {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoPaisEnvio ;;
    view_label: "Orden"
    label: "Codigo Pais Envio"
  }

  dimension: orden_codigo_tarjeta {
    type: string
    sql: ${TABLE}.Orden.OrdenCodigoTarjeta ;;
    view_label: "Orden"
    label: "Codigo Tarjeta"
  }

  dimension: orden_contacto_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenContactoNombre ;;
    view_label: "Orden"
    label: "Contacto"
    description: "Nombre del Contacto (Cliente)"
  }

  dimension: orden_cuenta_facturacion_predeterminada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaFacturacionPredeterminadaSRCId ;;
    view_label: "Orden"
    label: "Cuenta Facturacion Predeterminada"
  }

  dimension: orden_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaFacturacionSRCId ;;
    view_label: "Orden"
    label: "Cuenta Facturacion"
    description: "Id de cuenta Facturacion"
  }

  dimension: orden_cuenta_servicio_predeterminada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaServicioPredeterminadaSRCId ;;
    view_label: "Orden"
    label: "Cuenta Servicio Predeterminada"
  }

  dimension: orden_detalle_error_insalvable {
    type: string
    sql: ${TABLE}.Orden.OrdenDetalleErrorInsalvable ;;
    view_label: "Orden"
    label: "Detalle Error Insalvable"
  }

  dimension: orden_direccion_instalacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenDireccionInstalacionSRCId ;;
    view_label: "Orden"
    label: "Direccion Instalacion"
    description: "Id correspondiente al Address2 direccion instalacion"
  }

  dimension: orden_ejecucion_cambio_ciclo_descripcion {
    type: string
    sql: ${TABLE}.Orden.OrdenEjecucionCambioCicloDescripcion ;;
    view_label: "Orden"
    label: "Ejecucion Cambio Ciclo Descripcion"
  }

  dimension: orden_metodo_consentimiento {
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoConsentimiento ;;
    view_label: "Orden"
    label: "Metodo Consentimiento"
    description: "Metodo de Validacion de la Gestion"
  }

  dimension: orden_motivo_anulacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMotivoAnulacionNombre ;;
    view_label: "Orden"
    label: "Motivo Anulacion"
    description: "Corresponde al campo AnnulmentReason y se completa el motivo de cancelacion de la gestion"
  }

  dimension: orden_nombre_apellido_autorizado {
    type: string
    sql: ${TABLE}.Orden.OrdenNombreApellidoAutorizado ;;
    view_label: "Orden"
    label: "Nombre Apellido Autorizado"
  }

  dimension: orden_numero {
    type: string
    sql: ${TABLE}.Orden.OrdenNumero ;;
    view_label: "Orden"
    label: "Numero"
  }

  dimension: orden_numero_comprobante {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroComprobante ;;
    view_label: "Orden"
    label: "Numero Comprobante"
    description: "Corresponde al campo Legal Invoice Number"
  }

  dimension: orden_numero_original {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroOriginal ;;
    view_label: "Orden"
    label: "Original Numero"
    description: "Numero de orden original reemplazada"
  }

  dimension: orden_numero_reemplazada {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroReemplazada ;;
    view_label: "Orden"
    label: "Reemplazada Numero"
    description: "Numero de orden reemplazada (Superseded Orden)"
  }

  dimension: orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroPreFactura ;;
    view_label: "Orden"
    label: "Numero Prefactura"
    description: "Corresponde al tracking number de Salesforce"
  }

  dimension: orden_numero_seguimiento {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroSeguimiento ;;
    view_label: "Orden"
    label: "Numero Seguimiento"
    description: "Corresponde al tracking number de Salesforce"
  }

  dimension: orden_original_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenOriginalSRCId ;;
    view_label: "Orden"
    label: "Original ID"
    description: "Id de orden original reemplazada"
  }

  dimension: orden_prefactibilidad_codigo_area {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadCodigoArea ;;
    view_label: "Orden"
    label: "Prefactibilidad Codigo Area"
  }

  dimension: orden_prefactibilidad_distribucion {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadDistribucion ;;
    view_label: "Orden"
    label: "Prefactibilidad Distribucion"
  }

  dimension: orden_prefactibilidad_fuente_llamada {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadFuenteLlamada ;;
    view_label: "Orden"
    label: "Prefactibilidad Fuente Llamada"
  }

  dimension: orden_prefactibilidad_hub_nodo {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadHubNodo ;;
    view_label: "Orden"
    label: "Prefactibilidad Hub Nodo"
  }

  dimension: orden_prefactibilidad_poligo_comercial {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadPoligoComercial ;;
    view_label: "Orden"
    label: "Prefactibilidad Poligo Comercial"
  }

  dimension: orden_prefactibilidad_region {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadRegion ;;
    view_label: "Orden"
    label: "Prefactibilidad Region"
  }

  dimension: orden_prefactibilidad_tecno {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTECNO ;;
    view_label: "Orden"
    label: "Prefactibilidad Tecno"
  }

  dimension: orden_prefactibilidad_tipo_deco {
    type: string
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTipoDeco ;;
    view_label: "Orden"
    label: "Prefactibilidad Tipo Deco"
  }

  dimension: orden_reemplazada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenReemplazadaSRCId ;;
    view_label: "Orden"
    label: "Reemplazada"
    description: "Orden Reemplazada (Superseded Orden)"
  }

  dimension: orden_seguimiento_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSeguimientoEntregaSRCId ;;
    view_label: "Orden"
    label: "Seguimiento Entrega"
    description: "Es el Delivery Tracking ID"
  }

  dimension: orden_simulacion_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenSimulacionFactura ;;
    view_label: "Orden"
    label: "Simulacion Factura"
  }

  dimension: orden_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSRCId ;;
    view_label: "Orden"
    label: "ID"
    description: "Id de la Orden"
  }

  dimension: orden_suspension_preexistente {
    type: string
    sql: ${TABLE}.Orden.OrdenSuspensionPreexistente ;;
    view_label: "Orden"
    label: "Suspension Preexistente"
  }

  dimension: orden_transaccion_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenTransaccionEntregaSRCId ;;
    view_label: "Orden"
    label: "Transaccion Entrega"
    description: "Corresponde al Delivery Transaction ID"
  }

  dimension: orden_usuario_activacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenUsuarioActivacionSRCId ;;
    view_label: "Orden"
    label: "Usuario Activacion"
  }

  dimension: orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenUsuarioCreacionSRCId ;;
    view_label: "Orden"
    label: "Usuario Creacion"
  }

  dimension: orden_usuario_mod_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenUsuarioModSRCId ;;
    view_label: "Orden"
    label: "Usuario Modificacion"
  }

  ## Numbers

  dimension: orden_prefactibilidad_down_stream {
    type: number
    sql: ${TABLE}.Orden.OrdenPrefactibilidadDownStream ;;
    view_label: "Orden"
    label: "Prefactibilidad Downstream"
  }

  ## Hidden

  dimension: orden_tipo_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoGestionSK ;;
  }

  dimension: orden_tipo_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoGestionSRCId ;;
  }

  dimension: orden_tipo_sub_gestion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSK ;;
  }

  dimension: orden_tipo_sub_gestion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoSubGestionSRCId ;;
  }

  dimension: orden_tipo_cambio_plan_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSK ;;
  }

  dimension: orden_tipo_cambio_plan_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanSRCId ;;
  }

  dimension: orden_servicio_entrega_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenServicioEntregaSK ;;
  }

  dimension: orden_servicio_entrega_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenServicioEntregaSRCId ;;
  }

  dimension: orden_metodo_entrega_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSK ;;
  }

  dimension: orden_metodo_entrega_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenMetodoEntregaSRCId ;;
  }

  dimension: orden_canal_origen_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenCanalOrigenSK ;;
  }

  dimension: orden_canal_origen_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenSRCId ;;
  }

  dimension: orden_estado_aprobacion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSK ;;
  }

  dimension: orden_estado_aprobacion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoAprobacionSRCId ;;
  }

  dimension: orden_estado_provisionamiento_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSK ;;
  }

  dimension: orden_estado_provisionamiento_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoProvisionamientoSRCId ;;
  }

  dimension: orden_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoSK ;;
  }

  dimension: orden_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoSRCId ;;
  }

  dimension: orden_estado_trackeo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSK ;;
  }

  dimension: orden_estado_trackeo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenEstadoTrackeoSRCId ;;
  }

  dimension: orden_precio_total {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenPrecioTotal ;;
  }

  dimension: orden_precio_total_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenPrecioTotalRecurrente ;;
  }

  dimension: orden_precio_total_una_vez {
    hidden: yes
    type: number
    sql: ${TABLE}.Numericos.OrdenPrecioTotalUnaVez ;;
  }

  ##############
  ## Producto ##
  ##############

  ## Dates

  dimension: producto_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Producto.Fechas.ProductoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Creacion"
    label: "Fecha Creacion"
  }

  dimension: producto_fecha_modificacion_src {
    type: date
    datatype: timestamp
    sql: ${TABLE}.Producto.Fechas.ProductoFechaModificacionSRC ;;
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Modificacion"
    label: "Fecha Modificacion"
  }

  dimension: producto_vigencia_desde_src {
    type: date
    sql: ${TABLE}.Producto.Fechas.ProductoVigenciaDesdeSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Vigencia Desde"
    label: "Fecha Vigencia Desde"
  }

  dimension: producto_vigencia_hasta_src {
    datatype: date
    sql: ${TABLE}.Producto.Fechas.ProductoVigenciaHastaSRC ;;
    type: date_time
    convert_tz: no
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Vigencia Hasta"
    label: "Fecha Vigencia Hasta"
  }

  ## Flags

  dimension: producto_marca_activo {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaActivo ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Activo"
    label: "Es Activo"
  }

  dimension: producto_marca_configurable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaConfigurable ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Configurable"
    label: "Es Configurable"
  }

  dimension: producto_marca_no_assetizable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaNoAssetizable ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "No Assetizable"
    label: "Es No Assetizable"
  }

  dimension: producto_marca_orderable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaOrderable ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Orderable"
    label: "Es Orderable"
  }

  dimension: producto_marca_pertenece_bundle {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaPerteneceBundle ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Bundle"
    label: "Es Bundle"
  }

  dimension: producto_marca_principal {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaPrincipal ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Principal"
    label: "Es Principal"
  }

  dimension: producto_marca_tangible {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaTangible ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Tangible"
    label: "Es Tangible"
  }

  ## Strings

  dimension: producto_mercado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoNombre ;;
    suggest_dimension: lk_producto_mercado.producto_mercado_nombre
    view_label: "Producto"
    label: "Mercado"
  }

  dimension: producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo.producto_tipo_nombre
    view_label: "Producto"
    label: "Tipo"
  }

  dimension: producto_estado_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoEstadoNombre ;;
    suggest_dimension: lk_producto_estado.producto_estado_nombre
    view_label: "Producto"
    label: "Estado"
  }

  dimension: producto_familia_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaNombre ;;
    suggest_dimension: lk_producto_familia.producto_familia_nombre
    view_label: "Producto"
    label: "Familia"
  }

  dimension: producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoNombre ;;
    suggest_dimension: lk_producto_sub_tipo.producto_sub_tipo_nombre
    view_label: "Producto"
    label: "Subtipo"
  }

  dimension: producto_nombre {
    type: string
    sql: ${TABLE}.Producto.ProductoNombre ;;
    view_label: "Producto"
    label: "Producto"
  }

  dimension: producto_nmu {
    type: string
    sql: ${TABLE}.Producto.ProductoNmu ;;
    view_label: "Producto"
    label: "NMU"
  }

  dimension: producto_sistema_origen_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenCodigo ;;
    view_label: "Producto"
    label: "Codigo Sistema Origen"
  }

  dimension: producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    view_label: "Producto"
    label: "Sistema Origen"
  }

  dimension: producto_sistema_origen_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenINTId ;;
    view_label: "Producto"
    label: "Sistema Origen Int"
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSRCId ;;
    view_label: "Producto"
    label: "ID"
  }

  dimension: producto_tipo_objeto_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoObjetoDescripcion ;;
    view_label: "Producto"
    label: "Tipo Objeto"
  }

  dimension: producto_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoCodigo ;;
    view_label: "Producto"
    label: "Codigo"
  }

  dimension: producto_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoDescripcion ;;
    view_label: "Producto"
    label: "Descripcion"
  }

  ## Hidden

  dimension: producto_mercado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoMercadoSK ;;
  }

  dimension: producto_mercado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoMercadoSRCId ;;
  }

  dimension: producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoTipoSK ;;
  }

  dimension: producto_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoTipoSRCId ;;
  }

  dimension: producto_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoEstadoSK ;;
  }

  dimension: producto_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoEstadoSRCId ;;
  }

  dimension: producto_familia_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoFamiliaSK ;;
  }

  dimension: producto_familia_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoFamiliaSRCId ;;
  }

  dimension: producto_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Producto.ProductoSubTipoSK ;;
  }

  dimension: producto_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Producto.ProductoSubTipoSRCId ;;
  }

  ########################
  ## Producto Adquirido ##
  ########################

  ## Dates

  dimension: producto_adquirido_fecha_baja_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.Fechas.ProductoAdquiridoFechaBajaSRC ;;
    datatype: timestamp
    view_label: "Producto Adquirido"
    group_label: "Fechas"
    group_item_label: "Baja"
    label: "Fecha Baja"
  }

  dimension: producto_adquirido_fecha_compra_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.Fechas.ProductoAdquiridoFechaCompraSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Producto Adquirido"
    group_label: "Fechas"
    group_item_label: " Compra"
    label: "Fecha Compra"
  }

  ## Strings

  dimension: producto_adquirido_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_estado.producto_adquirido_estado_nombre
    view_label: "Producto Adquirido"
    label: "Estado"
  }

  dimension: producto_adquirido_sub_estado_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoNombre ;;
    suggest_dimension: lk_producto_adquirido_sub_estado.producto_adquirido_sub_estado_nombre
    view_label: "Producto Adquirido"
    label: "Subestado"
  }

  dimension: producto_adquirido_codigo_suscripcion {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoCodigoSuscripcion ;;
    view_label: "Producto Adquirido"
    label: "Codigo Suscripcion"
  }

  dimension: producto_adquirido_gama_equipo {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoGamaEquipo ;;
    view_label: "Producto Adquirido"
    label: "Gama Equipo"
  }

  dimension: producto_adquirido_iccidsrcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoICCIDSRCId ;;
    view_label: "Producto Adquirido"
    label: "Producto Adquirido ICCID"
  }

  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoIMEI ;;
    view_label: "Producto Adquirido"
    label: "IMEI"
  }

  dimension: producto_adquirido_marca_producto {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMarcaProducto ;;
    view_label: "Producto Adquirido"
    label: "Marca"
  }

  dimension: producto_adquirido_modelo_producto {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoModeloProducto ;;
    view_label: "Producto Adquirido"
    label: "Modelo"
  }

  dimension: producto_adquirido_nmu {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNMU ;;
    view_label: "Producto Adquirido"
    label: "NMU"
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNumeroLinea ;;
    view_label: "Producto Adquirido"
    label: "Numero Linea"
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    view_label: "Producto Adquirido"
    label: "Referente"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Nombre"
  }

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionDepartamentoNombre ;;
    view_label: "Producto Adquirido"
    label: "Rango Numeracion Departamento"
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionLocalidadNombre ;;
    view_label: "Producto Adquirido"
    label: "Rango Numeracion Localidad"
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionProvinciaNombre ;;
    view_label: "Producto Adquirido"
    label: "Rango Numeracion Provincia"
  }

  dimension: rango_numeracion_prefijo_interurbano {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionPrefijoInterurbano ;;
    suggest_dimension: lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano
    view_label: "Producto Adquirido"
    group_item_label: "Rango Numeracion Prefijo Interurbano"
    label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: rango_numeracion_prefijos {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionPrefijos ;;
    suggest_dimension: lk_rango_numeracion_prefijos.rango_numeracion_prefijos
    view_label: "Producto Adquirido"
    group_item_label: "Rango Numeracion Prefijos"
    label: "Rango Numeracion Prefijos"
  }

  ## Numbers


  ## Hidden

  dimension: producto_adquirido_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSK ;;
  }

  dimension: producto_adquirido_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoEstadoSRCId ;;
  }

  dimension: producto_adquirido_sub_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSK ;;
  }

  dimension: producto_adquirido_sub_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSubEstadoSRCId ;;
  }

  ###############
  ## Domicilio ##
  ###############

  ## Strings

  dimension: domicilio_codigo_postal_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Codigo Postal"
    label: "Codigo Postal Envio"
  }

  dimension: domicilio_codigo_postal_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Codigo Postal"
    label: "Codigo Postal Facturacion"
  }

  dimension: domicilio_planta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Planta"
    label: "Planta Envio"
  }

  dimension: domicilio_planta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Planta"
    label: "Planta Facturacion"
  }

  dimension: domicilio_puerta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Puerta"
    label: "Puerta Envio"
  }

  dimension: domicilio_puerta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Puerta"
    label: "Puerta Facturacion"
  }

  dimension: domicilio_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioSRCIdEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "ID"
    label: "Envio ID"
  }

  dimension: domicilio_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioSRCIdFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "ID"
    label: "Facturacion ID"
  }

  dimension: localidad_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadSRCIdEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Localidad ID"
    label: "Envio Localidad ID"
  }

  dimension: localidad_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadSRCIdFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Localidad ID"
    label: "Facturacion Localidad ID"
  }

  dimension: nombre_calle_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Calle"
    label: "Envio Calle"
  }

  dimension: nombre_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Calle"
    label: "Facturacion Calle"
  }

  dimension: nombre_localidad_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Localidad"
    label: "Envio Localidad"
  }

  dimension: nombre_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Localidad"
    label: "Facturacion Localidad"
  }

  dimension: nombre_provincia_env {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Provincia"
    label: "Envio Provincia"
  }

  dimension: nombre_provincia_fact {
    map_layer_name: arg_provinces
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Provincia"
    label: "Facturacion Provincia"
  }

  dimension: provincia_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.ProvinciaSRCIdEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Provincia ID"
    label: "Envio Provincia ID"
  }

  dimension: provincia_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.ProvinciaSRCIdFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Provincia ID"
    label: "Facturacion Provincia ID"
  }

  dimension: municipio_nombre_fact {
    type: string
    sql: ${TABLE}.Domicilio.MunicipioNombreFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Municipio"
    label: "Facturacion Municipio"
    description: "Municipio del Domicilio de Facturación correspondiente a la Cuenta del Cliente"
  }

  dimension: departamento_mu_codigo_fact {
    type: string
    sql: ${TABLE}.Domicilio.DepartamentoMUCodigoFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Departamento"
    label: "Facturacion Departamento"
    description: "Departamento/Partido del Domicilio de Facturación correspondiente a la Cuenta del Cliente"
  }

  ## Numbers

  dimension: domicilio_numero_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroEnv ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Numero"
    label: "Envio Numero"
  }

  dimension: domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Numero"
    label: "Facturacion Numero"
  }

  ## Location

  dimension: domicilio_env_location {
    type: location
    sql_latitude: ${domicilio_latitud_env} ;;
    sql_longitude: ${domicilio_longitud_env} ;;
    view_label: "Domicilio"
    group_label: "Envio"
    group_item_label: "Ubicacion"
    label: "Envio Ubicacion"
  }

  dimension: domicilio_fact_location {
    type: location
    sql_latitude: ${domicilio_latitud_fact} ;;
    sql_longitude: ${domicilio_longitud_fact} ;;
    view_label: "Domicilio"
    group_label: "Facturacion"
    group_item_label: "Ubicacion"
    label: "Facturacion Ubicacion"
  }

  ## Hidden

  dimension: domicilio_latitud_env {
    hidden: yes
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudEnv ;;
  }

  dimension: domicilio_longitud_env {
    hidden: yes
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudEnv ;;
  }

  dimension: domicilio_latitud_fact {
    hidden: yes
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudFact ;;
  }

  dimension: domicilio_longitud_fact {
    hidden: yes
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudFact ;;
  }

  #########################
  ## Orden Plan Anterior ##
  #########################

  ## Strings

  dimension: opa_producto_sub_tipo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoSubTipoNombre ;;
    suggest_dimension: lk_producto_sub_tipo_opa.producto_sub_tipo_nombre
    view_label: "Orden Plan Anterior"
    group_label: "Producto"
    group_item_label: "Subtipo"
    label: "Producto Subtipo"
  }

  dimension: opa_orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenEstadoNombre ;;
    suggest_dimension: lk_orden_estado_opa.orden_estado_nombre
    view_label: "Orden Plan Anterior"
    label: "Estado"
  }

  dimension: opa_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion_opa.orden_item_accion_nombre
    view_label: "Orden Plan Anterior"
    label: "Item Accion"
  }

  dimension: opa_producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo_opa.producto_tipo_nombre
    view_label: "Orden Plan Anterior"
    group_label: "Producto"
    group_item_label: "Tipo"
    label: "Producto Tipo"
  }

  dimension: opa_orden_item_producto_padre_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemProductoPadreSRCId ;;
    view_label: "Orden Plan Anterior"
    group_label: "Producto"
    group_item_label: "Padre"
    label: "Producto Padre ID"
  }

  dimension: opa_orden_item_producto_raiz_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemProductoRaizSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Item Producto Raiz"
  }

  dimension: opa_orden_item_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Item"
  }

  dimension: opa_producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoAdquiridoReferenteSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Adquirido Referente"
  }

  dimension: opa_producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoAdquiridoSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Adquirido"
  }

  dimension: opa_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoCodigo ;;
    view_label: "Orden Plan Anterior"
    group_label: "Producto"
    group_item_label: "Codigo"
    label: "Producto Codigo"
  }

  dimension: opa_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoNombre ;;
    view_label: "Orden Plan Anterior"
    group_label: "Producto"
    label: "Producto"
  }

  dimension: opa_producto_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoSRCId ;;
    view_label: "Orden Plan Anterior"
    group_label: "Producto"
    label: "Producto ID"
  }

  ## Hidden

  dimension: opa_producto_sub_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoSubTipoSK ;;
  }

  dimension: opa_producto_sub_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoSubTipoSRCId ;;
  }

  dimension: opa_orden_estado_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenEstadoSK ;;
  }

  dimension: opa_orden_estado_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenEstadoSRCId ;;
  }

  dimension: opa_orden_item_accion_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemAccionSK ;;
  }

  dimension: opa_orden_item_accion_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemAccionSRCId ;;
  }

  dimension: opa_producto_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoTipoSK ;;
  }

  dimension: opa_producto_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoTipoSRCId ;;
  }

  dimension: opa_orden_item_cargo_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemCargoRecurrente ;;
  }

  dimension: opa_orden_item_precio_calculado_recurrente {
    hidden: yes
    type: number
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemPrecioCalculadoRecurrente ;;
  }

  ####################
  ## Punto de Venta ##
  ####################

  ## Strings

  dimension: punto_venta_tipo_canal_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalNombre ;;
    suggest_dimension: lk_punto_venta_tipo_canal.punto_venta_tipo_canal_nombre
    view_label: "Punto Venta"
    label: "Tipo Canal"
  }

  dimension: punto_venta_tipo_contacto_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoNombre ;;
    suggest_dimension: lk_punto_venta_tipo_contacto.punto_venta_tipo_contacto_nombre
    view_label: "Punto Venta"
    label: "Tipo Contacto"
  }

  dimension: punto_venta_tipo_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoNombre ;;
    suggest_dimension: lk_punto_venta_tipo.punto_venta_tipo_nombre
    view_label: "Punto Venta"
    label: "Tipo"
  }

  dimension: punto_venta_canalidad2_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2Nombre ;;
    suggest_dimension: lk_punto_venta_canalidad2.punto_venta_canalidad2_nombre
    view_label: "Punto Venta"
    label: "Canalidad 2"
  }

  dimension: punto_venta_canal3 {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanal3 ;;
    view_label: "Punto Venta"
    label: "Canal 3"
  }

  dimension: punto_venta_canal_pago {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalPago ;;
    view_label: "Punto Venta"
    label: "Canal Pago"
  }

  dimension: punto_venta_localidad_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaLocalidadSRCId ;;
    view_label: "Punto Venta"
    label: "Localidad"
  }

  dimension: punto_venta_nombre {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaNombre ;;
    view_label: "Punto Venta"
    label: "Nombre"
  }

  dimension: punto_venta_provincia {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaProvincia ;;
    view_label: "Punto Venta"
    label: "Provincia"
  }

  dimension: punto_venta_region {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaRegion ;;
    view_label: "Punto Venta"
    label: "Region"
  }

  dimension: punto_venta_srcid {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSRCId ;;
    view_label: "Punto Venta"
    label: "ID"
  }

  dimension: punto_venta_subregion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaSubregion ;;
    view_label: "Punto Venta"
    label: "Subregion"
  }

  dimension: punto_venta_tipo_atencion {
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoAtencion ;;
    view_label: "Punto Venta"
    label: "Tipo Atencion"
  }

  ## Numbers

  dimension: punto_venta_cod_punto_de_venta {
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCodPuntoDeVenta ;;
    view_label: "Punto Venta"
    label: "Codigo"
  }

  ## Hidden

  dimension: punto_venta_tipo_canal_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSK ;;
  }

  dimension: punto_venta_tipo_canal_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoCanalSRCId ;;
  }

  dimension: punto_venta_tipo_contacto_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSK ;;
  }

  dimension: punto_venta_tipo_contacto_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoContactoSRCId ;;
  }

  dimension: punto_venta_tipo_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoSK ;;
  }

  dimension: punto_venta_tipo_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaTipoSRCId ;;
  }

  dimension: punto_venta_canalidad2_sk {
    hidden: yes
    type: number
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SK ;;
  }

  dimension: punto_venta_canalidad2_srcid {
    hidden: yes
    type: string
    sql: ${TABLE}.PuntoVenta.PuntoVentaCanalidad2SRCId ;;
  }

  #############
  ## Usuario ##
  #############

  ## Strings

  dimension: usuario_apellido {
    type: string
    sql: ${TABLE}.Usuario.UsuarioApellido ;;
    view_label: "Usuario"
    label: "Apellido"
  }

  dimension: usuario_legajo {
    type: string
    sql: ${TABLE}.Usuario.UsuarioLegajo ;;
    view_label: "Usuario"
    label: "Legajo"
  }

  dimension: usuario_nombre {
    type: string
    sql: ${TABLE}.Usuario.UsuarioNombre ;;
    view_label: "Usuario"
    label: "Nombre"
  }

  dimension: usuario_nombre_completo {
    type: string
    sql: ${TABLE}.Usuario.UsuarioNombreCompleto ;;
    view_label: "Usuario"
    label: "Nombre Completo"
  }

  dimension: usuario_srcid {
    type: string
    sql: ${TABLE}.Usuario.UsuarioSRCId ;;
    view_label: "Usuario"
    label: "ID"
  }

##############
## Measures ##
##############

  ## Orden Item

  measure: total_orden_item_cantidad {
    type: sum
    sql: ${orden_item_cantidad};;
    group_label: "Total"
    group_item_label: "Orden Items"
    label: "Total Orden Items"
  }

  measure: total_orden_item_cargo_recurrente {
    type: sum
    sql: ${orden_item_cargo_recurrente} ;;
    group_label: "Total"
    group_item_label: "Cargo Recurrente"
    label: "Total Cargo Recurrente"
  }

  measure: total_orden_item_cargo_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_cargo_recurrente_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Cargo Recurrente Sin Impuesto"
    label: "Total Cargo Recurrente Sin Impuesto"
  }

  measure: total_orden_item_cargo_unica_vez {
    type: sum
    sql: ${orden_item_cargo_unica_vez} ;;
    group_label: "Total"
    group_item_label: "Cargo Unica Vez"
    label: "Total Cargo Unica Vez"
  }

  measure: total_orden_item_precio_calculado_recurrente {
    type: sum
    sql: ${orden_item_precio_calculado_recurrente} ;;
    group_label: "Total"
    group_item_label: "Precio Calculado Recurrente"
    label: "Total Precio Calculado Recurrente"
  }

  measure: total_orden_item_precio_calculado_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_calculado_recurrente_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Precio Calculado Recurrente Sin Impuesto"
    label: "Total Precio Calculado Recurrente Sin Impuesto"
  }

  measure: total_orden_item_precio_dcto_unica_vez {
    type: sum
    sql: ${orden_item_precio_dcto_unica_vez} ;;
    group_label: "Total"
    group_item_label: "Precio Descuento Unica Vez"
    label: "Total Precio Descuento Unica Vez"
  }

  measure: total_orden_item_precio_dcto_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_dcto_unica_vez_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Precio Dcto Unica Vez Sin Impuesto"
    label: "Total Precio Dcto Unica Vez Sin Impuesto"
  }

  measure: total_orden_item_precio_efectivo_unica_vez {
    type: sum
    sql: ${orden_item_precio_efectivo_unica_vez} ;;
    group_label: "Total"
    group_item_label: "Precio Efectivo Unica Vez"
    label: "Total Precio Efectivo Unica Vez"
  }

  measure: total_orden_item_precio_efectivo_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_efectivo_unica_vez_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Precio Efectivo Unica Vez Sin Impuesto"
    label: "Total Precio Efectivo Unica Vez Sin Impuesto"
  }

  measure: total_orden_item_precio_lista {
    type: sum
    sql: ${orden_item_precio_lista} ;;
    group_label: "Total"
    group_item_label: "Precio Lista"
    label: "Total Precio Lista"
  }

  measure: total_orden_item_precio_recurrente {
    type: sum
    sql: ${orden_item_precio_recurrente} ;;
    group_label: "Total"
    group_item_label: "Precio Recurrente"
    label: "Total Precio Recurrente"
  }

  measure: total_orden_item_precio_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_recurrente_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Precio Recurrente Sin Impuesto"
    label: "Total Precio Recurrente Sin Impuesto"
  }

  measure: total_orden_item_precio_total_unica_vez {
    type: sum
    sql: ${orden_item_precio_total_unica_vez} ;;
    group_label: "Total"
    group_item_label: "Precio Total Unica Vez"
    label: "Total Precio Total Unica Vez"
  }

  measure: total_orden_item_precio_total_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_total_unica_vez_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Precio Total Unica Vez Sin Impuesto"
    label: "Total Precio Total Unica Vez Sin Impuesto"
  }

  measure: total_orden_item_precio_unitario {
    type: sum
    sql: ${orden_item_precio_unitario} ;;
    group_label: "Total"
    group_item_label: "Precio Unitario"
    label: "Total Precio Unitario"
  }

  measure: total_orden_item_total_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_total_recurrente_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Recurrente Sin Impuesto"
    label: "Total Recurrente Sin Impuesto"
  }

  measure: total_orden_item_total_recurrente {
    type: sum
    sql: ${orden_item_total_recurrente} ;;
    group_label: "Total"
    group_item_label: "Recurrente"
    label: "Total Recurrente"
  }

  measure: total_orden_item_cargo_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_cargo_unica_vez_sin_impuesto} ;;
    group_label: "Total"
    group_item_label: "Cargo Unica Vez Sin Impuesto"
    label: "Total Cargo Unica Vez Sin Impuesto"
  }

  ## Orden

  measure: total_orden_precio_total {
    type: sum_distinct
    sql_distinct_key: ${orden_srcid} ;;
    sql: ${orden_precio_total} ;;
    view_label: "Orden"
    group_label: "Total"
    group_item_label: "Precio"
    label: "Total Precio"
  }

  measure: total_orden_precio_total_recurrente {
    type: sum_distinct
    sql_distinct_key: ${orden_srcid} ;;
    sql: ${orden_precio_total_recurrente} ;;
    view_label: "Orden"
    group_label: "Total"
    group_item_label: "Precio Recurrente"
    label: "Total Precio Recurrente"
  }

  measure: total_orden_precio_total_una_vez {
    type: sum_distinct
    sql_distinct_key: ${orden_srcid} ;;
    sql: ${orden_precio_total_una_vez} ;;
    view_label: "Orden"
    group_label: "Total"
    group_item_label: "Precio Una Vez"
    label: "Total Precio Una Vez"
  }

  measure: orden_count {
    type: count_distinct
    sql: ${orden_srcid} ;;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Ordenes"
    label: "Cantidad de Ordenes"
    description: "Cuenta Cantidad de ordenes distintas type: count_distinct sql: ${orden_srcid}"
  }

  measure: count_cambio_plan_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio de Plan (CAPLAN)"
    label: "Cantidad Cambio de Plan (CAPLAN)"
    description: "Negocio Movil - Cuenta todos los cambios de plan
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'CAMBIO DE PLAN'
    , orden_item_accion_nombre: 'AGREGAR'
    , orden_marca_cambio_producto: 'No'
    , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_item_accion_nombre: "AGREGAR"
      , orden_marca_cambio_producto: "No"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO"
    ]
  }

  measure: count_cambio_sim_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio de SIM"
    label: "Cantidad Cambio de SIM"
    description: "Negocio Movil - Cuenta Gestiones activadas de cambio de SIM
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_item_accion_nombre: 'CAMBIAR'
    , producto_tipo_nombre: 'TARJETA SIM'
    , orden_tipo_gestion_nombre: 'CAMBIO DE TARJETA SIM, CAMBIO DE TARJETA SIM POR SINIESTRO'"

    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "CAMBIAR"
      , producto_tipo_nombre: "TARJETA SIM"
      , orden_tipo_gestion_nombre: "CAMBIO DE TARJETA SIM, CAMBIO DE TARJETA SIM POR SINIESTRO"
    ]
  }

  measure: count_demanda_retencion {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Demanda Retencion"
    label: "Cantidad Demanda Retencion"
    description: "Intenciones de bajas,vistas desde las ordenes registradas"
    filters: [
      orden_estado_nombre:"ACTIVADA, INICIADA"
      , orden_tipo_gestion_nombre: "DESCONEXION, CAMBIO DE PLAN, BAJA / RETENCION, FIDELIZACION, VENTA"
      , orden_tipo_sub_gestion_nombre: "PEDIDO DE BAJA, RETENCION, CAMBIO DE PLAN, FIDELIZACION"
    ]
  }

  measure: count_upselling_plan {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio Plan Upselling"
    label: "Cantidad Cambio Plan Upselling"
    description: "Negocio Movil - Cuenta los cambios de plan  a plan Mayor
    type: count_distinct    sql: ${orden_srcid};FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_marca_cambio_producto: 'No'
    , orden_tipo_gestion_nombre: 'CAMBIO DE PLAN'
    , orden_tipo_cambio_plan_nombre: 'UPGRADE'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_marca_cambio_producto: "No"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "UPGRADE"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO"
    ]
  }

  measure: count_downselling_plan {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio Plan Downselling"
    label: "Cantidad Cambio Plan Downselling"
    description: "Negocio Movil - Cuenta los cambios de plan a plan Menor
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_marca_cambio_producto: 'No'
    , orden_tipo_gestion_nombre: 'CAMBIO DE PLAN'
    , orden_tipo_cambio_plan_nombre: 'DOWNGRADE'
    , orden_item_accion_nombre: 'AGREGAR'      , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_marca_cambio_producto: "No"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "DOWNGRADE"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO"
    ]
  }

  measure: count_cross_sell_plan {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio Plan Cross"
    label: "Cantidad Cambio Plan Cross"
    description: "Negocio Movil - Cuenta los cambios de plan, a planes de igual precio
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'CAMBIO DE PLAN'
    , orden_tipo_cambio_plan_nombre: 'CROSS SELL'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "CROSS SELL"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_venta_terminal_neta {
    type: count_distinct
    sql: ${orden_srcid} ;;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Venta Terminal Neta"
    label: "Venta Terminal Neta"
    description: "Negocio Movil/ cuenta ordenes de venta de terminales Activadas (Venta Neta)
    (type: count) FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'DISPOSITIVO'
    , orden_estado_trackeo_nombre: 'ENTREGADA'
    , orden_reemplazada_srcid: ''-1''
    , orden_tipo_gestion_nombre: 'VENTA, SERVICIOS Y OFERTAS ADICIONALES'
    , orden_tipo_sub_gestion_nombre: '(no informado), ALTA PROTECCION PERSONAL, VENTA, USO PROTECCION PERSONAL'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "DISPOSITIVO"
      , orden_estado_trackeo_nombre: "ENTREGADA"
      , orden_reemplazada_srcid: "'-1'"
      , orden_tipo_gestion_nombre: "VENTA, SERVICIOS Y OFERTAS ADICIONALES"
      , orden_tipo_sub_gestion_nombre: "(no informado), ALTA PROTECCION PERSONAL, VENTA, USO PROTECCION PERSONAL"
    ]
  }

  measure: count_venta_terminal_bruta {
    type: count_distinct
    sql: ${orden_srcid} ;;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Venta Terminal Bruta"
    label: "Venta Terminal Bruta"
    description: "Negocio Movil / Cuenta Solicitudes de venta de Terminales (Venta Bruta)
    (type: count) FILTROS:
    producto_tipo_nombre: 'DISPOSITIVO'
    , orden_item_accion_nombre: 'AGREGAR'
    , orden_estado_trackeo_nombre: '-CANCELADA - PROCESO MASIVO'
    , orden_reemplazada_srcid: ''-1''
    , orden_tipo_gestion_nombre: 'VENTA, SERVICIOS Y OFERTAS ADICIONALES'
    , orden_tipo_sub_gestion_nombre: '(no informado), ALTA PROTECCION PERSONAL, VENTA, USO PROTECCION PERSONAL'"
    filters: [
      producto_tipo_nombre: "DISPOSITIVO"
      , orden_item_accion_nombre: "AGREGAR"
      , orden_estado_trackeo_nombre: "-CANCELADA - PROCESO MASIVO"
      , orden_reemplazada_srcid: "'-1'"
      , orden_tipo_gestion_nombre: "VENTA, SERVICIOS Y OFERTAS ADICIONALES"
      , orden_tipo_sub_gestion_nombre: "(no informado), ALTA PROTECCION PERSONAL, VENTA, USO PROTECCION PERSONAL"
    ]
  }

  measure: count_portin_neto {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Portin Neto"
    label: "Portin Neto"
    description: "Negocio Movil - Cuenta las Solicitudes de Portabilidad Efectivas (Portin Neta)
    type: count_distinct    sql: ${orden_srcid};FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'PORTIN ACTIVAR'
    , orden_item_accion_nombre: 'EXISTENTE'
    , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO'
    , producto_familia_nombre: 'MOVIL'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "PORTIN ACTIVAR"
      , orden_item_accion_nombre: "EXISTENTE"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_portin_bruto {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Portin Bruto"
    label: "Portin Bruto"
    description: "Negocio Movil - Cuenta las Solicitudes de Portabilidad (Portin Bruta)
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA, CANCELADA'
    , orden_tipo_gestion_nombre: 'VENTA PORTIN'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO'
    , producto_familia_nombre: 'MOVIL"
    filters: [
      orden_estado_nombre: "ACTIVADA, CANCELADA"
      , orden_tipo_gestion_nombre: "VENTA PORTIN"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_alta_proteccion_personal {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Alta Proteccion Personal"
    label: "Negocio Movil/Cuenta Gestiones de Alta Proteccion Personal
    type: count_distinct    sql: ${orden_srcid};FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'VENTA, SERVICIOS Y OFERTAS ADICIONALES'
    , orden_tipo_sub_gestion_nombre: 'ALTA PROTECCION PERSONAL'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'PROTECCION'      , producto_familia_nombre: 'MOVIL'
    , orden_estado_trackeo_nombre: 'ENTREGADA, FACTURA EMITIDA, DESPACHADA, INICIADA, PENDIENTE DE ENTREGA, ENVIO A OM'
    , orden_reemplazada_srcid: ''-1''"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "VENTA, SERVICIOS Y OFERTAS ADICIONALES"
      , orden_tipo_sub_gestion_nombre: "ALTA PROTECCION PERSONAL"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PROTECCION"
      , producto_familia_nombre: "MOVIL"
      , orden_estado_trackeo_nombre: "ENTREGADA, FACTURA EMITIDA, DESPACHADA, INICIADA, PENDIENTE DE ENTREGA, ENVIO A OM"
      , orden_reemplazada_srcid: "'-1'"
    ]
  }

  measure: count_cambio_producto_downselling {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio Producto Downselling"
    label: "Cambio Producto Downselling"
    description: "Negocio Movil - Cuenta los Cambio Producto Downselling ( De plan con abono a Tarjeta)
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'CAMBIO DE PLAN'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'PLAN PREPAGO'
    , opa_producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO'
    , producto_familia_nombre: 'MOVIL'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN PREPAGO"
      , opa_producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_cambio_producto_capro {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Cambio Producto (CAPRO)"
    label: "Cambio Producto (CAPRO)"
    description: "Negocio Movil - Cuenta los Cambio Producto (CAPRO)
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'CAMBIO DE PLAN'
    , orden_item_accion_nombre: 'AGREGAR'
    , producto_tipo_nombre: 'PLAN POSPAGO, PLAN HIBRIDO'
    , opa_producto_tipo_nombre: 'PLAN PREPAGO'
    , producto_familia_nombre: 'MOVIL'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO"
      , opa_producto_tipo_nombre: "PLAN PREPAGO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_baja_suspension_portout_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Baja por suspension Portout"
    label: "Cantidad Baja por suspension Portout"
    description: "Negocio movil- Ordenes de suspension por Portout"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_tipo_sub_gestion_nombre: "PORTOUT"
      , orden_item_sub_accion_nombre: "SUSPENDER - PORTABILIDAD"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_baja_masiva {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Baja Masiva Por Tiempo"
    label: "Cantidad Baja Masiva Por Tiempo"
    description: "Gestion de Desconexion por operatoria masiva por tiempo Plan Prepago"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONEXION"
      , orden_tipo_sub_gestion_nombre: "POR TIEMPO"
      , orden_item_accion_nombre: "DESCONECTAR"
      , producto_tipo_nombre: "PLAN PREPAGO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_suspension_mora_total {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Suspensiones por Mora"
    label: "Cantidad de Suspensiones por Mora"
    description: "Suspensiones totales por mora Fija y Movil, incluye Degradacion, Mora 1 y Mora 2"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_item_accion_nombre: "SUSPENDER"
      , orden_item_sub_accion_nombre: "SUSPENDER - DEGRADACION, SUSPENDER - MORA 1, SUSPENDER - MORA 2"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, TV, INTERNET"
      , producto_familia_nombre: "MOVIL, FIJA"
    ]
  }

  measure: count_suspension_restriccion_comercial {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Suspension Restriccion Comercial"
    label: "Suspension Restriccion Comercial"
    description: "Negocio Movil/ cuenta gestiones de Restriccion de uso de proteccion personal, ante suspension por mora para dispositivos
    (  type: count_distinct    sql: ${orden_srcid};) FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'SUSPENSION'
    , orden_item_accion_nombre: 'SUSPENDER'
    , orden_item_sub_accion_nombre: 'SUSPENDER - RESTRICCION COMERCIAL'
    , producto_tipo_nombre: 'DISPOSITIVO'
    , producto_familia_nombre: 'MOVIL'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_item_accion_nombre: "SUSPENDER"
      , orden_item_sub_accion_nombre: "SUSPENDER - RESTRICCION COMERCIAL"
      , producto_tipo_nombre: "DISPOSITIVO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_baja_anulacion_venta_abono {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Anulaciones de Venta Movil"
    label: "Cantidad Anulaciones de Venta Movil"
    description: "Negocio Movil/Gestiones de desconexion por anulacion de venta, planes y dispositivos
    type: count_distinct    sql: ${orden_srcid}; FILTROS:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'DESCONEXION'
    , orden_tipo_sub_gestion_nombre: 'ANULACION DE VENTA'
    , orden_item_accion_nombre: 'DESCONECTAR'
    , producto_tipo_nombre: 'DISPOSITIVO, PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO'
    , producto_familia_nombre: 'MOVIL'      , producto_familia_nombre: 'MOVIL'"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONEXION"
      , orden_tipo_sub_gestion_nombre: "ANULACION DE VENTA"
      , orden_item_accion_nombre: "DESCONECTAR"
      , producto_tipo_nombre: "DISPOSITIVO, PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
      , producto_familia_nombre: "MOVIL"
    ]
  }

  measure: count_baja_voluntaria_efectiva_fija {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Baja Voluntaria"
    label: "Cantidad Baja Voluntaria"
    description: "Negocio Fija /Movil - Ordenes de desconexion por pedido de baja de cliente (baja voluntaria)"
    filters: [
      orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONEXION"
      , orden_tipo_sub_gestion_nombre: "PEDIDO DE BAJA"
      , orden_item_accion_nombre: "DESCONECTAR"
      , producto_tipo_nombre: "TV"
    ]
  }

  measure: count_retenido_oferta_cambio_plan {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "Retenido Oferta Cambio Plan"
    label: "Retenido Oferta Cambio Plan"
    description: "Retenidos con oferta o cambios de plan"
    filters: [
      caso_tipo_nombre: "CAMBIO DE PLAN, VENTA"
      , caso_sub_tipo_nombre: "RETENCION, FIDELIZACION"
      , orden_tipo_gestion_nombre: "VENTA, CAMBIO DE PLAN"
      , orden_tipo_sub_gestion_nombre: "RETENCION, FIDELIZACION"
      , orden_canal_origen_nombre: "-OPERATORIA MASIVA"
      , orden_item_accion_nombre: "-DESCONECTAR"
      , orden_estado_nombre: "ACTIVADA"
      , producto_tipo_nombre: "PLAN HIBRIDO, PLAN POSPAGO"
      , opa_producto_tipo_nombre: "-PLAN PREPAGO"
    ]
  }

  measure: count_no_retenido_cambio_mercado {
    type: count_distinct
    sql: ${orden_srcid};;
    view_label: "Orden"
    group_label: "Cantidad"
    group_item_label: "No Retenido Cambio Mercado"
    label: "No Retenido Cambio Mercado"
    description: "No retenido pase a prepago."
    filters: [
      caso_tipo_nombre: "CAMBIO DE PLAN"
      , caso_sub_tipo_nombre: "RETENCION"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_sub_gestion_nombre: "RETENCION"
      , orden_estado_nombre: "ACTIVADA"
      , producto_tipo_nombre: "PLAN PREPAGO"
      , opa_producto_tipo_nombre: "PLAN HIBRIDO, PLAN POSPAGO"
      , orden_tipo_cambio_plan_nombre: "DOWNGRADE"
    ]
  }

  measure: total_orden_bajas_totales {
    type: sum
    sql: ${orden_bajas_totales} ;;
    view_label: "Orden"
    group_label: "Cantidad"
    label: "Bajas Totales"
    description: "Incluye todos los motivos de baja de abonos + suspensiones Portout Fija y Movil"
  }

  measure: total_orden_suspensiones_totales {
    type: sum
    sql: ${orden_suspensiones_totales} ;;
    view_label: "Orden"
    group_label: "Cantidad"
    label: "Suspensiones Totales"
    description: "Incluye todos los motivos de suspension menos por Portout Fija y Movil"
  }

  measure: total_orden_volte {
    type: sum
    sql: ${orden_volte} ;;
    view_label: "Orden"
    group_label: "Cantidad"
    label: "Volte"
    description: "Negocio Fija / Cuenta ordenes de migracion/Alta de linea fija inalambrica
    COUNT(DISTINCT fth_orden.Orden.OrdenNumeroComprobante ) Filtros:
    orden_estado_nombre: 'ACTIVADA'
    , orden_tipo_gestion_nombre: 'VENTA'
    , orden_tipo_sub_gestion_nombre: 'CAMBIO DE TECNOLOGIA'
    , producto_tipo_nombre: 'TELEFONIA'
    , producto_subtipo_nombre: 'VOLTE'
    , producto_familia_nombre: 'FIJA'"
  }

  ## Orden Plan Anterior

  measure: total_opa_orden_item_cargo_recurrente {
    type: sum
    sql: ${opa_orden_item_cargo_recurrente} ;;
    view_label: "Orden Plan Anterior"
    group_label: "Total"
    group_item_label: "Orden Item Cargo Recurrente"
    label: "Total Orden Item Cargo Recurrente"
  }

  measure: total_opa_orden_item_precio_calculado_recurrente {
    type: sum
    sql: ${opa_orden_item_precio_calculado_recurrente} ;;
    view_label: "Orden Plan Anterior"
    group_label: "Total"
    group_item_label: "Orden Item Precio Calculado Recurrente"
    label: "Total Orden Item Precio Calculado Recurrente"
  }
}

#################################
### Nested Attributes - Views ###
#################################

###################
## Medio de Pago ##
###################

view: fth_orden_medio_pago {

  ## Strings

  dimension: medio_pago_entidad_financiera_nombre {
    type: string
    sql: MedioPagoEntidadFinancieraNombre ;;
    label: "Entidad Financiera"
    description: "Es el nombre de la entidad de pago"
  }

  dimension: medio_pago_cuenta_bancaria_tipo_nombre {
    type: string
    sql: MedioPagoCuentaBancariaTipoNombre ;;
    label: "Tipo Cuenta Bancaria"
  }

  dimension: medio_pago_tipo_nombre {
    type: string
    sql: MedioPagoTipoNombre ;;
    label: "Tipo"
    description: "Es el Metodo usado de pago (Efectivo/Tarjeta/etc)"
  }

  dimension: medio_pago_nombre {
    type: string
    sql: MedioPagoNombre ;;
    label: "Nombre"
    description: "Es el numero de Payment Method (donde se guardan los datos de la transaccion)"
  }

  dimension: medio_pago_tarjeta_tipo_nombre {
    type: string
    sql: MedioPagoTarjetaTipoNombre ;;
    label: "Tipo Tarjeta"
  }

  ## Flags

  dimension: medio_pago_marca_principal {
    type: yesno
    sql: MedioPagoMarcaPrincipal ;;
    label: "Es Principal"
  }

  ## Hidden

  dimension: medio_pago_entidad_financiera_srcid {
    hidden: yes
    type: string
    sql: MedioPagoEntidadFinancieraSRCId ;;
  }

  dimension: medio_pago_cuenta_bancaria_tipo_srcid {
    hidden: yes
    type: string
    sql: MedioPagoCuentaBancariaTipoSRCId ;;
  }

  dimension: medio_pago_tipo_srcid {
    hidden: yes
    type: string
    sql: MedioPagoTipoSRCId ;;
  }

  dimension: medio_pago_srcid {
    hidden: yes
    type: string
    sql: MedioPagoSRCId ;;
  }

  dimension: medio_pago_tarjeta_tipo_srcid {
    hidden: yes
    type: string
    sql: MedioPagoTarjetaTipoSRCId ;;
  }
}

###############
## Promocion ##
###############

view: fth_orden_promocion {

## Dimensions

  ## Dates
  dimension_group: orden_precio_fecha_desde_src {
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
    sql: OrdenPrecioFechaDesdeSRC ;;
    group_label: "Fecha Inicio Ajuste"
    label: "Inicio Ajuste"
    description: "Fecha estimada de inicio de este precio, cargo o ajuste."
  }

  dimension_group: orden_precio_fecha_estimada_src {
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
    sql: OrdenPrecioFechaEstimadaSRC ;;
    group_label: "Fecha Fin Ajuste"
    label: "Fin Ajuste"
    description: "Fecha estimada de fin de este precio, cargo o ajuste."
  }

  dimension_group: orden_precio_fecha_modificacion_src {
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
    sql: OrdenPrecioFechaModificacionSRC ;;
    group_label: "Fecha Modificacion Ajuste"
    label: "Modificacion Ajuste"
    description: "Fecha de modificacion de este precio, cargo o ajuste."
  }

  dimension_group: orden_precio_fecha_creacion_src {
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
    sql: OrdenPrecioFechaCreacionSRC ;;
    group_label: "Fecha Creacion Ajuste"
    label: "Creacion Ajuste"
    description: "Fecha de creacion de este precio, cargo o ajuste."
  }

  dimension_group: promocion_fecha_creacion_src {
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
    sql: PromocionFechaCreacionSRC ;;
    group_label: "Fecha Creacion Promo"
    label: "Creacion Promo"
    description: "Fecha de creacion de la promocion."
  }

  dimension_group: promocion_fecha_modificacion_src {
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
    sql: PromocionFechaModificacionSRC ;;
    group_label: "Fecha Modificacion Promo"
    label: "Modificacion Promo"
    description: "Fecha de modificacion de la promocion."
  }

  dimension_group: promocion_fecha_efectiva_inicio_src {
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
    sql: PromocionFechaEfectivaInicioSRC ;;
    group_label: "Fecha Inicio Promo"
    label: "Inicio Promo"
    description: "Fecha de inicio de la promocion."
  }

  dimension_group: promocion_fecha_efectiva_fin_src {
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
    sql: PromocionFechaEfectivaFinSRC ;;
    group_label: "Fecha Fin Promo"
    label: "Fin Promo"
    description: "Fecha de fin de la promocion."
  }

  ## Strings
  dimension: orden_precio_accion_nombre {
    type: string
    sql: OrdenPrecioAccionNombre ;;
    suggest_dimension: lk_orden_precio_accion.orden_precio_accion_nombre
    label: "Accion"
    description: "La acción solicitada en esta orden para este precio, cargo o ajuste con valores como Agregar, Cambiar, Desconectar, Existente."
  }

  dimension: orden_precio_fuente_nombre {
    type: string
    sql: OrdenPrecioFuenteNombre ;;
    suggest_dimension: lk_orden_precio_fuente.orden_precio_fuente_nombre
    label: "Fuente"
    description: "La fuente de este precio, cargo o ajuste, como 'Agente' para ajustes por escrito, 'Promoción' para precios promocionales u 'Oferta' para precios específicos de la oferta."
  }

  dimension: promocion_id {
    type: string
    sql: PromocionSRCId ;;
    label: "ID"
    description: "Id de la promo o ajuste."
  }

  dimension: promocion_nombre {
    type: string
    sql: PromocionNombre ;;
    label: "Nombre"
    description: "Nombre de la promo o ajuste."
  }

  dimension: promocion_codigo {
    type: string
    sql: PromocionCodigo ;;
    label: "Codigo"
    description: "Código de la Promo o ajuste con lo que se la configura."
  }

  dimension: promocion_descripcion {
    type: string
    sql: PromocionDescripcion ;;
    label: "Descripcion"
    description: "Detalle del contenido de la promo o ajuste."
  }

  dimension: lista_precio_srcid {
    type: string
    sql: ListaPrecioSRCId ;;
    label: "Precio de Lista"
    description: "Precio de Lista."
  }

  ## Flags
  dimension: promocion_marca_activa {
    type: yesno
    sql: PromocionMarcaActiva ;;
    label: "Promocion Activa"
    description: "Marca que muestra si la promo esta activa o no."
  }

  ## Hidden
  dimension: orden_precio_valor_ajuste {
    hidden: yes
    type: number
    sql: OrdenPrecioValorAjuste ;;
  }

  dimension: orden_precio_accion_sk {
    hidden: yes
    type: number
    sql: OrdenPrecioAccionSK ;;
  }

  dimension: orden_precio_fuente_sk {
    hidden: yes
    type: number
    sql: OrdenPrecioFuenteSK ;;
  }

## Measures
  measure: total_orden_precio_valor_ajuste {
    type: sum
    sql: ${orden_precio_valor_ajuste} ;;
    label: "Valor Ajuste"
    description: "Muestra el valor por escrito, porcentual o nominal del ajuste."
  }
}
