;; -*- lexical-binding: t; -*-
;;; Code:

(defmacro after! (targets &rest body)
    "A smart wrapper around `with-eval-after-load'. Supresses warnings during
  compilation. This will no-op on features that have been disabled by the user."
    (declare (indent defun) (debug t))
    (list (if (or (not (bound-and-true-p byte-compile-current-file))
                  (dolist (next (nox-enlist targets))
                    (unless (keywordp next)
                      (if (symbolp next)
                          (require next nil :no-error)
                        (load next :no-message :no-error)))))
              #'progn
            #'with-no-warnings)
          (if (symbolp targets)
              `(with-eval-after-load ',targets ,@body)
            (pcase (car-safe targets)
              ((or :or :any)
               (macroexp-progn
                (cl-loop for next in (cdr targets)
                         collect `(after! ,next ,@body))))
              ((or :and :all)
               (dolist (next (cdr targets))
                 (setq body `((after! ,next ,@body))))
               (car body))
              (_ `(after! (:and ,@targets) ,@body))))))

(provide 'macros)

;;; macros.el ends here
