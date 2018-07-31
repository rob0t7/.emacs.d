;; Set Javascript Preferences
(setq js-indent-level 2)
(setq js2-basic-offset 2)

;; Prettier JS Support
(require 'prettier-js)
;; (add-hook 'js2-mode-hook 'prettier-js-mode)
;; (defun enable-minor-mode (my-pair)
;;   "Enable minor mode if filename match the regexp. MY-PAIR is a cons cell (regexp . minor-mode)."
;;   (if (buffer-file-name)
;;       (if (string-match (car my-pair) buffer-file-name)
;;           (funcall (cdr my-pair)))))
;; (add-hook 'web-mode-hook #'(lambda ()
;;                              (enable-minor-mode
;;                               '("\\.jsx?\\'" . prettier-js-mode))))

;; Flycheck JS Config
(require 'flycheck)
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers '(javascript-jshint)))
(flycheck-add-mode 'javascript-eslint 'web-mode)
(setq-default flycheck-temp-prefix ".flycheck")
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers '(json-jsonlint)))
