## ALEPH DataGroups

datagroup: aleph_default_dg {
  sql_trigger:  SELECT
                  MAX(_fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM `teco-prod-edw-5e1b.ue4_prod_edw_alp_gcp.ALEPH` ;;
  max_cache_age: "12 hours"
  label: "Aleph Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion"
}
