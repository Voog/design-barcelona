{% capture dont_render %}
  {% if article.data.background.color == nil %}
    {% assign bg_color_data = '{"r"=>43, "g"=>43, "b"=>43, "a"=>0.9, "lightness"=>0.01}' %}
    {% assign bg_color = 'rgba(43,43,43,0.9)' %}
    {% assign bg_color_style = 'background-color: rgba(43,43,43,0.9); background-color: rgba(43,43,43,0.9)' %}
  {% elsif article.data.background.color == "" %}
    {% assign bg_color_data = '' %}
    {% assign bg_color = 'none' %}
    {% assign bg_color_style = 'background: none' %}
  {% else %}
    {% assign bg_color = article.data.background.color %}
    {% assign bg_color_data = article.data.background.colorData %}
    {% assign bg_color_style = 'background-color: ' | append: article.data.background.color %}
  {% endif%}
{% endcapture %}
