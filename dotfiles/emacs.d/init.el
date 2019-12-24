(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)


(add-to-list 'load-path (expand-file-name "~/.emacs.d/autoload"))
(require 'melpa)
(require 'gruvbox-theme)
(require 'default-indent)
(require 'font-size)
(setq font-size-default 20)
(font-size-set-default)
