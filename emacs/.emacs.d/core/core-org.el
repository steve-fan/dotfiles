(org-babel-do-load-languages
 'org-babel-load-languages
 '( (perl . t)
    (ruby . t)
    (sh . t)
    (python . t)
    (emacs-lisp . t)
    )
 )

(setq org-use-speed-commands t)
(set-default 'truncate-lines t)
(setq org-file-apps
          '((auto-mode . emacs)
            ("\\.?\\'" . "open %s")
            ))

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
        ))

(provide 'core-org)
