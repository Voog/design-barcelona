{% capture dont_render %}
  {% if site.visible_menuitems == blank and site.root_item.hidden? %}
    {% assign show_menu_btn = false %}
  {% else %}
    {% assign show_menu_btn = true %}
  {% endif %}

  {% assign product_list_layout = "Product list" %}
  {% assign product_layout = "Product" %}

  {% assign show_product_related_pages_in_main_menu = site.data.settings_root_item.show_product_related_pages_in_main_menu %}

  {% comment %}=================================================================
  | Design editor variables.
  ============================================================= {% endcomment %}
  {% capture base_font_set %}
    [
      {
        "type": "group",
        "title": "Sans Serif",
        "list": [
          {
            "title": "Fira Sans",
            "value": "\"Fira Sans\", sans-serif"
          },
          {
            "title": "Lato",
            "value": "\"Lato\", sans-serif"
          },
          {
            "title": "Montserrat",
            "value": "\"Montserrat\", sans-serif"
          },
          {
            "title": "Open Sans",
            "value": "\"Open Sans\", sans-serif"
          },
          {
            "title": "PT Sans",
            "value": "\"PT Sans\", sans-serif"
          },
          {
            "title": "Raleway",
            "value": "\"Raleway\", sans-serif"
          },
          {
            "title": "Roboto",
            "value": "\"Roboto\", sans-serif"
          },
          {
            "title": "Source Sans Pro",
            "value": "\"Source Sans Pro\", sans-serif"
          },
          {
            "title": "Ubuntu",
            "value": "\"Ubuntu\", sans-serif"
          }
        ]
      },
      {
        "type": "group",
        "title": "Serif",
        "list": [
          {
            "title": "Arvo",
            "value": "\"Arvo\", serif"
          },
          {
            "title": "Crimson Text",
            "value": "\"Crimson Text\", serif"
          },
          {
            "title": "Georgia",
            "value": "\"Georgia\", serif"
          },
          {
            "title": "Lora",
            "value": "\"Lora\", serif"
          },
          {
            "title": "Noto Serif",
            "value": "\"Noto Serif\", serif"
          },
          {
            "title": "Playfair Display",
            "value": "\"Playfair Display\", serif"
          },
          {
            "title": "PT Serif",
            "value": "\"PT Serif\", serif"
          },
          {
            "title": "Roboto Slab",
            "value": "\"Roboto Slab\", serif"
          }
        ]
      },
      {
        "type": "group",
        "title": "Monospace",
        "list": [
          {
            "title": "Anonymous Pro",
            "value": "\"Anonymous Pro\", monospace"
          },
          {
            "title": "Cousine",
            "value": "\"Cousine\", monospace"
          },
          {
            "title": "Roboto Mono",
            "value": "\"Roboto Mono\", monospace"
          },
          {
            "title": "Ubuntu Mono",
            "value": "\"Ubuntu Mono\", monospace"
          }
        ]
      }
    ]
  {% endcapture %}

  {% capture base_alignment_horizontal_set %}
    [
      {
        "titleI18n": "left",
        "value": "left"
      },
      {
        "titleI18n": "center",
        "value": "center"
      },
      {
        "titleI18n": "right",
        "value": "right"
      }
    ]
  {% endcapture %}

  {% capture base_alignment_vertical_set %}
    [
      {
        "titleI18n": "top",
        "value": "top"
      },
      {
        "titleI18n": "middle",
        "value": "middle"
      },
      {
        "titleI18n": "bottom",
        "value": "bottom"
      }
    ]
  {% endcapture %}

  {% capture base_border_style_set %}
    [
      {
        "titleI18n": "solid",
        "value": "solid"
      },
      {
        "titleI18n": "none",
        "value": "hidden"
      }
    ]
  {% endcapture %}

  {% capture base_number_of_columns_set %}
    [
      {
        "title": "2",
        "value": "50%"
      },
      {
        "title": "3",
        "value": "33.3%"
      },
      {
        "title": "4",
        "value": "25%"
      },
      {
        "title": "5",
        "value": "20%"
      },
      {
        "title": "6",
        "value": "16.6%"
      }
    ]
  {% endcapture %}

{% endcapture %}
