;; use ipython
;; (setq-default py-shell-name "ipython")
;; (setq-default py-which-bufname "IPython")

;; (require 'company-jedi)
;; (defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi)
;;   (jedi:setup))

;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook 'my/python-mode-hook)
;; (add-hook 'python-mode-hook 'yas-minor-mode)
;; (add-hook 'python-mode-hook 'flycheck-mode)

;; (exec-path-from-shell-copy-env "PYTHONPATH")
(setq elpy-rpc-python-command "python3")
(setq python-check-command "python3 -m flake8")
;; disable flymake
(setq elpy-modules '(elpy-module-sane-defaults
                     elpy-module-company
                     elpy-module-eldoc
                     elpy-module-highlight-indentation
                     elpy-module-pyvenv
                     elpy-module-yasnippet))
;; flycheck for syntax checking
(add-hook 'python-mode-hook 'flycheck-mode)

(add-hook 'python-mode-hook 'rainbow-delimiters-mode)
(add-hook 'python-mode-hook 'smartparens-mode)

(elpy-enable)
(elpy-use-cpython "/usr/local/bin/python3")

(provide 'core-python)
