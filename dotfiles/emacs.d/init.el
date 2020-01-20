(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/autoload"))
(require 'melpa)
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(use-package gruvbox-theme :ensure t)

(require 'default-indent)
(require 'font-size)
(require 'completion-close)
(setq font-size-default 20)
(font-size-set)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2b9dc43b786e36f68a9fd4b36dd050509a0e32fe3b0a803310661edb7402b8b6" default)))
 '(package-selected-packages (quote (use-package gruvbox-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'gruvbox-light-medium)
