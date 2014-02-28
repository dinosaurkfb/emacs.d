;; My Environment, C-{ and C-up, C-} and C-down don't work
;; And M-{ and M-} are used by paredit
(global-set-key (kbd "M-_") 'backward-paragraph)
(global-set-key (kbd "M-+") 'forward-paragraph)

(global-set-key "%" 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(provide 'init-local)
