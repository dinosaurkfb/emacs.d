;; My Environment, C-{ and C-up, C-} and C-down don't work
;; And M-{ and M-} are used by paredit
(global-set-key (kbd "M-_") 'backward-paragraph)
(global-set-key (kbd "M-+") 'forward-paragraph)

;; C-@ is used by expand-region. And C-space is always the same
;; as C-@ when using XTERM
(global-set-key (kbd "C-c m") 'set-mark-command)

(global-set-key "%" 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(setq user-full-name "Kong Fanbin")
(setq user-mail-address "kfbuniversity@gmail.com")
;;Personal Information
(add-to-list 'exec-path "D:/ProgramFiles_x86/Aspell/bin/")
(setq-default ispell-program-name "aspell")
(ispell-change-dictionary "american" t)
(require 'ispell)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(package-initialize)
(elpy-enable)
(set-fontset-font "fontset-default" 'cp936 '("SimSun" . "unicode-bmp"))
(provide 'init-local)
