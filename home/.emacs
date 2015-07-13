;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

(show-paren-mode t)
(ffap-bindings)
;;(add-to-list 'load-path "~/.emacs.d/")
(load "~/.emacs.d/cmake-mode.el")

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
  (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

(setq c-default-style
  '((c++-mode . "bsd")
  (other . "gnu")))

(setq tab-stop-list (number-sequence 4 120 4))
(setq-default c-basic-offset 4)

(setq url-proxy-services '(("no_proxy" . "work\\.com")
                           ("http" . "10.144.1.10:8080")
                           ("ftp" . "10.144.1.10:8080")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tango))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-p") 'ace-window)

;; turn on Semantics
(semantic-mode 1)
(global-semantic-idle-scheduler-mode 1)
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
  )
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

(fset 'hi-bbc
   "\C-[xhi-l\C-im\C-i\C-m\C-xwh/OAM/BBC\C-mhi-red-b\C-m\C-[xhi-l\C-im\C-i\C-m\C-[xhi-l\C-im\C-i\C-m\C-xwh/OAM/BBC\C-mhi-red-b\C-m\C-xwh\\(\\(INF\\)\\|\\(WRN\\)\\|\\(ERR\\)\\)/OAM/BBC, BBCServices.*\C-mhi-black-b\C-m\C-xwh\C-[p\C-[f\C-[f\C-[f\C-[f\C-[f\C-[f\C-[\C-?R.ASICService\C-mhi-black-b\C-m\C-xwh/HWA/\\(\\(OPTS\\)\\|\\(SUM\\)\\)\C-mhi-blue-b\C-m\C-xwhOIC4\C-mhi-blue-b\C-m\C-xwhOIC5\C-mhi-green-b\C-m")

(fset 'hi-bbc-2
   "\C-[xhi-l\C-im\C-i\C-m\C-xwh/OAM/BBC\C-mhi-red-b\C-m\C-[xhi-l\C-im\C-i\C-m\C-[xhi-l\C-im\C-i\C-m\C-xwh/OAM/BBC\C-mhi-red-b\C-m\C-xwh\\(\\(INF\\)\\|\\(WRN\\)\\|\\(ERR\\)\\)/OAM/BBC, BBCServices.*\C-mhi-black-b\C-m\C-xwh\C-[p\C-[f\C-[f\C-[f\C-[f\C-[f\C-[f\C-[\C-?R.ASICService\C-mhi-black-b\C-m\C-xwh/HWA/OPTS\C-[b\C-[b\C-[b\\(\C-e\\)\\|\\(/HWA/SUM\\)\C-mhi-blue-b\C-m\C-xwhOIC4\C-mhi-blue-b\C-m\C-xwhOIC5\C-mhi-green-b\C-m")
