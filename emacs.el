;; added by Custom. Don't delete.
(custom-set-variables)
(custom-set-faces
 '(default ((t (:height 180 :family "Source Code Pro")))))
;; default to text-mode with word wrap
(setq-default major-mode 'text-mode)
(add-hook 'text-mode-hook 'visual-line-mode)
;; use spaces instead of tabs
(setq-default major-mode 'text-mode)
;; use normal keyboard shortcuts for copy and paste
(cua-mode t)
;; hide toolbar + icons
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(prefer-coding-system 'utf-8)
(setq
 ring-bell-function 'ignore
 require-final-newline t
 ;; set backup and auto-save directories
 backup-by-copying t
 backup-directory-alist '(("." . "~/Documents/.backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 auto-save-file-name-transforms
      `((".*" ,"~/Documents/.backups/" t))
 ;; use right Option key for special characters still
 ns-right-alternate-modifier (quote none)
 inhibit-startup-screen t)
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
;; make .m and .mi files open in Perl mode
(add-to-list 'auto-mode-alist '("\\.m\\'" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.mi\\'" . perl-mode))