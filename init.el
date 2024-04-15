(setq user-emacs-directory "~/.emacs.d/")

(org-babel-load-file
  (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(codeium/metadata/api_key "94d3967e-4391-4209-942d-e1e03ff7629d")
 '(custom-safe-themes
   '("34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" default))
 '(package-selected-packages '(evil-tutor evil-collection evil))
 '(prism-colors
   '(font-lock-type-face font-lock-function-name-face font-lock-keyword-face font-lock-doc-face))
 '(prism-comments-fn
   #[257 "\300\1\301\302\303\"\304#\207"
	 [prism-blend face-attribute font-lock-comment-face :foreground 0.25]
	 6 "\12\12(fn COLOR)"])
 '(prism-desaturations '(40 50 60))
 '(prism-lightens '(0 5 10))
 '(prism-num-faces 16)
 '(prism-strings-fn
   #[257 "\300\1\301\302#\207"
	 [prism-blend "white" 0.5]
	 5 "\12\12(fn COLOR)"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))
