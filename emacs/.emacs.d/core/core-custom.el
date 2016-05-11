(which-key-mode)
(global-linum-mode)
(global-anzu-mode +1)
(global-undo-tree-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'core-custom)
