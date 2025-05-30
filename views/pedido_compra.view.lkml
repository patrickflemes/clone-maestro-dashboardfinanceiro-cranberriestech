# The name of this view in Looker is "Pedido Compra"
view: pedido_compra {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ixcprovedor.pedido_compra ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cancelamento Descricao" in Explore.

  dimension: cancelamento_descricao {
    type: string
    sql: ${TABLE}.cancelamento_descricao ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data ;;
  }

  dimension_group: data_liberacao {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_liberacao ;;
  }

  dimension: filial_id {
    type: number
    sql: ${TABLE}.filial_id ;;
  }

  dimension: id_colaborador {
    type: number
    sql: ${TABLE}.id_colaborador ;;
  }

  dimension: id_condicoes_pagamento {
    type: number
    sql: ${TABLE}.id_condicoes_pagamento ;;
  }

  dimension: id_fornecedor {
    type: number
    sql: ${TABLE}.id_fornecedor ;;
  }

  dimension: id_modelo {
    type: number
    sql: ${TABLE}.id_modelo ;;
  }

  dimension: obs {
    type: string
    sql: ${TABLE}.obs ;;
  }

  dimension_group: previsao_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.previsao_entrega ;;
  }

  dimension_group: previsao_faturamento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.previsao_faturamento ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_liberado {
    type: string
    sql: ${TABLE}.status_liberado ;;
  }

  dimension: tipo_desconto {
    type: string
    sql: ${TABLE}.tipo_desconto ;;
  }

  dimension: tipo_frete {
    type: string
    sql: ${TABLE}.tipo_frete ;;
  }

  dimension: valor_desconto {
    type: number
    sql: ${TABLE}.valor_desconto ;;
  }

  dimension: valor_frete {
    type: number
    sql: ${TABLE}.valor_frete ;;
  }

  dimension: valor_negociado {
    type: number
    sql: ${TABLE}.valor_negociado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
