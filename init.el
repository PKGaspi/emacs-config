; ----- Preparación. -----

; Deshabilitar configuración custom.
(setq custom-file "~/.emacs.d/.emacs-custom.el")
(setq inhibit-x-resources 't)

; Conexión con melpa y melpa-stable.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/"))
  (package-initialize))

; Instalación de use-package.
(unless (featurep 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

; --- Ajustes iniciales. ---
(setq inhibit-startup-screen t)               ; Desactivar pantalla de bienvenida.

(tooltip-mode -1)                             ; Desactivar barra de herramientas.
(tool-bar-mode -1)                            ; Desactivar barra de herramientas.
(menu-bar-mode -1)                            ; Desactivar barra de menú de opciones.
(scroll-bar-mode -1)                          ; Desactivar barra de desplazamiento.
(toggle-frame-fullscreen)                     ; Activar pantalla completa.
(set-window-fringes nil 0 0)                  ; Desactivar márgenes.

(setq display-time-24hr-format 1)             ; Hora en formato 24 horas.
(display-time-mode 1)                         ; Mostrar la hora.
(display-battery-mode 1)                      ; Mostrar el porcentaje de la batería.

;;(set-face-attribute 'default nil :height 168)
(setq ring-bell-function 'ignore)
;;(shell-command-to-string "echo -n $(date +%k:%M--%m-%d)")

;; ----- Apariencia. -----

; --- Cursor. ---
(setq-default cursor-type 'bar)

;--- Tema. ---
(use-package material-theme
  :ensure t
  :init (load-theme 'material t))

; --- Fondo. ---
(set-background-color "#101010")

; --- Fuente. ---
(add-to-list 'default-frame-alist '(font . "FiraCode-12"))
(set-face-attribute 'default nil :family "FiraCode-12")
(set-default-font "FiraCode-12")
(load "~/.emacs.d/fira-code-mode.el") ; Usar fira-code-mode para ligaduras.

; ----- Paquetes. -----


(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode 1))

(use-package telephone-line
  :ensure t) ;; Bueno, esto necesita un repaso gordo. Espero que mole mucho.
(setq telephone-line-subseparator-faces '())
(setq telephone-line-height 24
      telephone-line-evil-use-short-tag t)
(telephone-line-mode t)

(use-package windmove
  :ensure t
  :bind (("M-<up>" . windmove-up)
	 ("M-<down>" . windmove-down)
	 ("M-<right>" . windmove-right)
	 ("M-<left>" . windmove-left)))

(use-package ido
  :init (ido-mode))

(use-package neotree
  :ensure t
  :bind (("C-x n" . neotree-toggle)))

(use-package helm
  :init (helm-mode 1)
  :config (require 'helm-config)
  :bind (("C-x C-f" . helm-find-files)
	 ("M-x" . helm-M-x)))

(use-package ac-helm
  :ensure t)

;;(use-package auto-complete
;;  :ensure t
;;  :config (ac-config-default))

;; Terminal mejorada
(use-package multi-term
  :ensure t
  :bind (("C-t" . multi-term-dedicated-toggle)))

;; Muchos cursores
(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C-<" . mc/mark-all-like-this)))

(use-package company
  :ensure t
  :init
  :config (add-hook 'after-init-hook 'global-company-mode))

;; Accesorios varios
;;(use-package zone-rainbow
;;  :ensure t
;;  :bind ("C-z" . zone-rainbow))

(use-package golden-ratio
  :ensure t
  :config (golden-ratio-mode t))

(use-package rainbow-mode
  :ensure t
  :config (rainbow-mode t))

;; --- Lenguajes. ---

(use-package markdown-mode+
  :ensure t)

(use-package flymd
  :ensure t)

(use-package magit
  :ensure t)

;(use-package auctex
;  :ensure t
;  :config ((setq TeX-auto-save t)
;	   (setq TeX-parse-self t)))

;; Varios Básicos
(electric-pair-mode 1)
(show-paren-mode 1)
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; --- Juegos. ---

(use-package tetris
  :ensure t )

(use-package typing
  :ensure t )

(use-package poker
  :ensure t )

;; --- Modos automáticos. ---
(add-to-list 'auto-mode-alist '("\\.ens\\'" . asm-mode))

;; ----- Atajos personlizados. -----
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-k") 'kill-buffer)
(global-set-key (kbd "C-x k") 'kill-buffer-and-window)
(global-set-key (kbd "C-<backspace>") 'kill-whole-line)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-S-e") 'move-beginning-of-line)
(global-set-key (kbd "C-;") 'comment-line)
(global-set-key (kbd "C-c C-f") 'set-frame-font)
;(global-set-key (kbd "RET") 'indent-new-comment-line)


(put 'upcase-region 'disabled nil)

