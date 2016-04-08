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
     "title": "Font",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global",
     "boundVariables": [
      "--site-title-font-family",
      "--main-menu-font-family",
      "--blog-list-headings-font-family",
      "--h1-font-family",
      "--h2-font-family",
      "--h3-font-family",
      "--content-font-family"
     ]
  */
  --font-main: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Main Styles"],
     "title": "Background",
     "editor": "colorPicker",
     "scope": "global",
     "boundVariables": [
      "--header-background-color",
      "--footer-background-color"
    ]
  */
  --global-background-color: #f4f4f4;
  /* VoogStyle
     "path": ["Main Styles", "Colors"],
     "title": "Primary color",
     "editor": "colorPicker",
     "scope": "global",
     "featured": true,
     "boundVariables": [
        "--site-title-color",
        "--main-menu-hover-color",
        "--main-menu-active-color",
        "--h1-color",
        "--h2-color",
        "--h3-color",
        "--content-links-hover-color"
     ]
  */
  --second-color: black;
  /* VoogStyle
     "path": ["Main Styles", "Colors"],
     "title": "Secondary color",
     "editor": "colorPicker",
     "scope": "global",
     "featured": true,
     "boundVariables": [
        "--content-color"
     ]
  */
  --main-color: #333;
  /* VoogStyle
     "path": ["Main Styles", "Colors"],
     "title": "Third color",
     "editor": "colorPicker",
     "scope": "global",
     "featured": true,
     "boundVariables": [
      "--main-menu-color",
      "--content-links-color"
     ]
  */
  --third-color: #818181;
  /* VoogStyle
     "path": ["Main Styles", "Colors"],
     "title": "Fourth color",
     "editor": "colorPicker",
     "scope": "global",
     "featured": true,
     "boundVariables": [
      "--blog-list-headings-color"
    ]
  */
  --fourth-color: white;
  /* VoogStyle
     "path": ["Header"],
     "title": "Background",
     "editor": "colorPicker",
     "scope": "global"
  */
  --header-background-color: #f4f4f4;
  /* VoogStyle
     "path": ["Header"],
     "title": "Padding",
     "editor": "rangePicker",
     "min": 0,
     "max": 100,
     "unit": "px",
     "scope": "global"
  */
  --global-padding-lr: 50px;
  /* VoogStyle
     "path": ["Header", "Site title"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --site-title-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Header", "Site title"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 20,
     "unit": "px",
     "scope": "global"
  */
  --site-title-letter-spacing: 0;
  /* VoogStyle
    "path": ["Header", "Site title"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --site-title-font-size: 24px;
  /* VoogStyle
    "path": ["Header", "Site title"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --site-title-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Site title"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --site-title-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Site title"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --site-title-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Site title"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --site-title-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Site title"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --site-title-color: black;
  /* VoogStyle
     "path": ["Header", "Main menu links", "Normal"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --main-menu-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Header", "Main menu links", "Normal"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 20,
     "unit": "px",
     "scope": "global"
  */
  --main-menu-letter-spacing: 0;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--main-menu-hover-font-size",
      "--main-menu-active-font-size"
    ]
  */
  --main-menu-font-size: 16px;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --main-menu-hover-font-size: 16px;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Active"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --main-menu-active-font-size: 16px;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Normal"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--main-menu-hover-font-weight",
      "--main-menu-active-font-weight"
    ]
  */
  --main-menu-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Hover"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --main-menu-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Active"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --main-menu-active-font-weight: 400;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Normal"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--main-menu-hover-font-style",
      "--main-menu-active-font-style"
    ]
  */
  --main-menu-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Hover"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --main-menu-hover-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Active"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --main-menu-active-font-style: normal;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Normal"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--main-menu-hover-text-decoration",
      "--main-menu-active-text-decoration"
    ]
  */
  --main-menu-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Hover"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --main-menu-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Active"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --main-menu-active-text-decoration: none;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Normal"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--main-menu-hover-text-transform",
      "--main-menu-active-text-transform"
    ]
  */
  --main-menu-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Hover"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --main-menu-hover-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Active"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --main-menu-active-text-transform: uppercase;
  /* VoogStyle
    "path": ["Header", "Main menu links", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --main-menu-color: #818181;
 /* VoogStyle
  "path": ["Header", "Main menu links", "Hover"],
  "title": "Color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --main-menu-hover-color: black;
 /* VoogStyle
  "path": ["Header", "Main menu links", "Active"],
  "title": "Color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --main-menu-active-color: black;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Width",
     "editor": "rangePicker",
     "min": 200,
     "max": 600,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-article-width: 300px;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Area alignment",
     "editor": "listPicker",
     "list": {{ base_alignment_set }},
     "scope": "global"
  */
  --blog-list-alignment: left;
  /* VoogStyle
     "path": ["Blog list"],
     "title": "Padding",
     "editor": "rangePicker",
     "min": 0,
     "max": 99,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-padding: 30px;
  /* VoogStyle
     "path": ["Blog list", "Headings"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global",
     "boundVariables": [
     "--blog-list-date-font-family"
     ]
  */
  --blog-list-headings-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Blog list", "Headings"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 20,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-headings-letter-spacing: 0;
  /* VoogStyle
     "path": ["Blog list", "Headings"],
     "title": "Line height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --blog-list-headings-line-height: 1.45em;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-list-headings-font-size: 24px;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --blog-list-headings-font-weight: 600;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --blog-list-headings-font-style: normal;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --blog-list-headings-text-decoration: none;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --blog-list-headings-text-transform: none;
  /* VoogStyle
    "path": ["Blog list", "Headings"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true,
    "boundVariables": [
      "--blog-list-date-color"
     ]
  */
  --blog-list-headings-color: white;
  /* VoogStyle
     "path": ["Blog list", "Date"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --blog-list-date-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Blog list", "Date"],
     "title": "Character spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 20,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-date-letter-spacing: 0;
  /* VoogStyle
     "path": ["Blog list", "Date"],
     "title": "Padding top",
     "editor": "rangePicker",
     "min": 0,
     "max": 50,
     "step": 1,
     "unit": "px",
     "scope": "global"
  */
  --blog-list-date-padding-top: 8px;
  /* VoogStyle
    "path": ["Blog list", "Date"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-list-date-font-size: 12px;
  /* VoogStyle
    "path": ["Blog list", "Date"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --blog-list-date-font-weight: 400;
  /* VoogStyle
    "path": ["Blog list", "Date"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --blog-list-date-font-style: normal;
  /* VoogStyle
    "path": ["Blog list", "Date"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --blog-list-date-text-decoration: none;
  /* VoogStyle
    "path": ["Blog list", "Date"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --blog-list-date-text-transform: none;
  /* VoogStyle
    "path": ["Blog list", "Date"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --blog-list-date-color: white;
  /* VoogStyle
     "path": ["Headings", "Title"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --h1-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Headings", "Title"],
     "title": "Alignment",
     "editor": "listPicker",
     "list": {{ base_alignment_set }},
     "scope": "global"
  */
  --h1-alignment: center;
  /* VoogStyle
     "path": ["Headings", "Title"],
     "title": "Padding bottom",
     "editor": "rangePicker",
     "min": 0,
     "max": 150,
     "unit": "px",
     "scope": "global"
  */
  --h1-padding-bottom: 48px;
  /* VoogStyle
     "path": ["Headings", "Title"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 40,
     "unit": "px",
     "scope": "global"
  */
  --h1-letter-spacing: 0;
  /* VoogStyle
     "path": ["Headings", "Title"],
     "title": "Line height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --h1-line-height: 1.1em;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --h1-font-size: 40px;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --h1-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --h1-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --h1-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --h1-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Title"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --h1-color: black;
  /* VoogStyle
     "path": ["Headings", "Heading"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --h2-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Headings", "Heading"],
     "title": "Alignment",
     "editor": "listPicker",
     "list": {{ base_alignment_set }},
     "scope": "global"
  */
  --h2-alignment: left;
  /* VoogStyle
     "path": ["Headings", "Heading"],
     "title": "Padding bottom",
     "editor": "rangePicker",
     "min": 0,
     "max": 150,
     "unit": "px",
     "scope": "global"
  */
  --h2-padding-bottom: 0px;
  /* VoogStyle
     "path": ["Headings", "Heading"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 40,
     "unit": "px",
     "scope": "global"
  */
  --h2-letter-spacing: 0;
  /* VoogStyle
     "path": ["Headings", "Heading"],
     "title": "Line height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --h2-line-height: 1.1em;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --h2-font-size: 24px;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --h2-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --h2-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --h2-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --h2-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Heading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --h2-color: black;
  /* VoogStyle
     "path": ["Headings", "Subheading"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --h3-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Headings", "Subheading"],
     "title": "Alignment",
     "editor": "listPicker",
     "list": {{ base_alignment_set }},
     "scope": "global"
  */
  --h3-alignment: left;
  /* VoogStyle
     "path": ["Headings", "Subheading"],
     "title": "Padding",
     "editor": "rangePicker",
     "min": 0,
     "max": 150,
     "unit": "px",
     "scope": "global"
  */
  --h3-margin: 20px;
  /* VoogStyle
     "path": ["Headings", "Subheading"],
     "title": "Padding bottom",
     "editor": "rangePicker",
     "min": 0,
     "max": 150,
     "unit": "px",
     "scope": "global"
  */
  --h3-padding-bottom: 0;
  /* VoogStyle
     "path": ["Headings", "Subheading"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 40,
     "unit": "px",
     "scope": "global"
  */
  --h3-letter-spacing: 0;
  /* VoogStyle
     "path": ["Headings", "Subheading"],
     "title": "Line height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --h3-line-height: 1.1em;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --h3-font-size: 20px;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --h3-font-weight: 600;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --h3-font-style: normal;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --h3-text-decoration: none;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --h3-text-transform: none;
  /* VoogStyle
    "path": ["Headings", "Subheading"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --h3-color: black;
  /* VoogStyle
     "path": ["Content"],
     "title": "Width",
     "editor": "rangePicker",
     "min": 250,
     "max": 1250,
     "step": 10,
     "unit": "px",
     "scope": "global"
  */
  --main-width: 700px;
  /* VoogStyle
     "path": ["Content", "Text"],
     "title": "Font family",
     "editor": "listPicker",
     "list": {{ base_font_set }},
     "featured": true,
     "scope": "global"
  */
  --content-font-family: "Montserrat", Helvetica, Arial, sans-serif;
  /* VoogStyle
     "path": ["Content", "Text"],
     "title": "Alignment",
     "editor": "listPicker",
     "list": {{ base_alignment_set }},
     "scope": "global"
  */
  --content-alignment: left;
  /* VoogStyle
     "path": ["Content", "Text"],
     "title": "Letter spacing",
     "editor": "rangePicker",
     "min": 0,
     "max": 40,
     "unit": "px",
     "scope": "global"
  */
  --content-letter-spacing: 0;
  /* VoogStyle
     "path": ["Content", "Text"],
     "title": "Line height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "unit": "em",
     "scope": "global"
  */
  --content-line-height: 1.45 #em;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --content-font-size: 18px;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --content-font-weight: 400;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --content-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --content-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --content-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Text"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --content-color: #333;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Background",
    "editor": "colorPicker",
    "scope": "global"
  */
  --content-links-background-color: rgba(255, 255, 255, 0);
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Background",
    "editor": "colorPicker",
    "scope": "global"
  */
  --content-links-hover-background-color: rgba(255, 255, 255, 0);
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-font-size"
    ]
  */
  --content-links-font-size: 18px;
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Size",
    "type": "button",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global"
  */
  --content-links-hover-font-size: 18px;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-font-weight"
    ]
  */
  --content-links-font-weight: 400;
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Font weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --content-links-hover-font-weight: 400;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-font-style"
    ]
  */
  --content-links-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Font style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --content-links-hover-font-style: normal;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-text-decoration"
    ]
  */
  --content-links-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Text decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --content-links-hover-text-decoration: none;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--content-links-hover-text-transform"
    ]
  */
  --content-links-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Links", "Hover"],
    "title": "Text transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --content-links-hover-text-transform: none;
  /* VoogStyle
    "path": ["Content", "Links", "Normal"],
    "title": "Color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global",
    "featured": true
  */
  --content-links-color: #818181;
 /* VoogStyle
  "path": ["Content", "Links", "Hover"],
  "title": "Color",
  "type": "button",
  "editor": "colorPicker",
  "scope": "global"
*/
  --content-links-hover-color: black;
  /* VoogStyle
     "path": ["Footer"],
     "title": "Footer background",
     "editor": "colorPicker",
     "scope": "global"
  */
  --footer-background-color: #f4f4f4;
}

.main {
  background-color: var(--global-background-color);
}

.header,
.main-menu {
  background-color: var(--header-background-color);
}

.footer {
  background-color: var(--footer-background-color);
}

.header .header-inner,
.main-menu ul,
.sub-menu {
  padding-right: var(--global-padding-lr);
}

.site-title,
.sub-menu {
  padding-left: var(--global-padding-lr);
}

html,
body,
.custom-btn,
.lang-menu-btn,
.jq-select,
.form_field_textfield,
.form_field_textarea,
.form_submit input,
.submit,
input[type=submit],
input[type=text],
textarea,
.search-submit,
.lang-menu-btn,
.option-btn {
  font-family: var(--font-main);
}

body,
.header .main-menu-toggler {
  color: var(--main-color);
}

.sub-menu a:hover,
.sub-menu a.active,
.voog-search-modal-results h3,
.voog-search-modal-results a {
  color: var(--second-color);
}

.option-btn,
blockquote,
.voog-search-modal-result,
.sub-menu a,
.post-header .post-date,
.post-cover .post-cover-inner .edy-img-drop-area-placeholder,
.comment .comment-info {
  color: var(--third-color);
}

.wrap {
  max-width: var(--main-width);
}

main .content-body,
main .post-content {
  color: var(--content-color);
  font-family: var(--content-font-family);
  font-size: var(--content-font-size);
  font-style: var(--content-font-style);
  font-weight: var(--content-font-weight);
  letter-spacing: var(--content-letter-spacing);
  line-height: var(--content-line-height);
  padding-bottom: var(--content-padding-bottom);
  text-align: var(--content-alignment);
  text-decoration: var(--content-text-decoration);
  text-transform: var(--content-text-transform);
}

main .content-body a,
main .post-content a,
main .footer-content a {
  background-color: var(--content-links-background-color);
  color: var(--content-links-color);
  font-family: var(--content-links-font-family);
  font-style: var(--content-links-font-style);
  font-weight: var(--content-links-font-weight);
  letter-spacing: var(--content-links-letter-spacing);
  text-decoration: var(--content-links-text-decoration);
  text-transform: var(--content-links-text-transform);
}
main .content-body a:hover,
main .post-content a:hover,
main .footer-content a:hover {
  background-color: var(--content-links-hover-background-color);
  color: var(--content-links-hover-color);
  font-style: var(--content-links-hover-font-style);
  font-weight: var(--content-links-hover-font-weight);
  text-decoration: var(--content-links-hover-text-decoration);
  text-transform: var(--content-links-hover-text-transform);
}

main .content-body a,
main .post-content a {
  font-size: var(--content-links-font-size);
}
main .content-body a:hover,
main .post-content a:hover {
  font-size: var(--content-links-hover-font-size);
}

.formatted h1 {
  color: var(--h1-color);
  font-family: var(--h1-font-family);
  font-size: var(--h1-font-size);
  font-style: var(--h1-font-style);
  font-weight: var(--h1-font-weight);
  letter-spacing: var(--h1-letter-spacing);
  line-height: var(--h1-line-height);
  padding-bottom: var(--h1-padding-bottom);
  text-align: var(--h1-alignment);
  text-decoration: var(--h1-text-decoration);
  text-transform: var(--h1-text-transform);
}
.formatted h2 {
  color: var(--h2-color);
  font-family: var(--h2-font-family);
  font-size: var(--h2-font-size);
  font-style: var(--h2-font-style);
  font-weight: var(--h2-font-weight);
  letter-spacing: var(--h2-letter-spacing);
  line-height: var(--h2-line-height);
  padding-bottom: var(--h2-padding-bottom);
  text-align: var(--h2-alignment);
  text-decoration: var(--h2-text-decoration);
  text-transform: var(--h2-text-transform);
}
.formatted h3 {
  color: var(--h3-color);
  font-family: var(--h3-font-family);
  font-size: var(--h3-font-size);
  font-style: var(--h3-font-style);
  font-weight: var(--h3-font-weight);
  letter-spacing: var(--h3-letter-spacing);
  line-height: var(--h3-line-height);
  padding-bottom: var(--h3-padding-bottom);
  text-align: var(--h3-alignment);
  text-decoration: var(--h3-text-decoration);
  text-transform: var(--h3-text-transform);
}

@media screen and (max-width: 500px) {
  .formatted h1 {
    font-size: calc(var(--h1-font-size) - 4px);
  }
  .formatted h2 {
    font-size: calc(var(--h2-font-size) - 2px);
  }
  .formatted h3 {
    font-size: calc(var(--h3-font-size) - 2px);
  }
}
.site-title {
  color: var(--site-title-color);
  font-family: var(--site-title-font-family);
  font-style: var(--site-title-font-style);
  font-weight: var(--site-title-font-weight);
  letter-spacing: var(--site-title-letter-spacing);
  text-transform: var(--site-title-text-transform);
}
.site-title .site-title-inner {
  text-decoration: var(--site-title-text-decoration);
}
.site-title a {
  color: black;
}

.main-menu ul a {
  color: var(--main-menu-color);
  font-family: var(--main-menu-font-family);
  font-size: var(--main-menu-font-size);
  font-style: var(--main-menu-font-style);
  font-weight: var(--main-menu-font-weight);
  letter-spacing: var(--main-menu-letter-spacing);
  text-decoration: var(--main-menu-text-decoration);
  text-transform: var(--main-menu-text-transform);
}
.main-menu ul a:hover {
  color: var(--main-menu-hover-color);
  font-size: var(--main-menu-hover-font-size);
  font-style: var(--main-menu-hover-font-style);
  font-weight: var(--main-menu-hover-font-weight);
  text-decoration: var(--main-menu-hover-text-decoration);
  text-transform: var(--main-menu-hover-text-transform);
}
.main-menu ul a.active {
  color: var(--main-menu-active-color);
  font-size: var(--main-menu-active-font-size);
  font-style: var(--main-menu-active-font-style);
  font-weight: var(--main-menu-active-font-weight);
  text-decoration: var(--main-menu-active-text-decoration);
  text-transform: var(--main-menu-active-text-transform);
}

@media screen and (min-width: 500px) {
  .site-title {
    font-size: var(--site-title-font-size);
  }

  .blog-list-page .main .article,
  .blog-list-page .main .new-article {
    width: var(--blog-list-article-width);
  }
}
.blog-list-page .main .article .article-content,
.blog-list-page .main .new-article .article-content {
  text-align: var(--blog-list-alignment);
  left: var(--blog-list-padding);
  right: var(--blog-list-padding);
}
.blog-list-page .main .article h2,
.blog-list-page .main .new-article h2 {
  color: var(--blog-list-headings-color);
  font-family: var(--blog-list-headings-font-family);
  font-size: var(--blog-list-headings-font-size);
  font-style: var(--blog-list-headings-font-style);
  font-weight: var(--blog-list-headings-font-weight);
  letter-spacing: var(--blog-list-headings-letter-spacing);
  line-height: var(--blog-list-headings-line-height);
  text-decoration: var(--blog-list-headings-text-decoration);
  text-transform: var(--blog-list-headings-text-transform);
}
.blog-list-page .main .article .article-date,
.blog-list-page .main .new-article .article-date {
  color: var(--blog-list-date-color);
  font-family: var(--blog-list-date-font-family);
  font-size: var(--blog-list-date-font-size);
  font-style: var(--blog-list-date-font-style);
  font-weight: var(--blog-list-date-font-weight);
  letter-spacing: var(--blog-list-date-letter-spacing);
  padding-top: var(--blog-list-date-padding-top);
  text-decoration: var(--blog-list-date-text-decoration);
  text-transform: var(--blog-list-date-text-transform);
}

.form_submit input,
.submit,
.custom-button,
.custom-button:hover {
  color: var(--fourth-color);
}

.form_field_textfield,
.form_field_textarea {
  background-color: var(--fourth-color);
}

label .form_field_checkbox {
  background-color: var(--fourth-color);
}
</style>

{{ site.style_tag }}