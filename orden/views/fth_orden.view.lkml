view: fth_orden {
  sql_table_name: @{gcp_dataset_pub}.FTH_Orden` ;;
  suggestions: no
  label: "Orden Item"

  ################
  ## Orden Item ##
  ################

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${fecha_entidad} AS STRING FORMAT 'YYYYMMDD'),'-',${orden_item_srcid});;
  }

    ## Nested Fields

  dimension: medio_pago {
    hidden: yes
    sql: ${TABLE}.MedioPago ;;
  }

    ## Dates

  dimension: fecha_entidad {
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    convert_tz: no
    datatype: date
    label: "Fecha Entidad"
    description: "Se utiliza para consultar el estado de los datos al cierre de un dia determinado donde cada dia contiene la totalidad de los registros historicos almacenados hasta esa fecha."
  }

  dimension: orden_item_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.OrdenItemFechaCreacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Creacion"
  }

  dimension: orden_item_fecha_modificacion_src {
    type: date_time
    sql: ${TABLE}.Fechas.OrdenItemFechaModificacionSRC ;;
    datatype: timestamp
    group_label: "Fechas"
    group_item_label: "Fecha Modificacion"
  }

  ## Flags

  dimension: orden_item_marca_facturable {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenItemMarcaFacturable ;;
    group_label: "Marcas"
    group_item_label: "Marca Facturable"
  }

  dimension: orden_item_marca_no_provisionable {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenItemMarcaNoProvisionable ;;
    group_label: "Marcas"
    group_item_label: "Marca No Provisionable"
  }

  dimension: orden_item_requiere_cambio_dispositivo {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenItemRequiereCambioDispositivo ;;
    group_label: "Marcas"
    group_item_label: "Requiere Cambio Dispositivo"
  }

    ## Strings

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
    type: string
    sql: ${TABLE}.OrdenItemInstanciaSRCId ;;
    label: "Instancia Id"
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

  dimension: orden_item_srcid {
    type: string
    sql: ${TABLE}.OrdenItemSRCId ;;
    label: "Id"
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
    label: "Origen Id"
  }

  dimension: orden_item_mrc {
    type: number
    sql: ${TABLE}.OrdenItemMRC ;;
    label: "MRC"
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

  ##########
  ## Caso ##
  ##########

    ## Dates

  dimension: caso_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Caso.Fechas.CasoFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Caso"
    group_label: "Fechas"
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
    label: "Mercado Donante Portacion Id"
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
    label: "Operadora Receptora Id"
  }

  dimension: caso_padre_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoPadreSRCId ;;
    view_label: "Caso"
    label: "Padre Id"
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
    label: "Red Portacion Nombre"
  }

  dimension: caso_srcid {
    type: string
    sql: ${TABLE}.Caso.CasoSRCId ;;
    view_label: "Caso"
    label: "Id"
  }

  dimension: caso_tema_nombre {
    type: string
    sql: ${TABLE}.Caso.CasoTemaNombre ;;
    view_label: "Caso"
    label: "Tema"
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
    group_item_label: "Fecha Creacion HW"
  }

  dimension: persona_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Cliente.Fechas.PersonaFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Cliente"
    group_label: "Fechas"
    group_item_label: "Fecha Creacion Persona"
  }

  dimension: persona_fecha_nacimiento {
    type: date
    sql: ${TABLE}.Cliente.PersonaFechaNacimiento ;;
    datatype: date
    convert_tz: no
    view_label: "Cliente"
    group_label: "Fechas"
    group_item_label: "Fecha Nacimiento Persona"
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
    label: "Tipo Documento Nombre"
  }

  dimension: cuenta_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.CuentaTipoNombre ;;
    suggest_dimension: lk_cuenta_tipo.cuenta_tipo_nombre
    view_label: "Cliente"
    label: "Cuenta Tipo Nombre"
  }

  dimension: cliente_tipo_nombre {
    type: string
    sql: ${TABLE}.Cliente.ClienteTipoNombre ;;
    suggest_dimension: lk_cliente_tipo.cliente_tipo_nombre
    view_label: "Cliente"
    label: "Tipo Nombre"
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
    label: "Persona Contacto Id"
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
    label: "Id"
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
    label: "Cuenta Cliente Id"
  }

  dimension: cuenta_domicilio_envio_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioEnvioSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Domicilio Envio Id"
  }

  dimension: cuenta_domicilio_facturacion_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaDomicilioFacturacionSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Domicilio Facturacion Id"
  }

  dimension: cuenta_srcid {
    type: string
    sql: ${TABLE}.Cliente.CuentaSRCId ;;
    view_label: "Cliente"
    label: "Cuenta Id"
  }

  dimension: persona_apellido {
    type: string
    sql: ${TABLE}.Cliente.PersonaApellido ;;
    view_label: "Cliente"
    label: "Persona Apellido"
  }

  dimension: persona_documento_numero {
    type: string
    sql: ${TABLE}.Cliente.PersonaDocumentoNumero ;;
    view_label: "Cliente"
    label: "Persona Documento Numero"
  }

  dimension: persona_email {
    type: string
    sql: ${TABLE}.Cliente.PersonaEmail ;;
    view_label: "Cliente"
    label: "Persona Email"
  }

  dimension: persona_nombre {
    type: string
    sql: ${TABLE}.Cliente.PersonaNombre ;;
    view_label: "Cliente"
    label: "Persona Nombre"
  }

  dimension: persona_srcid {
    type: string
    sql: ${TABLE}.Cliente.PersonaSRCId ;;
    view_label: "Cliente"
    label: "Persona Id"
  }

    ## Numbers

  dimension: persona_edad {
    type: number
    sql: ${TABLE}.Cliente.PersonaEdad ;;
    view_label: "Cliente"
    label: "Persona Edad"
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

  ###########
  ## Orden ##
  ###########

    ## Dates

  dimension: orden_ejecucion_cambio_ciclo_fecha_src {
    type: date
    sql: ${TABLE}.Orden.Fechas.OrdenEjecucionCambioCicloFechaSRC ;;
    convert_tz: no
    datatype: date
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Orden Ejecucion Cambio Ciclo"
  }

  dimension: orden_fecha_activacion_src {
    type: date_time
    sql: ${TABLE}.Orden.Fechas.OrdenFechaActivacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Activacion"
  }

  dimension: orden_fecha_creacion_src {
    type: date_time
    sql: ${TABLE}.Orden.Fechas.OrdenFechaCreacionSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Creacion"
  }

  dimension: orden_fecha_entrega_src {
    type: date
    sql: ${TABLE}.Orden.Fechas.OrdenFechaEntregaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Entrega"
  }

  dimension: orden_fecha_fin_src {
    type: date
    sql: ${TABLE}.Orden.Fechas.OrdenFechaFinSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Fin"
  }

  dimension: orden_fecha_inicio_src {
    type: date
    sql: ${TABLE}.Orden.Fechas.OrdenFechaInicioSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Inicio"
  }

  dimension: orden_fecha_mod_src {
    type: date_time
    sql: ${TABLE}.Orden.Fechas.OrdenFechaModSRC ;;
    datatype: timestamp
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Mod"
  }

  dimension: orden_fecha_venta_src {
    type: date
    sql: ${TABLE}.Orden.Fechas.OrdenFechaVentaSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Orden"
    group_label: "Fechas"
    group_item_label: "Fecha Venta"
  }

    ## Flags

  dimension: orden_marca_batch {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaBatch ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Batch"
  }

  dimension: orden_marca_cambio_mercado {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaCambioMercado ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Cambio Mercado"
  }

  dimension: orden_marca_cambio_producto {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaCambioProducto ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Cambio Producto"
  }

  dimension: orden_marca_campania {
    type: yesno
    sql: ${TABLE}.Marcas.OrdenMarcaCampania ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Campania"
  }

  dimension: orden_marca_cierre_parcial {
    type: yesno
    sql: ${TABLE}.Orden.OrdenMarcaCierreParcial ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Cierre Parcial"
  }

  dimension: orden_prefactibilidad_flow {
    type: yesno
    sql: ${TABLE}.Orden.OrdenPrefactibilidadFLOW ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Prefactibilidad Flow"
  }

  dimension: orden_prefactibilidad_toip {
    type: yesno
    sql: ${TABLE}.Orden.OrdenPrefactibilidadTOIP ;;
    view_label: "Orden"
    group_label: "Marcas"
    group_item_label: "Es Prefactibilidad TOIP"
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
    label: "Tipo Sub Gestion"
  }

  dimension: orden_tipo_cambio_plan_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenTipoCambioPlanNombre ;;
    suggest_dimension: lk_orden_tipo_cambio_plan.orden_tipo_cambio_plan_nombre
    view_label: "Orden"
    label: "Tipo Cambio Plan"
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
  }

  dimension: orden_canal_origen_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenCanalOrigenNombre ;;
    suggest_dimension: lk_orden_canal_origen.orden_canal_origen_nombre
    view_label: "Orden"
    label: "Canal Origen"
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
    label: "Estado Validado Cliente Nombre"
  }

  dimension: orden_grupo_trabajo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenGrupoTrabajoNombre ;;
    view_label: "Orden"
    label: "Grupo Trabajo Nombre"
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
    label: "Llamada Padre Id"
  }

  dimension: orden_llamada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenLlamadaSRCId ;;
    view_label: "Orden"
    label: "Llamada Id"
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
    label: "Campania Id"
  }

  dimension: domicilio_direccion_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.DomicilioDireccionEntregaSRCId ;;
    view_label: "Orden"
    label: "Domicilio Direccion Entrega Id"
  }

  dimension: metodo_pago_srcid {
    type: string
    sql: ${TABLE}.Orden.MetodoPagoSRCId ;;
    view_label: "Orden"
    label: "Metodo Pago Id"
  }

  dimension: orden_ciclo_facturacion {
    type: string
    sql: ${TABLE}.Orden.OrdenCicloFacturacion ;;
    view_label: "Orden"
    label: "Ciclo Facturacion"
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
    label: "Contacto Nombre"
  }

  dimension: orden_cuenta_facturacion_predeterminada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaFacturacionPredeterminadaSRCId ;;
    view_label: "Orden"
    label: "Cuenta Facturacion Predeterminada Id"
  }

  dimension: orden_cuenta_facturacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaFacturacionSRCId ;;
    view_label: "Orden"
    label: "Cuenta Facturacion Id"
  }

  dimension: orden_cuenta_servicio_predeterminada_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenCuentaServicioPredeterminadaSRCId ;;
    view_label: "Orden"
    label: "Cuenta Servicio Predeterminada Id"
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
    label: "Direccion Instalacion Id"
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
  }

  dimension: orden_motivo_anulacion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenMotivoAnulacionNombre ;;
    view_label: "Orden"
    label: "Motivo Anulacion Nombre"
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
  }

  dimension: orden_numero_pre_factura {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroPreFactura ;;
    view_label: "Orden"
    group_item_label: "Orden Numero Pre Factura"
  }

  dimension: orden_numero_seguimiento {
    type: string
    sql: ${TABLE}.Orden.OrdenNumeroSeguimiento ;;
    view_label: "Orden"
    label: "Numero Seguimiento"
  }

  dimension: orden_original_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenOriginalSRCId ;;
    view_label: "Orden"
    label: "Original Id"
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
    label: "Reemplazada Id"
  }

  dimension: orden_seguimiento_entrega_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenSeguimientoEntregaSRCId ;;
    view_label: "Orden"
    label: "Seguimiento Entrega Id"
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
    label: "Id"
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
    label: "Transaccion Entrega Id"
  }

  dimension: orden_usuario_activacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenUsuarioActivacionSRCId ;;
    view_label: "Orden"
    label: "Usuario Activacion Id"
  }

  dimension: orden_usuario_creacion_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenUsuarioCreacionSRCId ;;
    view_label: "Orden"
    label: "Usuario Creacion Id"
  }

  dimension: orden_usuario_mod_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenUsuarioModSRCId ;;
    view_label: "Orden"
    label: "Usuario Mod Id"
  }

    ## Numbers

  dimension: orden_cft {
    type: number
    sql: ${TABLE}.Orden.OrdenCFT ;;
    view_label: "Orden"
    label: "CFT"
  }

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
    group_item_label: "Fecha Creacion"
  }

  dimension: producto_fecha_modificacion_src {
    type: date_time
    sql: ${TABLE}.Producto.Fechas.ProductoFechaModificacionSRC ;;
    datatype: timestamp
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Fecha Modificacion"
  }

  dimension: producto_vigencia_desde_src {
    type: date
    sql: ${TABLE}.Producto.Fechas.ProductoVigenciaDesdeSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Vigencia Desde"
  }

  dimension: producto_vigencia_hasta_src {
    datatype: date
    sql: ${TABLE}.Producto.Fechas.ProductoVigenciaHastaSRC ;;
    type: date_time
    convert_tz: no
    view_label: "Producto"
    group_label: "Fechas"
    group_item_label: "Vigencia Hasta"
  }

    ## Flags

  dimension: producto_marca_activo {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaActivo ;;
    view_label: "Producto"
    group_label: " Marcas"
    group_item_label: " Es Activo"
  }

  dimension: producto_marca_configurable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaConfigurable ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Es Configurable"
  }

  dimension: producto_marca_no_assetizable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaNoAssetizable ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: " Es No Assetizable"
  }

  dimension: producto_marca_orderable {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaOrderable ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Es Marca Orderable"
  }

  dimension: producto_marca_pertenece_bundle {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaPerteneceBundle ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: " Es Bundle"
  }

  dimension: producto_marca_principal {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaPrincipal ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Es Principal"
  }

  dimension: producto_marca_tangible {
    type: yesno
    sql: ${TABLE}.Producto.Marcas.ProductoMarcaTangible ;;
    view_label: "Producto"
    group_label: "Marcas"
    group_item_label: "Es Tangible"
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
    label: "Sistema Origen Codigo"
  }

  dimension: producto_sistema_origen_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenDescripcion ;;
    view_label: "Producto"
    label: "Sistema Origen Descripcion"
  }

  dimension: producto_sistema_origen_intid {
    type: string
    sql: ${TABLE}.Producto.ProductoSistemaOrigenINTId ;;
    view_label: "Producto"
    label: "Sistema Origen Int Id"
  }

  dimension: producto_srcid {
    type: string
    sql: ${TABLE}.Producto.ProductoSRCId ;;
    view_label: "Producto"
    label: "Id"
  }

  dimension: producto_tipo_objeto_descripcion {
    type: string
    sql: ${TABLE}.Producto.ProductoTipoObjetoDescripcion ;;
    view_label: "Producto"
    label: "Tipo Objeto Descripcion"
  }

  dimension: orden_item_producto_padre_srcid {
    type: string
    sql: ${TABLE}.Producto.OrdenItemProductoPadreSRCId ;;
    view_label: "Producto"
    label: "Orden Item Producto Padre Id"
  }

  dimension: orden_item_producto_raiz_srcid {
    type: string
    sql: ${TABLE}.Producto.OrdenItemProductoRaizSRCId ;;
    view_label: "Producto"
    group_item_label: "Orden Item Producto Raiz Id"
  }

  dimension: producto_codigo {
    type: string
    sql: ${TABLE}.Producto.ProductoCodigo ;;
    view_label: "Producto"
    group_item_label: "Codigo"
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
    group_item_label: "Fecha Baja"
  }

  dimension: producto_adquirido_fecha_compra_src {
    type: date_time
    sql: ${TABLE}.ProductoAdquirido.Fechas.ProductoAdquiridoFechaCompraSRC ;;
    datatype: date
    convert_tz: no
    view_label: "Producto Adquirido"
    group_label: "Fechas"
    group_item_label: "Fecha Compra"
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
    label: "Producto Adquirido Iccidsrcid"
  }

  dimension: producto_adquirido_imei {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoIMEI ;;
    view_label:: "Producto Adquirido"
    label: "IMEI"
  }

  dimension: producto_adquirido_marca_producto {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoMarcaProducto ;;
    view_label:: "Producto Adquirido"
    label: "Marca"
  }

  dimension: producto_adquirido_modelo_producto {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoModeloProducto ;;
    view_label:: "Producto Adquirido"
    label: "Modelo"
  }

  dimension: producto_adquirido_nmu {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNMU ;;
    view_label:: "Producto Adquirido"
    label: "NMU"
  }

  dimension: producto_adquirido_numero_linea {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoNumeroLinea ;;
    view_label:: "Producto Adquirido"
    label: "Numero Linea"
  }

  dimension: producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoReferenteSRCId ;;
    view_label:: "Producto Adquirido"
    label: "Referente Srcid"
  }

  dimension: producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.ProductoAdquirido.ProductoAdquiridoSRCId ;;
    view_label: "Producto Adquirido"
    label: "Srcid"
  }

  dimension: rango_numeracion_departamento_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionDepartamentoNombre ;;
    view_label: "Producto Adquirido"
    label: "Rango Numeracion Departamento Nombre"
  }

  dimension: rango_numeracion_localidad_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionLocalidadNombre ;;
    view_label: "Producto Adquirido"
    label: "Rango Numeracion Localidad Nombre"
  }

  dimension: rango_numeracion_provincia_nombre {
    type: string
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionProvinciaNombre ;;
    view_label: "Producto Adquirido"
    label: "Rango Numeracion Provincia Nombre"
  }

    ## Numbers

  dimension: rango_numeracion_prefijo_interurbano {
    type: number
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionPrefijoInterurbano ;;
    group_label: "Producto Adquirido"
    group_item_label: "Rango Numeracion Prefijo Interurbano"
  }

  dimension: rango_numeracion_prefijo_urbano {
    type: number
    sql: ${TABLE}.ProductoAdquirido.RangoNumeracionPrefijoUrbano ;;
    group_label: "Producto Adquirido"
    group_item_label: "Rango Numeracion Prefijo Urbano"
  }

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

  dimension: es_numero_linea {
    type: yesno
    sql: LENGHT(TRIM(${producto_adquirido_numero_linea})) = 10 ;;
  }

  ###############
  ## Domicilio ##
  ###############

    ## Strings

  dimension: domicilio_codigo_postal_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalEnv ;;
    view_label: "Domicilio"
    label: "Codigo Postal Env"
  }

  dimension: domicilio_codigo_postal_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioCodigoPostalFact ;;
    view_label: "Domicilio"
    label: "Codigo Postal Fact"
  }

  dimension: domicilio_planta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaEnv ;;
    view_label: "Domicilio"
    label: "Planta Env"
  }

  dimension: domicilio_planta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPlantaFact ;;
    view_label: "Domicilio"
    label: "Planta Fact"
  }

  dimension: domicilio_puerta_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaEnv ;;
    view_label: "Domicilio"
    label: "Puerta Env"
  }

  dimension: domicilio_puerta_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioPuertaFact ;;
    view_label: "Domicilio"
    label: "Puerta Fact"
  }

  dimension: domicilio_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioSRCIdEnv ;;
    view_label: "Domicilio"
    label: "Srcid Env"
  }

  dimension: domicilio_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.DomicilioSRCIdFact ;;
    view_label: "Domicilio"
    label: "Srcid Fact"
  }

  dimension: localidad_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadSRCIdEnv ;;
    view_label: "Domicilio"
    label: "Localidad Srcid Env"
  }

  dimension: localidad_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.LocalidadSRCIdFact ;;
    view_label: "Domicilio"
    label: "Localidad Srcid Fact"
  }

  dimension: nombre_calle_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleEnv ;;
    view_label: "Domicilio"
    label: "Nombre Calle Env"
  }

  dimension: nombre_calle_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreCalleFact ;;
    view_label: "Domicilio"
    label: "Nombre Calle Fact"
  }

  dimension: nombre_localidad_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadEnv ;;
    view_label: "Domicilio"
    label: "Nombre Localidad Env"
  }

  dimension: nombre_localidad_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreLocalidadFact ;;
    view_label: "Domicilio"
    label: "Nombre Localidad Fact"
  }

  dimension: nombre_provincia_env {
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaEnv ;;
    view_label: "Domicilio"
    label: "Nombre Provincia Env"
  }

  dimension: nombre_provincia_fact {
    type: string
    sql: ${TABLE}.Domicilio.NombreProvinciaFact ;;
    view_label: "Domicilio"
    label: "Nombre Provincia Fact"
  }

  dimension: provincia_srcid_env {
    type: string
    sql: ${TABLE}.Domicilio.ProvinciaSRCIdEnv ;;
    view_label: "Domicilio"
    label: "Provincia Srcid Env"
  }

  dimension: provincia_srcid_fact {
    type: string
    sql: ${TABLE}.Domicilio.ProvinciaSRCIdFact ;;
    view_label: "Domicilio"
    label: "Provincia Srcid Fact"
  }

    ## Numbers

  dimension: domicilio_latitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudEnv ;;
    view_label: "Domicilio"
    label: "Latitud Env"
  }

  dimension: domicilio_latitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLatitudFact ;;
    view_label: "Domicilio"
    label: "Latitud Fact"
  }

  dimension: domicilio_longitud_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudEnv ;;
    view_label: "Domicilio"
    label: "Longitud Env"
  }

  dimension: domicilio_longitud_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioLongitudFact ;;
    view_label: "Domicilio"
    label: "Longitud Fact"
  }

  dimension: domicilio_numero_env {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroEnv ;;
    view_label: "Domicilio"
    label: "Numero Env"
  }

  dimension: domicilio_numero_fact {
    type: number
    sql: ${TABLE}.Domicilio.DomicilioNumeroFact ;;
    view_label: "Domicilio"
    label: "Numero Fact"
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
    label: "Producto Sub Tipo Nombre"
  }

  dimension: opa_orden_estado_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenEstadoNombre ;;
    suggest_dimension: lk_orden_estado_opa.orden_estado_nombre
    view_label: "Orden Plan Anterior"
    label: "Orden Estado Nombre"
  }

  dimension: opa_orden_item_accion_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemAccionNombre ;;
    suggest_dimension: lk_orden_item_accion_opa.orden_item_accion_nombre
    view_label: "Orden Plan Anterior"
    label: "Orden Item Accion Nombre"
  }

  dimension: opa_producto_tipo_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoTipoNombre ;;
    suggest_dimension: lk_producto_tipo_opa.producto_tipo_nombre
    view_label: "Orden Plan Anterior"
    label: "Producto Tipo Nombre"
  }

  dimension: opa_orden_item_producto_padre_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemProductoPadreSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Orden Item Producto Padre Id"
  }

  dimension: opa_orden_item_producto_raiz_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemProductoRaizSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Orden Item Producto Raiz Id"
  }

  dimension: opa_orden_item_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.OrdenItemSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Orden Item Id"
  }

  dimension: opa_producto_adquirido_referente_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoAdquiridoReferenteSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Adquirido Referente Id"
  }

  dimension: opa_producto_adquirido_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoAdquiridoSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Adquirido Id"
  }

  dimension: opa_producto_codigo {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoCodigo ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Codigo"
  }

  dimension: opa_producto_nombre {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoNombre ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Nombre"
  }

  dimension: opa_producto_srcid {
    type: string
    sql: ${TABLE}.Orden.OrdenPlanAnterior.ProductoSRCId ;;
    view_label: "Orden Plan Anterior"
    label: "Producto Id"
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
    label: "Localidad Id"
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
    label: "Id"
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
    label: "Id"
  }

##############
## Measures ##
##############

  ## Orden Item

  measure: total_orden_item_cantidad {
    type: sum
    sql: ${orden_item_cantidad};;
    group_label: "Orden Item"
    group_item_label: "Total Orden Item"
  }

  measure: total_orden_item_cargo_recurrente {
    type: sum
    sql: ${orden_item_cargo_recurrente} ;;
    group_label: "Orden Item"
    group_item_label: "Total Cargo Recurrente"
  }

  measure: total_orden_item_cargo_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_cargo_recurrente_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Cargo Recurrente Sin Impuesto"
  }

  measure: total_orden_item_cargo_unica_vez {
    type: sum
    sql: ${orden_item_cargo_unica_vez} ;;
    group_label: "Orden Item"
    group_item_label: "Total Cargo Unica Vez"
  }

  measure: total_orden_item_precio_calculado_recurrente {
    type: sum
    sql: ${orden_item_precio_calculado_recurrente} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Calculado Recurrente"
  }

  measure: total_orden_item_precio_calculado_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_calculado_recurrente_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Calculado Recurrente Sin Impuesto"
  }

  measure: total_orden_item_precio_dcto_unica_vez {
    type: sum
    sql: ${orden_item_precio_dcto_unica_vez} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Descuento Unica Vez"
  }

  measure: total_orden_item_precio_dcto_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_dcto_unica_vez_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Dcto Unica Vez Sin Impuesto"
  }

  measure: total_orden_item_precio_efectivo_unica_vez {
    type: sum
    sql: ${orden_item_precio_efectivo_unica_vez} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Efectivo Unica Vez"
  }

  measure: total_orden_item_precio_efectivo_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_efectivo_unica_vez_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Efectivo Unica Vez Sin Impuesto"
  }

  measure: total_orden_item_precio_lista {
    type: sum
    sql: ${orden_item_precio_lista} ;;
    group_label: "Orden Item"
    group_item_label: "Total Orden Item Precio Lista"
  }

  measure: total_orden_item_precio_recurrente {
    type: sum
    sql: ${orden_item_precio_recurrente} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Recurrente"
  }

  measure: total_orden_item_precio_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_recurrente_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Recurrente Sin Impuesto"
  }

  measure: total_orden_item_precio_total_unica_vez {
    type: sum
    sql: ${orden_item_precio_total_unica_vez} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Total Unica Vez"
  }

  measure: total_orden_item_precio_total_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_precio_total_unica_vez_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Total Unica Vez Sin Impuesto"
  }

  measure: total_orden_item_precio_unitario {
    type: sum
    sql: ${orden_item_precio_unitario} ;;
    group_label: "Orden Item"
    group_item_label: "Total Precio Unitario"
  }

  measure: total_orden_item_total_recurrente_sin_impuesto {
    type: sum
    sql: ${orden_item_total_recurrente_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Recurrente Sin Impuesto"
  }

  measure: total_orden_item_total_recurrente {
    type: sum
    sql: ${orden_item_total_recurrente} ;;
    group_label: "Orden Item"
    group_item_label: "Total Recurrente"
  }

  measure: total_orden_item_cargo_unica_vez_sin_impuesto {
    type: sum
    sql: ${orden_item_cargo_unica_vez_sin_impuesto} ;;
    group_label: "Orden Item"
    group_item_label: "Total Cargo Unica Vez Sin Impuesto"
  }

  ## Orden

  measure: total_orden_precio_total {
    type: sum_distinct
    sql_distinct_key: ${orden_srcid} ;;
    sql: ${orden_precio_total} ;;
    group_label: "Orden"
    group_item_label: "Total Precio Total"
  }

  measure: total_orden_precio_total_recurrente {
    type: sum_distinct
    sql_distinct_key: ${orden_srcid} ;;
    sql: ${orden_precio_total_recurrente} ;;
    group_label: "Orden"
    group_item_label: "Total Precio Total Recurrente"
  }

  measure: total_orden_precio_total_una_vez {
    type: sum_distinct
    sql_distinct_key: ${orden_srcid} ;;
    sql: ${orden_precio_total_una_vez} ;;
    group_label: "Orden"
    group_item_label: "Total Precio Total Una Vez"
  }

  measure: orden_count {
    type: count_distinct
    sql: ${orden_srcid} ;;
    group_label: "Orden"
    group_item_label: "Cantidad de Ordenes"
  }

  measure: count_cambio_plan_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Cambios de Plan Efectiva"
    description: "Ordenes de Cambios de Plan Activadas POSPAGO, HIBRIDO, PREPAGO"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_venta_terminal_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Venta de Terminal Efectiva"
    description: "Ordenes de Ventas de dispositivos móviles activas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "VENTA"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "DISPOSITIVO"
    ]
  }

  measure: count_baja_voluntaria_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Bajas Voluntaria Efectiva"
    description: "Ordenes de Bajas Voluntarias Cumplidas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "DESCONECTAR"
      , orden_tipo_gestion_nombre: "DESCONEXION"
      , orden_item_sub_motivo_baja_nombre: "PEDIDO DE BAJA"
    ]
  }

  measure: count_baja_fraude_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Baja Fraude Efectiva"
    description: "Ordenes de Bajas por Fraude Cumplidas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONECTAR"
      , orden_tipo_sub_gestion_nombre: "FRAUDE"
    ]
  }

  measure: count_baja_tiempo_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Bajas Masiva"
    description: "Ordenes de Bajas por Tiempo Cumplidas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "DESCONECTAR"
      , orden_tipo_sub_gestion_nombre: "DESCONEXION"
      , orden_item_sub_motivo_baja_nombre: "POR TIEMPO"
    ]
  }

  measure: count_baja_mora_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Baja Mora Efectiva"
    description: "Ordenes de Bajas por Mora"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "DESCONECTAR"
      , orden_tipo_sub_gestion_nombre: "MOROSIDAD"
    ]
  }

  measure: count_cambio_sim_efectiva {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Cambio SIM Efectiva"
    description: "Ordenes de Cambio de SIM Activadas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "EXISTENTE"
      , es_numero_linea: "Yes"
      , orden_tipo_gestion_nombre: "CAMBIO DE TARJETA SIM, CAMBIO DE TARJETA SIM POR SINIESTRO"
    ]
  }

  measure: count_baja_suspension_portout {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Baja Suspension Portout Efectiva"
    description: "Ordenes de tipo gestion suspension por PORTOUT Efectivas"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_item_sub_accion_nombre: "SUSPENDIDO-PORTABILIDAD"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_tipo_sub_gestion_nombre: "PORTOUT"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_demanda_retencion {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Demanda Retencion"
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
    group_label: "Orden"
    group_item_label: "Cantidad Plan Upselling"
    description: "Ordenes de Cambio de plan cuyo precio con promocion es mayor al Asset que se desconecta"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "UPGRADE"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_downselling_plan {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Plan Downselling"
    description: "Ordenes de Cambio de plan cuyo precio con promocion es menor al Asset que se desconecta"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "DOWNGRADE"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_cross_sell_plan {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Plan Cross Sell"
    description: "Ordenes Cambio de plan cuyo precio con promocion es igual al Asset que se desconecta"
    filters: [
        orden_estado_nombre: "ACTIVADA"
      , orden_tipo_gestion_nombre: "CAMBIO DE PLAN"
      , orden_tipo_cambio_plan_nombre: "CROSS SELL"
      , orden_item_accion_nombre: "AGREGAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_portin_brutas {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Portin Brutas"
    description: "Ordenes de portabilidad registradas"
    filters:[
      , orden_item_accion_nombre: "AGREGAR"
      , orden_tipo_gestion_nombre: "VENTA PORTIN"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_portin_netas {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Portin Netas"
    description: "Ordenes de portabilidad activadas/netas"
    filters:[
        orden_estado_nombre: "ACTIVADA"
      , orden_item_accion_nombre: "AGREGAR"
      , orden_tipo_gestion_srcid: "PORTIN ACTIVAR"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  measure: count_suspen_voluntaria_movil {
    type: count_distinct
    sql: ${orden_srcid};;
    group_label: "Orden"
    group_item_label: "Cantidad Suspension Voluntaria Movil"
    description: "Ordenes de suspensión voluntaria por pedido de baja"
    filters:[
        orden_estado_nombre: "ACTIVADA"
      , orden_item_sub_accion_nombre: "SUSPEND-VOLUNTARIA"
      , orden_tipo_gestion_nombre: "SUSPENSION"
      , orden_tipo_sub_gestion_nombre: "PEDIDO DE BAJA"
      , producto_tipo_nombre: "PLAN POSPAGO, PLAN HIBRIDO, PLAN PREPAGO"
    ]
  }

  ## Orden Plan Anterior

  measure: total_opa_orden_item_cargo_recurrente {
    type: sum
    sql: ${opa_orden_item_cargo_recurrente} ;;
    group_label: "Orden Plan Anterior"
    group_item_label: "Total Orden Item Cargo Recurrente"
  }

  measure: total_opa_orden_item_precio_calculado_recurrente {
    type: sum
    sql: ${opa_orden_item_precio_calculado_recurrente} ;;
    group_label: "Orden Plan Anterior"
    group_item_label: "Total Orden Item Precio Calculado Recurrente"
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
  }

  dimension: medio_pago_nombre {
    type: string
    sql: MedioPagoNombre ;;
    label: "Nombre"
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
    group_label: "Marcas"
    group_item_label: "Es Principal"
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
