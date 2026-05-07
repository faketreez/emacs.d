;;; init-local.el --- Local customizations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Mac key modifiers
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

;; Font
;; Font
(cond
 ((member "Iosevka" (font-family-list))
  (set-face-attribute 'default nil :font "Iosevka" :height 160))
 ((member "Iosevka Nerd Font" (font-family-list))
  (set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 160))

;; Gruber Darker theme
(require-package 'gruber-darker-theme)
(setq-default custom-enabled-themes '(gruber-darker))

;; Override the dark command to use gruber-darker
(defun dark ()
  "Activate a dark color theme."
  (interactive)
  (setq custom-enabled-themes '(gruber-darker))
  (reapply-themes))

;; Show line numbers in all file-editing buffers
(global-display-line-numbers-mode 1)

(provide 'init-local)
;;; init-local.el ends here
