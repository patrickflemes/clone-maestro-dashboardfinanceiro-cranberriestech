# The name of this view in Looker is "Pedido Compra Itens"
view: pedido_compra_itens {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ixcprovedor.pedido_compra_itens ;;
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
    # This dimension will be called "Descricao Alt" in Explore.

  dimension: descricao_alt {
    type: string
    sql: ${TABLE}.descricao_alt ;;
  }

  dimension: filial_id {
    type: number
    sql: ${TABLE}.filial_id ;;
  }

  dimension: id_entrada {
    type: number
    sql: ${TABLE}.id_entrada ;;
  }

  dimension: id_pedido_compra {
    type: number
    sql: ${TABLE}.id_pedido_compra ;;
  }

  dimension: id_produto {
    type: number
    sql: ${TABLE}.id_produto ;;
  }

  dimension: id_unidade {
    type: number
    sql: ${TABLE}.id_unidade ;;
  }

  dimension: observacao {
    type: string
    sql: ${TABLE}.observacao ;;
  }

  dimension: quantidade {
    type: number
    sql: ${TABLE}.quantidade ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: unidade_sigla {
    type: string
    sql: ${TABLE}.unidade_sigla ;;
  }

  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }

  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.valor_unitario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
