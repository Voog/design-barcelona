<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
<html class="content-page {% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" common_page: true %}
</head>
<body class="main-menu-not-fitting{% if site.search.enabled %} search-enabled{% endif %}">

  <div class="holder">
    {% include "header" %}

    <main class="main" data-search-indexing-allowed="true">
      <div class="main-inner">
        <div class="content-wrap">
          {% include "submenu" %}
          <div class="wrap">

            <div class="content formatted cfx">
              <div class="content-header">
                {%- assign page_title_content_title = "title" | lce -%}
                {%- assign page_title_content_title_tooltip = "content_tooltip_current_page_title" | lce -%}
                {% contentblock
                  name="content_header"
                  publish_default_content="true"
                  title=page_title_content_title
                  title_tooltip=page_title_content_title_tooltip
                %}
                  <h1>{{ page.title }}</h1>
                {% endcontentblock %}
              </div>
              {% include "submenu" %}
              <div class="content-body">
                {%- assign content_default_title = "content" | lce -%}
                {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
                {% content title=content_default_title title_tooltip=content_default_title_tooltip %}
              </div>
            </div>
          </div>
        </div>
      </div>
      {% include "footer" %}
    </main>
  </div>

  {% include "langmenu-mobile" %}
  {% include "site-signout" %}
  {% include "javascripts" %}
</body>
</html>
