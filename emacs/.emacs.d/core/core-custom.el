(which-key-mode)
(global-linum-mode)
(global-anzu-mode +1)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'core-custom)
