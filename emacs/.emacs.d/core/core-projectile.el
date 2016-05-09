(projectile-global-mode)
(setq projectile-compilation-command 'helm)
(setq projectile-switch-project-action 'helm-projectile-find-file)
(helm-projectile-on)

(provide 'core-projectile)
