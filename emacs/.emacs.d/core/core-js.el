(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook 'emmet-mode)
(add-hook 'js2-mode-hook 'js2-refactor-mode)
(add-hook 'js2-mode-hook 'smartparens-mode)
(add-hook 'js2-mode-hook 'yas-minor-mode)

(provide 'core-js)
