;; -*- lexical-binding: t; -*-

(require 'elpaca-setup)
(require 'buffer-move)
(require 'macros)
;; (require 'treesit-predicate-rewrite)

(elpaca compat)

(use-package transient
  :ensure (:wait t))

(provide 'scripts)
