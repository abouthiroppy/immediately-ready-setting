;; スタート時の画面非表示
(setq inhibit-startup-message t)
;;; キーバインド
;;(define-key global-map "\C-h" 'delete-backward-char) ; 削除
;;(define-key global-map "\M-?" 'help-for-help) ; ヘルプ
;;(define-key global-map "\C-\\" nil) ; \C-\の日本語入力の設定を無効にする
;;; 色を付ける
(global-font-lock-mode t)
;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)
;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
;;; スクロールを一行ずつにする
(setq scroll-step 1)
;;; スクロールバーを右側に表示する
(set-scroll-bar-mode 'right)
;;; 画面右端で折り返さない
(setq-default truncate-lines t)
(setq truncate-partial-width-windows t)
;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)
;;; モードラインに情報を表示
(display-time)
(line-number-mode 1)
(column-number-mode 1)
;;; 現在の関数名をモードラインに表示
(which-function-mode 1)
;;; タブをスペース4字
;;(setq-default tab-width 2 indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;;カーソルの点減を止める
(blink-cursor-mode 0)
;; ツールバーを非表示
(tool-bar-mode -1)
;; メニューバーを非表示
(menu-bar-mode -1)
;;リージョンを上書き
(delete-selection-mode t)
;; "yes or no"を"y or n"
(fset 'yes-or-no-p 'y-or-n-p)
;; C-k
(setq kill-whole-line t)
(defvar ctl-k-map (make-keymap))
(fset 'ctl-k-prefix ctl-k-map)
(define-key global-map "\C-k"  'ctl-k-prefix)
;; 行全体を削除
(define-key global-map "\C-k\C-k"    'kill-whole-line)
;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;カッコ対応
(show-paren-mode 1)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "gray10")
(set-face-foreground 'show-paren-match-face "green")
;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)
;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)
;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)
;; spell check
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")
;;; 現在の関数名をモードラインに表示
(which-function-mode 1)
;; C coding style
(add-hook 'c-mode-hook
          '(lambda ()
      (hs-minor-mode 1)))
;;C++ coding style
(add-hook 'c++-mode-hook
          '(lambda ()
      (hs-minor-mode 1)))
(set-face-background 'mode-line-inactive "gray85")

;;(require 'key-combo)
;;(key-combo-load-default)
;;(key-combo-define-global (kbd "{") '("{`!!'}"))
;;(key-combo-define-global (kbd "{}") "{}")
;;(key-combo-define-global (kbd "(") '("(`!!')"))
;;(key-combo-define-global (kbd "()") "()")
;;(key-combo-define-global (kbd "[") '("[`!!']"))
;;(key-combo-define-global (kbd "[]") "[]")
;;(key-combo-define-global (kbd "\"") '("\"`!!'\""))
;;(key-combo-define-global (kbd "\"\"") "\"\"")
;;(key-combo-define-global (kbd "'") '("'`!!''"))
;;(key-combo-define-global (kbd "''") "''")

;; 左に行数の表示
(global-linum-mode t)
(setq linum-format "%4d")
;; modelineに全行数表示
(setcar mode-line-position
        '(:eval (format "%d" (count-lines (point-max) (point-min)))))
;;goto-line
(global-set-key "\C-z" 'goto-line)
;;画面間の移動 c-tab
(define-key global-map[C-tab] 'other-window)
(define-key global-map [S-C-tab] (lambda () (interactive) (other-window -1)))

