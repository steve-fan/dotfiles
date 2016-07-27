(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook 'emmet-mode)
(add-hook 'js2-mode-hook 'js2-refactor-mode)
(add-hook 'js2-mode-hook 'smartparens-mode)
(add-hook 'js2-mode-hook 'yas-minor-mode)
(add-hook 'js2-mode-hook 'rainbow-delimiters-mode)
(setq js-indent-level 2)

(quickrun-add-command "javascript/node"
                      '((:command . "node")
                        (:exec . ("babel %s -o %n.babel.js" "node %n.babel.js"))
                        (:remove . ("%n.babel.js"))
                        :override t))

(provide 'core-js)
