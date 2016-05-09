(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))
(add-hook 'js2-jsx-mode-hook
	  '(lambda()
	     (setq emmet-expand-jsx-className? t)))

(add-hook 'js2-jsx-mode-hook 'emmet-mode)
(add-hook 'js2-jsx-mode-hook 'smartparens-mode)
(add-hook 'js2-jsx-mode-hook 'yas-minor-mode)


(provide 'core-jsx)
