(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (leuven))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))
(cua-mode t)
(setq-default major-mode 'text-mode)
(add-hook 'text-mode-hook 'visual-line-mode)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)
(setq require-final-newline t)
(global-auto-revert-mode t)
(prefer-coding-system 'utf-8)
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "c:/Users/USERNAME/Documents/em_bu"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2)
(setq auto-save-file-name-transforms
      `(("\\(?:[^/]*/\\)*\\(.*\\)" ,"c:/Users/USERNAME/Documents/em_bu/\\1" t)))
(setq ns-right-alternate-modifier (quote none))
(add-to-list 'default-frame-alist '(cursor-color . "turquoise1"))
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
