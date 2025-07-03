# Define the database connection to be used for this model.
connection: "ixcprovedor_7998_net_flex_ltda"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

explore:pedido_compra {
  sql_always_where: '{{ _user_attributes['id_cliente'] }}' = '1234' ;;
}

datagroup: teste_consultoria_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: teste_consultoria_default_datagroup