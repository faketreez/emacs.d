;;; init-yacc-lex.el --- Support for Lex and Yacc -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; GNU Bison/Yacc grammars. Use `bison-mode' when available.
(if (locate-library "bison-mode")
    (progn
      (autoload 'bison-mode "bison-mode" nil t)
      (add-auto-mode 'bison-mode "\\.\\(y\\|yy\\|yacc\\|ypp\\|yxx\\)\\'"))
  (add-auto-mode 'c-mode "\\.\\(y\\|yy\\|yacc\\|ypp\\|yxx\\)\\'"))

;; Lex/Flex files are C-like. Use a dedicated mode if the user has one installed.
(if (locate-library "flex-mode")
    (progn
      (autoload 'flex-mode "flex-mode" nil t)
      (add-auto-mode 'flex-mode "\\.\\(l\\|ll\\|lex\\|lpp\\|lxx\\)\\'"))
  (add-auto-mode 'c-mode "\\.\\(l\\|ll\\|lex\\|lpp\\|lxx\\)\\'"))

(provide 'init-yacc-lex)
;;; init-yacc-lex.el ends here
