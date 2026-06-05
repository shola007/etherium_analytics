{%  macro etherium_conversion(column_name) %}
  
  sum( {{column_name}} ) / 1e18 as total_{{column_name}}

{% endmacro %}

{%  macro stablecoin_conversion(column_name) %}
  
  sum( {{column_name}} ) / 1e6 as total_daily_{{column_name}}

{% endmacro %}

{% macro conversion(column_name, factor) %}

sum( {{column_name}} / power(10, {{factor}} ))

{% endmacro %}