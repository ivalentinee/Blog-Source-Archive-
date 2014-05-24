(setq org-publish-project-alist
      '(
        ("blog" :components ("blog-org" "blog-stylesheets" "blog-javascript" "blog-images"))
        ("blog-org"
         :base-directory "./posts/"
         :base-extension "org"
         :publishing-directory "./public/"
         :recursive t
         :exclude "template.org\\|widget"
         :publishing-function org-publish-org-to-custom-html
         :headline-levels 4
         :auto-sitemap t
         :sitemap-title "Записи"
         :sitemap-function org-publish-org-custom-sitemap
         :sitemap-filename "index.org"
         :sitemap-template "templates/sitemap-template.org"
         :sitemap-date-format "%d.%m.%Y"
         :sitemap-file-entry-format "%t (%d)"
         :with-toc nil
         ;; html options
         :html-preamble "<div class=\"header\"><h1>%t</h1><h2>%d</h2></div>"
         :html-postamble
"<div class=\"postamble-content\">
  <div class=\"pure-g-r\">

    <div class=\"pure-u-1-2\">
      <ul class=\"postamble-copyright\">
        <li>Built with <a href=\"http://purecss.io/\">Pure CSS</a></li>
        <li>Created with <a href=\"http://www.gnu.org/software/emacs/\">Emacs</a> and <a href=\"http://orgmode.org/\">Org-Mode</a></li>
        <li><span style=\"-webkit-transform: rotate(180deg); -moz-transform: rotate(180deg); -o-transform: rotate(180deg); -khtml-transform: rotate(180deg); -ms-transform: rotate(180deg); transform: rotate(180deg); display: inline-block;\">
	&copy;
</span> Валентин Ионов, 2014</li>
      </ul>
    </div>

    <div class=\"pure-u-1-2\">
      <ul class=\"postamble-links\">
        <li><a href=\"https://github.com/vemperor\">Github</a></li>
        <li><a href=\"https://plus.google.com/u/0/111577518760980284675\">Google+</a></li>
        <li><a href=\"https://vk.com/v_emperor\">VK</a></li>
      </ul>
    </div>

  </div>
</div>"
         :html-html5-fancy t
         :html-head nil
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :style nil
         )
        ("blog-stylesheets"
         :base-directory "./stylesheets/"
         :base-extension "css"
         :publishing-directory "./public/stylesheets/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog-javascript"
         :base-directory "./javascript/"
         :base-extension "js"
         :publishing-directory "./public/javascript/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog-images"
         :base-directory "./posts/images"
         :base-extension "jpg\\|png"
         :publishing-directory "./public/images/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        )
      )

(provide 'projects)
