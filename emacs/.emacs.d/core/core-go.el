(require 'company)
(require 'company-go)

;; (when (memq window-system '(mac ns))
;;   (exec-path-from-shell-initialize)
;;   (exec-path-from-shell-copy-env "GOPATH"))

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook 'smartparens-mode)
(add-hook 'go-mode-hook 'yas-minor-mode)
(add-hook 'go-mode-hook 'rainbow-delimiters-mode)
(add-hook 'go-mode-hook
          (lambda ()
            (setq compile-command "go build -v && go test -v && go vet && go install")
            (define-key (current-local-map) "\C-c\C-c" 'compile)
            (local-set-key (kbd "M-.") 'godef-jump)
            (go-eldoc-setup)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

(provide 'core-go)
