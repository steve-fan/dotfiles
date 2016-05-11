(menu-bar-mode -1)
(tool-bar-mode 0)
(auto-save-mode -1)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq linum-format (quote "%3d "))

(load-theme 'ujelly t)

(set-face-background 'vertical-border "color-232")
(defun change-window-divider ()
  (let ((display-table (or buffer-display-table standard-display-table)))
        (set-display-table-slot display-table  5 ?   )
        (set-window-display-table (selected-window) display-table)))
(add-hook 'window-configuration-change-hook 'change-window-divider)

(provide 'core-ui)
