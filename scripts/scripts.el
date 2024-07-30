;; -*- lexical-binding: t; -*-

(add-to-list 'load-path "~/.emacs.d/scripts/")

(require 'elpaca-setup)
(require 'buffer-move)
(require 'macros)

(use-package transient
  :ensure (:wait t))

(provide 'scripts)
