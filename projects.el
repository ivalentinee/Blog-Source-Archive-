(setq org-publish-project-alist
      '(
        ("blog" :components ("blog-org" "blog-stylesheets" "blog-javascript" "blog-images"))
        ("blog-org"
         :base-directory "~/coding/home/blog/posts/"
         :base-extension "org"
         :publishing-directory "~/coding/home/blog/public/"
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
         :html-preamble "<div class=\"header\"><h1>%t</h1><h2>%d</h2><p class=\"post-date\">%e</p></div>"
         :html-postamble
"<div class=\"postamble-content\">
  <div class=\"pure-g-r\">

    <div class=\"pure-u-1-2\">
      <ul class=\"postamble-copyright\">
        <li>Built with <a href=\"http://purecss.io/\">Pure CSS</a></li>
        <li>Created with <a href=\"http://www.gnu.org/software/emacs/\">Emacs</a> and <a href=\"http://orgmode.org/\">Org-Mode</a></li>
        <li><a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Лицензия Creative Commons\" style=\"border-width:0\" src=\"http://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a> Валентин Ионов, 2014</li>
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
</div>

<div id=\"copyright-text\">
    Это <span xmlns:dct=\"http://purl.org/dc/terms/\" href=\"http://purl.org/dc/dcmitype/Text\" rel=\"dct:type\">произведение </span>, автор которого — <span xmlns:cc=\"http://creativecommons.org/ns#\" property=\"cc:attributionName\">Валентин Ионов </span>, доступно на условиях <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">лицензии Creative Commons «Attribution-ShareAlike» («Атрибуция — На тех же условиях») 4.0 Всемирная </a>.
</div>"
         :html-html5-fancy t
         :html-head nil
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :style nil
         )
        ("blog-stylesheets"
         :base-directory "~/coding/home/blog/stylesheets/"
         :base-extension "css"
         :publishing-directory "~/coding/home/blog/public/stylesheets/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog-javascript"
         :base-directory "~/coding/home/blog/javascript/"
         :base-extension "js"
         :publishing-directory "~/coding/home/blog/public/javascript/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog-images"
         :base-directory "~/coding/home/blog/posts/images"
         :base-extension "jpg\\|png"
         :publishing-directory "~/coding/home/blog/public/images/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        )
      )

(provide 'projects)
