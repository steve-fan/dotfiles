;; use ipython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")

(require 'company-jedi)
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi)
  (jedi:setup))

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'my/python-mode-hook)
(add-hook 'python-mode-hook 'yas-minor-mode)
(add-hook 'python-mode-hook 'flycheck-mode)

(provide 'core-python)
