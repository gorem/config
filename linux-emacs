(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 '(default ((t (:height 130 :family "Source Code Pro"))))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq-default major-mode 'text-mode)
(add-hook 'text-mode-hook 'visual-line-mode)
(cua-mode t)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(setq ring-bell-function 'ignore)
(setq require-final-newline t)
(setq inhibit-startup-message t)
(prefer-coding-system 'utf-8)
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2)
(setq auto-save-file-name-transforms
      `((".*" ,"~/.backups/" t)))
(defun jtime ()
       "Insert current time like '2:34 p.m.'."
       (interactive)
       (insert (concat (format-time-string "%-I:%M") " " (substring (format-time-string "%#p") 0 1) ".m.")))
(defun jday ()
       "Insert date like Sunday, September 17, 2000."
       (interactive)
       (insert (format-time-string "%A, %B %-e, %Y")))
(defun journal-timestamp ()
       "Add date in preferred journal format and insert newlines"
       (interactive)
       (unless (= (buffer-size) 0)
	 (newline))
       (jday)
       (newline)
       (jtime)
       (newline)
       (newline))
