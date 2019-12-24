;; tabs expanded
;; tab = 2 spaces

(setq-default indent-tabs-mode nil)
(setq tab-width 2)

;; alias the two below with tab-width
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(provide 'default-indent)
