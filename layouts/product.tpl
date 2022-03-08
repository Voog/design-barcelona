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

      <main class="main">
        <div class="main-inner">
          <div class="content-wrap">
            {% include "submenu" %}
            <div class="wrap">

              <div class="content formatted cfx">
                {% include 'menu-breadcrumbs' %}
                <div class="flex_row flex_row-2 reverse-col-tablet mar_0-32-neg" data-search-indexing-allowed="true">
                  <div class="flex_row-2--item-50">
                    <div class="mar_0-32 p-rel js-product-page-image-wrap">
                      {%- load buy_button to "buy_button" q.content.parent_id=page.id q.content.parent_type="page"
                      q.content.name="body" s="content.position" -%}
                      {% if buy_button.product != blank %}
                        {%- assign buyButtonImage = buy_button.product.image -%}
                      {% endif %}

                      {%- if page.data.item_image != blank -%}
                        {%- assign productImage = page.data.item_image -%}
                        {%- assign isProductImage = false -%}
                      {%- elsif buyButtonImage != blank -%}
                        {%- assign productImage = buyButtonImage -%}
                        {%- assign isProductImage = true -%}
                      {%- else -%}
                        {%- assign productImage = page.image -%}
                        {%- assign isProductImage = false -%}
                      {%- endif -%}

                      {%- if productImage != blank or editmode -%}
                        <div class="js-product-page-image mar_b-32">
                          {% include 'content-item', _isProductImage: isProductImage, _imageData: productImage, _entityData:
                          page, _itemType: 'page', _id: page.id, _targetWidth: '1280' %}
                        </div>
                      {%- endif -%}
                    </div>
                    <section class="content-body content-formatted mar_0-32 mar_t-32" data-search-indexing-allowed="true">
                      {% content name="gallery" %}
                    </section>
                  </div>

                  <div class="flex_row-2--item-50">
                    <div class="mar_0-32 flex_col t-sticky">
                      <section class="content-body content-formatted js-buy-btn-content"
                        data-search-indexing-allowed="true">
                        {% contentblock %}{{ "write_product_description_here" | lc: editor_locale }}{% endcontentblock %}
                      </section>
                    </div>
                  </div>
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
    {% include "edicy-tools" %}
  </body>
</html>
