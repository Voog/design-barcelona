.main {
  background-color: var(--bg-color);
}

.header,
.main-menu {
  background-color: var(--header-background-color);
}

body,
.custom-btn,
.lang-menu-btn,
.jq-select,
.search-submit,
.lang-menu-btn,
.option-btn {
  font-family: var(--font-main);
}

body,
.header .main-menu-toggler {
  color: var(--main-color);
}

.voog-search-modal-results h3,
.voog-search-modal-results a {
  color: var(--second-color);
}

.option-btn,
blockquote,
.voog-search-modal-result,
.post-header .post-date,
.post-cover .post-cover-inner .edy-img-drop-area-placeholder,
.comment .comment-info {
  color: var(--third-color);
}

.wrap,
.footer .wrap {
  max-width: var(--main-width);
}

main .content.formatted {
  background-color: var(--content-background-color);
}

@media screen and (min-width: 500px) {
  main .content.formatted {
    padding: var(--content-padding);
  }
}
main .content-body,
main .post-content {
  color: var(--content-color);
  font-size: var(--content-font-size);
  font-style: var(--content-font-style);
  font-weight: var(--content-font-weight);
  line-height: var(--content-line-height);
  text-align: var(--content-alignment);
  text-decoration: var(--content-text-decoration);
  text-transform: var(--content-text-transform);
}

main .content-body a,
main .post-content a,
.footer-content a {
  color: var(--content-links-color);
  font-style: var(--content-links-font-style);
  font-weight: var(--content-links-font-weight);
  text-decoration: var(--content-links-text-decoration);
  text-transform: var(--content-links-text-transform);
}
main .content-body a:hover,
main .post-content a:hover,
.footer-content a:hover {
  color: var(--content-links-hover-color);
  font-style: var(--content-links-hover-font-style);
  font-weight: var(--content-links-hover-font-weight);
  text-decoration: var(--content-links-hover-text-decoration);
  text-transform: var(--content-links-hover-text-transform);
}

main .post-content .post-tags a:not(.edy-tag-suggestion) {
  color: #fff;
}

.formatted h1 {
  color: var(--h1-color);
}
.formatted h1,
.formatted h1 a,
.formatted h1 a:hover {
  font-family: var(--font-main);
  font-size: var(--h1-font-size);
  font-style: var(--h1-font-style);
  font-weight: var(--h1-font-weight);
  line-height: var(--h1-line-height);
  text-align: var(--h1-alignment);
  text-decoration: var(--h1-text-decoration);
  text-transform: var(--h1-text-transform);
}
.formatted h2 {
  color: var(--h2-color);
}
.formatted h2, .formatted h2 a, .formatted h2 a:hover {
  font-family: var(--font-main);
  font-size: var(--h2-font-size);
  font-style: var(--h2-font-style);
  font-weight: var(--h2-font-weight);
  line-height: var(--h2-line-height);
  text-align: var(--h2-alignment);
  text-decoration: var(--h2-text-decoration);
  text-transform: var(--h2-text-transform);
}
.formatted h3 {
  color: var(--h3-color);
}
.formatted h3,
.formatted h3 a,
.formatted h3 a:hover {
  font-family: var(--font-main);
  font-size: var(--h3-font-size);
  font-style: var(--h3-font-style);
  font-weight: var(--h3-font-weight);
  line-height: var(--h3-line-height);
  text-align: var(--h3-alignment);
  text-decoration: var(--h3-text-decoration);
  text-transform: var(--h3-text-transform);
}
.formatted .custom-btn, .formatted .custom-btn:hover {
  background-color: var(--content-button-background-color);
  color: var(--content-button-color);
  font-family: var(--font-main);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  line-height: var(--content-button-line-height);
  text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
}
.formatted .custom-btn:hover {
  opacity: .8;
}
.formatted .comment-form h2,
.formatted .comments h2 {
  font-size: 24px;
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
  color: var(--header-site-title-color);
  font-style: var(--header-site-title-font-style);
  font-weight: var(--header-site-title-font-weight);
  text-transform: var(--header-site-title-text-transform);
}
.site-title .site-title-inner {
  text-decoration: var(--header-site-title-text-decoration);
}
.site-title a {
  color: black;
}

.main-menu ul a {
  color: var(--header-mainmenu-color);
  font-family: var(--font-main);
  font-size: var(--header-mainmenu-font-size);
  font-style: var(--header-mainmenu-font-style);
  font-weight: var(--header-mainmenu-font-weight);
  text-decoration: var(--header-mainmenu-text-decoration);
  text-transform: var(--header-mainmenu-text-transform);
}
.main-menu ul a:hover {
  color: var(--header-mainmenu-hover-color);
  font-style: var(--header-mainmenu-hover-font-style);
  font-weight: var(--header-mainmenu-hover-font-weight);
  text-decoration: var(--header-mainmenu-hover-text-decoration);
  text-transform: var(--header-mainmenu-hover-text-transform);
}
.main-menu ul a.active {
  color: var(--header-mainmenu-active-color);
  font-style: var(--header-mainmenu-active-font-style);
  font-weight: var(--header-mainmenu-active-font-weight);
  text-decoration: var(--header-mainmenu-active-text-decoration);
  text-transform: var(--header-mainmenu-active-text-transform);
}

.sub-menu a {
  color: var(--content-submenu-color);
  font-size: var(--content-submenu-font-size);
  font-style: var(--content-submenu-font-style);
  font-weight: var(--content-submenu-font-weight);
  text-decoration: var(--content-submenu-text-decoration);
  text-transform: var(--content-submenu-text-transform);
}
.sub-menu a:hover {
  color: var(--content-submenu-hover-color);
  font-size: var(--content-submenu-font-size);
  font-style: var(--content-submenu-hover-font-style);
  font-weight: var(--content-submenu-hover-font-weight);
  text-decoration: var(--content-submenu-hover-text-decoration);
  text-transform: var(--content-submenu-hover-text-transform);
}
.sub-menu a.active {
  color: var(--content-submenu-active-color);
  font-size: var(--content-submenu-font-size);
  font-style: var(--content-submenu-active-font-style);
  font-weight: var(--content-submenu-active-font-weight);
  text-decoration: var(--content-submenu-active-text-decoration);
  text-transform: var(--content-submenu-active-text-transform);
}

.footer {
  background-color: var(--footer-background-color);
}
.footer .footer-content {
  color: var(--footer-color);
  font-family: var(--font-main);
  font-size: var(--footer-font-size);
  font-style: var(--footer-font-style);
  font-weight: var(--footer-font-weight);
  line-height: var(--footer-line-height);
  text-align: var(--footer-alignment);
  text-decoration: var(--footer-text-decoration);
  text-transform: var(--footer-text-transform);
}
.footer .footer-content .lang-menu-btn .lang-title {
  color: var(--footer-color);
}

@media screen and (min-width: 500px) {
  .site-title {
    font-size: var(--header-site-title-font-size);
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
  font-family: var(--font-main);
  font-size: var(--blog-list-headings-font-size);
  font-style: var(--blog-list-headings-font-style);
  font-weight: var(--blog-list-headings-font-weight);
  line-height: var(--blog-list-headings-line-height);
  text-decoration: var(--blog-list-headings-text-decoration);
  text-transform: var(--blog-list-headings-text-transform);
}
.blog-list-page .main .article .article-date,
.blog-list-page .main .new-article .article-date {
  color: var(--blog-list-date-color);
  font-family: var(--font-main);
  font-size: var(--blog-list-date-font-size);
  font-style: var(--blog-list-date-font-style);
  font-weight: var(--blog-list-date-font-weight);
  text-decoration: var(--blog-list-date-text-decoration);
  text-transform: var(--blog-list-date-text-transform);
}

main .content table {
  background-color: var(--table-background-color);
}
main .content table td,
main .content table th {
  border-style: var(--table-border-style);
  padding: var(--table-cell-padding);
  border-color: var(--content-color);
}

.form_field_textfield,
.form_field_textarea,
.form_submit input,
input[type=submit],
input[type=text],
textarea {
  font-family: var(--font-main);
}

.jq-select-content {
  padding: 0 28px 0 0;
}

.jq-select-inner {
  background-color: var(--form-field-background-color);
  color: var(--form-field-text-color);
  padding: 4px 10px;
}

.jq-select-arrow {
  background-color: var(--form-field-background-color);
}

.form_field_select,
.form_field_textfield,
.form_field_textarea {
  background-color: var(--form-field-background-color);
  color: var(--form-field-text-color);
  font-size: var(--form-field-text-font-size);
  font-style: var(--form-field-text-font-style);
  font-weight: var(--form-field-text-font-weight);
  line-height: var(--form-field-text-line-height);
  text-decoration: var(--form-field-text-text-decoration);
  text-transform: var(--form-field-text-text-transform);
}

.form_submit input,
.submit {
  background-color: var(--content-button-background-color);
  color: var(--content-button-color);
  font-family: var(--font-main);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  line-height: var(--content-button-line-height);
  text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
}

label .form_field_checkbox + .form_control_indicator::before {
  background: var(--form-field-background-color);
}
label .form_field_radio + .form_control_indicator::before {
  border-color: var(--form-field-background-color);
}
label .form_field_radio:checked + .form_control_indicator::before {
  background-color: var(--form-field-text-color);
}
