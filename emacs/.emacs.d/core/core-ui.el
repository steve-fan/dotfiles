(menu-bar-mode -1)
(tool-bar-mode 0)
(auto-save-mode -1)
(setq make-backup-files nil)

(setq linum-format (quote "%3d "))
;; (custom-set-faces '(linum ((t (:background "color-235")))))

(load-theme 'ujelly t)

(provide 'core-ui)
