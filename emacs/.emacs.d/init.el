;;; init.el --- Personal emacs configuration of Steve Fan

;; Copyright © 2016 Steve Fan
;;
;; Author: Steve Fan <fanzc.daily@gmail.com>
;; Maintainer: Steve Fan <fanzc.daily@gmail.com>

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Personal Emacs configuration of Steve Fan

;;; Code:

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; update the package metadata
(unless package-archive-contents
  (package-refresh-contents))

;; required package list
(defvar package-list
  '(exec-path-from-shell
    smartparens
    rainbow-delimiters
    expand-region
    anzu
    python-mode
    go-mode
    go-rename
    company-go
    magit
    yasnippet
    company-jedi
    flycheck
    avy
    helm
    zenburn-theme
    ujelly-theme
    color-theme-sanityinc-tomorrow
    cyberpunk-theme
    monokai-theme
    helm-projectile
    robe
    rubocop
    rinari
    enh-ruby-mode
    emmet-mode
    js2-refactor
    js2-mode
    multi-term
    which-key
    helm-ag
    scss-mode
    elixir-mode
    alchemist
    elpy)
  "A list of packages to ensure are installed at lanuch.")

;; Install required packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))

(require 'core-ui)
(require 'core-keybindings)
(require 'core-projectile)
(require 'core-yasnippet)
(require 'core-helm)
(require 'core-company)

(require 'core-ruby)
(require 'core-python)
(require 'core-go)
(require 'core-js)
(require 'core-jsx)
(require 'core-lisp)
(require 'core-elixir)

(require 'core-custom)

(provide 'init)

;;; init.el ends here
