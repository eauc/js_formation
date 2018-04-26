
(defun my-js2--propertize (end)
  (setq js2-mode-parsing nil)
  (setq js2-mode-buffer-dirty-p t)
  (js2-mode-hide-overlay)
  (js2-reparse t))

(defconst my-js2--font-lock-keywords
  '(my-js2--propertize))

(define-derived-mode my-js2-mode js2-mode "My Javascript-IDE"
  "Test test test."
  (message "My js2 mode")
  ;; (if js2-mode-parse-timer
  ;;     (cancel-timer js2-mode-parse-timer))
  ;; (setq js2-mode-parsing nil)
  ;; (setq js2-mode-buffer-dirty-p t)
  ;; (js2-mode-hide-overlay)
  ;; (js2-reparse t)
  ;; (js2-mode-apply-deferred-properties)
  (font-lock-remove-keywords nil my-js2--font-lock-keywords)
  (font-lock-add-keywords nil my-js2--font-lock-keywords 'append))
