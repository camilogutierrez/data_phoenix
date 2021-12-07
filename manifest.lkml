project_name: "Data_Phoenix_Reporting"

## DATASETS ##

  ## PUB

    # PRD: ue4_prod_edw_pub_gcp
    # TST: ue4_test_edw_pub_gcp
    # DEV: ue4_dev_edw_pub_gcp

  constant: gcp_dataset_pub {
    value: "
      {% if _user_attributes['enviroment'] == 'production' %}
        {% assign this_gcp_dataset_pub = '`ue4_prod_edw_pub_gcp' %}
      {% elsif _user_attributes['enviroment'] == 'testing' %}
        {% assign this_gcp_dataset_pub = '`ue4_test_edw_pub_gcp' %}
      {% else %}
        {% assign this_gcp_dataset_pub = '`ue4_dev_edw_pub_gcp' %}
      {% endif %}
      {{this_gcp_dataset_pub}}"
    export: none
  }

  ## ALEPH

    # PRD: ue4_prod_edw_alp_gcp
    # TST: ue4_test_edw_alp_gcp
    # DEV: ue4_dev_edw_alp_gcp

  constant: gcp_dataset_alp {
    value: "
    {% if _user_attributes['enviroment'] == 'production' %}
      {% assign this_gcp_dataset_alp = '`ue4_prod_edw_alp_gcp' %}
    {% elsif _user_attributes['enviroment'] == 'testing' %}
      {% assign this_gcp_dataset_alp = '`ue4_test_edw_alp_gcp' %}
    {% else %}
      {% assign this_gcp_dataset_alp = '`ue4_dev_edw_alp_gcp' %}
    {% endif %}
    {{this_gcp_dataset_alp}}"
    export: none
  }
