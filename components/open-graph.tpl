{% comment %}FACEBOOK OPEN GRAPH META TAGS{% endcomment%}
{% comment %}https://developers.facebook.com/tools/debug - Debug after each modification{% endcomment %}
{% if site.data.fb_admin %}<meta property="fb:admins" content="{{ site.data.fb_admin }}">{% endif %}
<meta property="og:type" content="{% if article %}article{% else %}website{% endif %}">
<meta property="og:url" content="{{ site.url }}{% if article %}{{ article.url | remove_first:'/' }}{% else %}{{ page.url | remove_first:'/' }}{% endif %}">
<meta property="og:title" content="{{ page_title | escape }}">
<meta property="og:site_name" content="{{ page.site_title | escape }}">

{% comment %}Open Graph image{% endcomment %}
{% if front_page %}
  {% if page.image != nil %}
    {% assign og_image = page.image %}
  {% else %}
    {% for article in site.latest_articles %}
      {% if article.data.background.image and article.data.background.image != '' %}
        {% assign og_image = article.data.background %}
        {% break %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% elsif blog_page %}
  {% if page.image != nil %}
    {% assign og_image = page.image %}
  {% else %}
    {% for article in articles %}
      {% if article.data.background.image %}
        {% assign og_image = article.data.background.image %}
        {% break %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% else %}
  {% if article %}
    {% if article.image? %}
      {% assign og_image = article.image %}
    {% endif %}
  {% elsif page.image? %}
    {% assign og_image = page.image %}
  {% endif %}
{% endif %}

{{}}

{% if og_image %}
  {% if og_image.image %}
    <meta property="og:image" content="{{ og_image.image }}">
    {% if og_image.imageSizes[0].width %}<meta property="og:image:width" content="{{ og_image.imageSizes[0].width }}">{% endif %}
    {% if og_image.imageSizes[0].height %}<meta property="og:image:height" content="{{ og_image.imageSizes[0].height }}">{% endif %}
  {% elsif og_image.url %}
    {% if og_image.url %}<meta property="og:image" content="{{ og_image.url }}">{% endif %}
    {% if og_image.content_type %}<meta property="og:image:type" content="{{ og_image.content_type }}">{% endif %}
    {% if og_image.width %}<meta property="og:image:width" content="{{ og_image.width }}">{% endif %}
    {% if og_image.height %}<meta property="og:image:height" content="{{ og_image.height }}">{% endif %}
  {% endif %}
{% endif %}

{% comment %}Open Graph description{% endcomment %}
{% if article %}
  {% assign description = article.description %}
{% else %}
  {% assign description = page.description %}
{% endif %}

{% if description != nil and description != '' %}
  <meta property="og:description" content="{{ description | escape }}">
  <meta name="description" content="{{ description | escape }}">
{% endif %}

