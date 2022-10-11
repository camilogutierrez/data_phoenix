project_name: "Data_Phoenix_Reporting"

## Variables de ambiente

  constant: gcp_ambiente {
    value: "
      {% if _user_attributes['ambiente'] == 'produccion' %}
        {% assign this_gcp_ambiente = '`teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp' %}
      {% elsif _user_attributes['ambiente'] == 'testing' %}
        {% assign this_gcp_ambiente = '`teco-test-edw-d589.ue4_test_edw_pub_gcp' %}
      {% else %}
        {% assign this_gcp_ambiente = '`teco-dev-edw-8b23.ue4_dev_edw_pub_gcp' %}
      {% endif %}
      {{this_gcp_ambiente}}"
    export: none
  }

  ## ALEPH

  constant: gcp_ambiente_alp {
    value: "
    {% if _user_attributes['ambiente'] == 'produccion' %}
      {% assign this_gcp_ambiente_alp = '`teco-prod-edw-5e1b.ue4_prod_edw_alp_gcp' %}
    {% elsif _user_attributes['ambiente'] == 'testing' %}
      {% assign this_gcp_ambiente_alp = '`teco-test-edw-d589.ue4_test_edw_alp_gcp' %}
    {% else %}
      {% assign this_gcp_ambiente_alp = '`teco-dev-edw-8b23.ue4_dev_edw_alp_gcp' %}
    {% endif %}
    {{this_gcp_ambiente_alp}}"
    export: none
  }

  new_lookml_runtime: no
