;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
;; (setq debug-on-error t)

;; do not confirm file creation
(setq confirm-nonexistent-file-or-buffer nil)

(transient-mark-mode t)
(which-key-mode)
(global-linum-mode)
(global-anzu-mode +1)
(global-undo-tree-mode)
(super-save-mode +1)
(setq super-save-auto-save-when-idle t)
(setq super-save-idle-duration 2)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'display-buffer-alist
             `(,(rx bos "*helm" (* not-newline) "*" eos)
               (display-buffer-in-side-window)
               (inhibit-same-window . t)
               (window-height . 0.3)))

(add-to-list 'projectile-globally-ignored-directories "node_modules")

;; Use the system clipboard
(setq x-select-enable-clipboard t)

(defun close-all-buffer()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))


(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))


(setq interprogram-cut-function 'paste-to-osx)


;; Allow 20MB of memory (instead of 0.76MB) before
;; calling garbage collection. This means GC runs less often,
;; which speeds up some operations.
(setq gc-cons-threshold 20000000)

;; Store backups and auto-saved files in
;; TEMPORARY-FILE-DIRECTORY (which defaults to /tmp on Unix),
;; instead of in the same directory as the file. This means we're
;; still making backups, but not where they'll get in the way.
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; When opening a file, always follow symlinks
(setq vc-follow-symlinks t)

;; When saving a file that starts with `#!', make it executable."
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;; Single space after periods
(setq sentence-end-double-space nil)

;; If some text is selected, and you type some text, delete the
;; selected text and start inserting your typed text.
(delete-selection-mode t)

;; If you save a file that doesn't end with a newline,
;; automatically append one.
(setq require-final-newline t)

;; Don't present the usual startup message, and clear the scratch buffer.
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Add file sizes in human-readable units (KB, MB, etc) to dired buffers.
(setq-default dired-listing-switches "-alh")

;; Refresh buffers when files change
(global-auto-revert-mode t)

;; When you perform a problematic operation, flash the screen
;; instead of ringing the terminal bell.
(setq visible-bell t)

(setq org-latex-inputenc-alist '(("utf8" . "utf8x")))
(setq latex-run-command "xelatex")


(provide 'core-custom)
