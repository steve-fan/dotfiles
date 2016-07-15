(setq org-publish-project-alist
      '(("blog-html"
         :base-directory "~/org/blog/"
         :html-extension "html"
         :base-extension "org"
         :recursive t
         :publishing-directory "~/steve-fan.github.io/"
         :publishing-function (org-html-publish-to-html)
         :html-preamble nil
         :html-postamble nil
         :with-toc nil
         )
        ("blog-static"
         :base-directory "~/org/blog/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|gz\\|tar\\|zip\\|bz2\\|xz\\|tex\\|txt\\|html\\|scm\\|key\\|svg"
         :publishing-directory "~/steve-fan.github.io"
         :publishing-function org-publish-attachment
         :recursive t
         )
        ("blog" :components ("blog-html" "blog-static"))
        )

(provide 'core-org)
