;;; early-init.el --- Emacs 27+ pre-initialisation config  -*- lexical-binding: t; -*-

;;; Commentary:

;; Emacs 27+ loads this file before (normally) calling
;; `package-initialize'.  We use this file to suppress that automatic
;; behaviour so that startup is consistent across Emacs versions.

;;; Code:

(setq package-enable-at-startup nil)

;; Work around bundled GCC's macOS version detection (caldwell/build-emacs#158).
(when (and (eq system-type 'darwin) (native-comp-available-p))
  (require 'comp)
  (add-to-list 'native-comp-driver-options "-mmacosx-version-min=11"))

;; So we can detect this having been loaded
(provide 'early-init)

;;; early-init.el ends here
