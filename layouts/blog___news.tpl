<!DOCTYPE html>
<html class="blog-list-page {% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% assign blog_page = true %}
  {% include "edicy-tools-variables" %}
  {% include "html-head" %}
</head>
<body class="main-menu-fits {% if site.search.enabled %} search-enabled{% endif %}">
  
  <div class="holder">
    {% include "header" %}
  
    <main class="main swipe" data-search-indexing-allowed="true">
      <a href="#" class="scroller-arrow "><span class="animated-bounce"></span></a>
      <div class="main-inner">
        {% if editmode %}
          <a class="new-article" href="{{ blog.page.url }}?new">
            <div class="tbl">
              <div class="tbl-row">
                <div class="tbl-cell">
                  <div class="new-article-inner">
                    <svg xmlns="http://www.w3.org/2000/svg" width="72px" height="57px" viewBox="-21 -13.5 72 57">
                      <g>
                        <path fill="none" stroke="currentColor" stroke-width="5" d="M-6,32V-10H47v50H-6C-12,40-17,37-17,31V5h11"></path>
                        <path fill="currentColor" d="M23,8h16v5H23V8z"></path>
                        <path fill="currentColor" d="M23-2h16v5H23V-2z"></path>
                        <path fill="currentColor" d="M23,17h16v5H23V17z"></path>
                        <path fill="currentColor" d="M2,27h37v5H2V27z"></path>
                        <path fill="currentColor" d="M2-2h16v25H2V-2z"></path>
                      </g>
                    </svg>
                    <h3 class="new-article-title">{{ "add_new_post" | lc }}</h3>
                  </div>
                </div>
              </div>
            </div>
          </a>
        {% endif %}
    
        {% for article in articles %}
        
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
          
          <article class="article" data-article-id="{{ article.id }}">
            <a href="{{ article.url }}" class="--lazy" {% if article.data.background.image %}{% if forloop.index < 6 %} style="background-image: url('{{ article.data.background.image }}');" data-lazy-loaded="true"{% else %} data-article-image="{{ article.data.background.image }}" {% endif %}{% endif %} >
              <div class="article-bg-color" style="{{ bg_color_style }}"></div>
              <div class="article-inner">
                {% if editmode %}                
                  <button class="voog-bg-picker-btn js-bg-picker-settings" data-bg-image="{{ article.data.background.image }}" data-bg-color="{{ bg_color }}" data-bg-color-data="{{ bg_color_data | json | escape }}"></button>
                {% endif %}
                <div class="article-content">
                  <h2>{{ article.title }}</h2>
                  <div class="article-date">{{ article.created_at | format_date: "short" }}</div>
                </div>
              </div>
            </a>
          </article>
        {% endfor %}
      </div>
    </main>
  </div>
  
  {% include "footer" %}
  {% include "langmenu-mobile" %}
  {% include "javascripts" %}
  {% include "bg-picker" %}
  
  <script>
    $(window).load(function() {
      $('.main').lazyLoad({
        className: '--lazy',
        urlData: 'article-image',
        distance: 300
      });
    });
  </script>
</body>
</html>
