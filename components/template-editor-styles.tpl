{% comment %}
================================================================================
TEMPLATE DESIGN EDITOR STYLES.
Adds template design editor style overrides.
================================================================================
{% endcomment %}
<style data-voog-style>
:root {
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Site background",
       "editor": "colorPicker",
       "scope": "global"
    */
  --global-background-color: #f4f4f4;
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Main color",
       "editor": "colorPicker",
       "scope": "global"
    */
  --main-color: #333;
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Second color",
       "editor": "colorPicker",
       "scope": "global"
    */
  --second-color: black;
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Third color",
       "editor": "colorPicker",
       "scope": "global"
    */
  --third-color: #818181;
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Fourth color",
       "editor": "colorPicker",
       "scope": "global"
    */
  --fourth-color: white;
  	/* VoogStyle
       "path": ["Main Styles"],
       "title": "Font family",
       "editor": "listPicker",
       "list": {% include "template-fonts" %},
      "featured": true,
      "scope": "global"
    */
  --font-main: "Montserrat", Helvetica, Arial, sans-serif;
  	/* VoogStyle
      "path": ["Content"],
      "title": "Page padding",
      "editor": "rangePicker",
      "min": 400,
      "max": 999,
      "unit": "px",
      "scope": "global"
    */
  --main-width: 700px;
}
</style>

{{ site.style_tag }}