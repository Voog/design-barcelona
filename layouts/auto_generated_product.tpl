<!DOCTYPE html>
  {%- include "template-settings" -%}
  {%- include "template-variables" -%}
  <html class="content-page {% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
  <head prefix="og: http://ogp.me/ns#">
    {% include "edicy-tools-variables" %}
    {% include "html-head" common_page: true %}

    {% sd_product %}
  </head>
  <body class="item-page product-page main-menu-not-fitting{% if site.search.enabled %} search-enabled{% endif %}">

    {%- if product.photos != blank -%}
      {%- assign product_image_state = "with-images" -%}
    {%- else -%}
      {%- assign product_image_state = "without-images" -%}
    {%- endif -%}

    {%- capture bottom_content_html -%}
      {%- unless editmode -%}
        {%- content bind=product name="content" -%}
      {%- endunless -%}
    {%- endcapture -%}

    {%- assign bottom_content_size = bottom_content_html | strip | size -%}

    {%- capture gallery_content_html -%}
      {%- unless editmode -%}
        {%- content bind=product name="gallery" -%}
      {%- endunless -%}
    {%- endcapture -%}

    {%- assign gallery_content_size = gallery_content_html | strip | size -%}

    {%- capture product_social_html -%}
      {%- unless editmode -%}
        {%- xcontent name="product-social" -%}
      {%- endunless -%}
    {%- endcapture -%}

    {%- assign product_social_size = product_social_html | strip | size -%}

    <div class="holder">
      {% include "header" %}

      <main class="main product-content">
        <div class="main-inner">
          <div class="content-wrap">
            {% include "submenu" %}
            <div class="wrap">

              <div class="content formatted cfx">
                {% include "menu-breadcrumbs-sd" %}
                <div class="flex_row flex_row-2 mar_0-32-neg" data-search-indexing-allowed="true">
                  <div class="flex_row-2--item-50">
                    <div class="mar_0-32 p-rel js-product-page-image-wrap">
                      <div class="content-illustrations">
                        <div class="content-item-box {{ product_image_state }} mar_b-32 js-content-item-box" data-item-type="page">
                          {%- if product.photos == blank -%}
                            <div class="item-top"></div>
                          {%- else -%}
                            {% gallery product layout="product_slider" %}
                          {%- endif -%}
                        </div>
                        {%- if gallery_content_size > 0 or editmode -%}
                          <section class="content-formatted js-product-gallery mar_t-16" data-search-indexing-allowed="true">
                            {%- assign gallery_title = "gallery" | lce -%}
                            {%- assign gallery_title_tooltip = "content_tooltip_additional_images" | lce -%}
                            {% content
                              bind=product
                              name="gallery"
                              title=gallery_title
                              title_tooltip=gallery_title_tooltip
                            %}
                          </section>
                        {%- endif -%}
                      </div>
                    </div>
                  </div>

                  <div class="flex_row-2--item-50">
                    <div class="mar_0-32 flex_col t-sticky js-product-content-right">
                      <header class="content-header">
                        <div class="content-formatted content-item-title" data-search-indexing-allowed="true">
                          <h1>{%- editable product.name -%}</h1>
                        </div>
                      </header>

                      {%- capture original_price -%}
                        {% if product.price_min_with_tax != product.price_max_with_tax -%}
                          {{- product.price_min_with_tax | money_with_currency: product.currency -}}
                          <span> – </span>
                        {%- endif -%}
                        {{- product.price_max_with_tax | money_with_currency: product.currency -}}
                      {%- endcapture -%}

                      <div class="product-price">
                        {% if product.on_sale? -%}
                          <s class="product-price-original">
                            {{- original_price -}}
                          </s>
                        {% endif -%}

                        <span class="product-price-final">
                          {%- if product.on_sale? -%}
                            {% if product.effective_price_min_with_tax != product.effective_price_max_with_tax %}
                              {{- product.effective_price_min_with_tax | money_with_currency: product.currency -}}
                              <span> – </span>
                            {%- endif -%}
                            {{- product.effective_price_max_with_tax | money_with_currency: product.currency -}}
                          {% else %}
                            {{ original_price }}
                          {% endif -%}
                        </span>
                      </div>

                      <section class="content-formatted" data-search-indexing-allowed="true">
                        {%- if editmode or product.description != blank -%}
                          <div class="content-product-description">
                            {%- editable product.description -%}
                          </div>
                        {%- endif -%}

                        <div class="buy-btn-content js-buy-btn-content">
                          {% include "buy-button" %}
                        </div>

                        {%- if editmode or product_social_size > 0 -%}
                          <div class="product-cross-page-info">
                            {%- assign cross_page_info_title = "cross_page_info" | lce  -%}
                            {%- assign cross_page_info_title_tooltip = "content_tooltip_all_pages_same_type" | lce -%}
                            {% xcontent
                              name="product-social"
                              title=cross_page_info_title
                              title_tooltip=cross_page_info_title_tooltip
                            %}
                          </div>
                        {%- endif -%}

                        {%- assign content_default_title = "content" | lce -%}
                        {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
                        {% content
                          bind=product
                          title=content_default_title
                          title_tooltip=content_default_title_tooltip
                        %}
                      </section>
                    </div>
                  </div>
                </div>
                {%- if bottom_content_size > 0 or editmode -%}
                  <section
                    class="content-product-wide content-formatted"
                    data-search-indexing-allowed="true">
                    {%- assign bottom_content_title = "additional_content" | lce -%}
                    {%- assign bottom_content_title_tooltip = "content_tooltip_additional_information" | lce -%}
                    {% content
                      bind=product
                      name="content"
                      title=bottom_content_title
                      title_tooltip=bottom_content_title_tooltip
                    %}
                  </section>
                {%- endif -%}
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

    <script>
      if (site) {
        site.handleProductPageContent();
      }
    </script>
  </body>
</html>
