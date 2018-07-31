;; Create save hook to run elixir-format on save
(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))

(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
