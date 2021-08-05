<nav class="sub-menu">
  {% for item in site.all_menuitems_on_level_1 %}
    {% if item.selected? and page.level <= 2 %}
      {% if editmode or item.children? %}
        <ul>
          {% for level1 in item.visible_children %}
            {% if level1.layout_title != product_layout and level1.layout_title != product_list_layout %}
              <li><a  href="{{level1.url}}"{% if level1.selected? %} class="active"{% endif %}{% unless level1.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{level1.title}}</a></li>
            {% endif %}
          {% endfor %}
          {% if editmode %}
            {% if item.hidden_children.size > 0 %}<li class="edy-btn">{% menubtn item.hidden_children %}</li>{% endif %}
            <li class="edy-btn">{% menuadd parent="item"%}</li>
          {% endif %}
        </ul>
      {% endif %}
    {% endif %}
  {% endfor %}

  {% for i in (2..5) %}
    {% assign level_str = 'all_menuitems_on_level_' | append: i %}
    {% for item in site[level_str] %}
      {% assign page_lvl = i | plus: 1 %}
      {% if item.selected? and page.level == page_lvl %}
        {% if editmode or item.children? %}
          {% if item.layout_title == product_layout or item.layout_title == product_list_layout %}
            <ul>
              {% for child in item.visible_children %}
                {% if child.layout_title != product_layout and child.layout_title != product_list_layout %}
                  <li><a href="{{child.url}}"{% if child.selected? %} class="active"{% endif %}{% unless child.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{child.title}}</a></li>
                {% endif %}
              {% endfor %}
            </ul>
          {% endif %}
        {% endif %}
      {% endif %}
    {% endfor %}
  {% endfor %}
</nav>
