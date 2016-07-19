;; Set path to racer binary
(setq racer-cmd "/Users/emrys/.cargo/bin/racer")

;; Set path to rust src directory
(setq racer-rust-src-path "/usr/local/src/rustc-1.10.0/src/")

(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'flycheck-mode)
(add-hook 'rust-mode-hook #'smartparens-mode)
(add-hook 'rust-mode-hook
          '(lambda ()
             (add-hook 'flycheck-mode-hook 'flycheck-rust-setup)))

(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-racer))

;; Reduce the time after which the company auto completion popup opens
(setq company-idle-delay 0.2)
;; Reduce the number of characters before company kicks in
(setq company-minimum-prefix-length 1)
(setq company-tooltip-align-annotations t)

(provide 'core-rust)
