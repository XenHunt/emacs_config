;; -*- lexical-binding: t; -*-

(use-package telega
  :init
  (setq telega-use-image t
        telega-emoji-use-image t)
  :config
  (add-hook 'telega-load-hook 'telega-notifications-mode))

(provide 'telega-package)
