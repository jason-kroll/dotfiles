;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.

;; It must be stored in your home directory.

;; NOTE: ME is still disabled, reboot with F2 into advanced settings and
;; re-enable
;; Get C-h to work generally

;; TODO: Consider M-o for C-x o
;; Consider M-tab for C-x o?
;; Keyboard shortcut for previous buffer (always going back and forth)
;; ^ uh kroll, <SPC><TAB>, or M-<TAB> (also works in insert mode)

;; TODO: Bind <leader>ag for gptel and ae for ellama maybe?

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation nil

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. "~/.mycontribs/")
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(html
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t)
     better-defaults
     (c-c++ :variables
            c-c++-backend 'lsp-clangd
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-format-on-save t
            ;; c-c++-formatter-indent-line nil
            c-c++-lsp-enable-semantic-highlight 'rainbow
            )
     (claude-code :variables
                  claude-code-ide-window-side 'right)
     ;; claude-code-ide-window-width 100)
     cmake
     compleseus
     dap
     emacs-lisp
     ess
     evil-snipe
     git
     javascript
     (julia :variables
            julia-backend 'lsp
            julia-mode-enable-ess t
            )
     ;; https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
     (latex :variables
            latex-build-command "xelatex"
            latex-build-engine 'xetex)
     (llm-client :variables
                 llm-client-enable-ellama t
                 llm-client-enable-gptel t)
     (lsp :variables
          ;; See -> https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
          ;; lsp-pylsp-plugins-pydocstyle-enabled nil
          ;; lsp-signature-doc-lines 1
          eldoc-echo-area-use-multiline-p nil
          lsp-eldoc-enable-hover nil
          lsp-enable-on-type-formatting nil
          lsp-pylsp-plugins-flake8-max-line-length 88 ;; sync with ruff
          lsp-pylsp-plugins-pycodestyle-max-line-length 88 ;; sync with ruff
          lsp-signature-auto-activate nil
          lsp-signature-render-documentation nil
          lsp-ui-doc-enable nil
          lsp-ui-sideline-enable nil
          lsp-ui-sideline-show-diagnostics nil
          ;; lsp-pylsp-plugins-pydocstyle-enabled nil
          )
     lua
     markdown
     ;; multiple-cursors
     org
     (python :variables
             python-backend 'lsp
             python-enable-tools '(uv)
             python-fill-column 88  ;; for consistency with Ruff
             python-format-on-save t
             python-formatter 'ruff
             python-sort-imports-on-save t
             python-virtualenv-management 'pet
             )
     (rust :variables
           rustic-format-on-save t
           lsp-rust-analyzer-cargo-auto-reload t
           )
     (shell :variables
            shell-default-height 30
            shell-default-shell 'vterm
            shell-default-position 'bottom
            )
     ;; (spell-checking :variables
     ;;                 spell-checking-enable-by-default nil)
     (syntax-checking :variables
                      flycheck-disabled-checkers '(python-ruff)
                      syntax-checking-enable-tooltips nil)
     systemd
     themes-megapack
     version-control
     vinegar
     toml
     treemacs
     yaml
     )

   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.

   dotspacemacs-additional-packages '(
                                      agent-shell

                                      ;; auto-dark
                                      ;; vibe-acp
                                      ;; xenops

                                      ;; catppuccin-theme
                                      ;; ef-themes
                                      ;; kanagawa-themes
                                      ;; modus-themes
                                      ;; nord-themes
                                      ;; solarized-themes
                                      ;; zenburn-themes
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only)
  )

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; Scale factor controls the scaling (size) of the startup banner. Default
   ;; value is `auto' for scaling the logo automatically to fit all buffer
   ;; contents, to a maximum of the full image height and a minimum of 3 line
   ;; heights. If set to a number (int or float) it is used as a constant
   ;; scaling factor for the default logo size.
   dotspacemacs-startup-banner-scale 'auto

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "nerd-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light). A theme from external
   ;; package can be defined with `:package', or a theme can be defined with
   ;; `:location' to download the theme package, refer the themes section in
   ;; DOCUMENTATION.org for the full theme specifications.
   dotspacemacs-themes '(
                         (doom-nord-aurora :package doom-themes)
                         modus-operandi-tinted
                         doom-nord
                         doom-palenight
                         zenburn
                         spacemacs-light
                         spacemacs-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. This setting has no effect when
   ;; running Emacs in terminal. The font set here will be used for default and
   ;; fixed-pitch faces. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   ;; dotspacemacs-default-font '("Sauce Code Pro Nerd Font"
   dotspacemacs-default-font '("Commit Mono Nerd Font"
                               :size 13.0
                               :weight normal
                               :width normal)

   ;; Default icons font, it can be `all-the-icons' or `nerd-icons'.
   ;; dotspacemacs-default-icons-font 'all-the-icons
   dotspacemacs-default-icons-font 'nerd-icons

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "M-<return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "M-<return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; It is also possible to use a posframe with the following cons cell
   ;; `(posframe . position)' where position can be one of `center',
   ;; `top-center', `bottom-center', `top-left-corner', `top-right-corner',
   ;; `top-right-corner', `bottom-left-corner' or `bottom-right-corner'
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; Make consecutive tab key presses after commands such as
   ;; `spacemacs/alternate-buffer' (SPC TAB) cycle through previous
   ;; buffers/windows/etc. Please see the option's docstring for more information.
   ;; Set the option to t in order to enable cycling for all current and
   ;; future cycling commands. Alternatively, choose a subset of the currently
   ;; supported commands: '(alternate-buffer alternate-window). (default nil)
   dotspacemacs-enable-cycling nil

   ;; Whether side windows (such as those created by treemacs or neotree)
   ;; are kept or minimized by `spacemacs/toggle-maximize-window' (SPC w m).
   ;; (default t)
   dotspacemacs-maximize-window-keep-side-windows t

   ;; If nil, no load-hints enabled. If t, enable the `load-hints' which will
   ;; put the most likely path on the top of `load-path' to reduce walking
   ;; through the whole `load-path'. It's an experimental feature to speedup
   ;; Spacemacs on Windows. Refer the FAQ.org "load-hints" session for details.
   dotspacemacs-enable-load-hints nil

   ;; If t, enable the `package-quickstart' feature to avoid full package
   ;; loading, otherwise no `package-quickstart' attemption (default nil).
   ;; Refer the FAQ.org "package-quickstart" section for details.
   dotspacemacs-enable-package-quickstart nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default t) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers t

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `ack' and `grep'.
   ;; (default '("rg" "ag" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "ack" "grep")

   ;; The backend used for undo/redo functionality. Possible values are
   ;; `undo-redo', `undo-fu' and `undo-tree' see also `evil-undo-system'.
   ;; Note that saved undo history does not get transferred when changing
   ;; your undo system from or to undo-tree. (default `undo-redo')
   dotspacemacs-undo-system 'undo-redo

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; The variable `global-spacemacs-whitespace-cleanup-modes' controls
   ;; which major modes have whitespace cleanup enabled or disabled
   ;; by default.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; https://github.com/emacs-evil/evil-collection/issues/60
  ;; (setq evil-want-keybinding nil)

  ;; f11 seems to conflict with Cosmic, and the window gets stuck. Let's try this.
  ;; (global-unset-key (kbd "<f11>"))
  ;; This doesn't actually work, but M-<f11> is the thing to do

  (setq cairo-antialias-mode 'subpixel)

  (require 'ansi-color)
  (add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

  (setq gpu-acceleration t)
  (setq ellama-gpu-mode t)

  ;; (add-to-list 'load-path "~/.emacs.d/dist/emacs-libvterm")
  ;; (require 'aidermacs-backend-vterm)

  ;; (defun my/position-frame ()
  ;;   (let* ((display-width (display-pixel-width))
  ;;          (display-height (display-pixel-height))
  ;;          (frame-width (/ display-width 2))
  ;;          (frame-height display-height))
  ;;     (set-frame-position (selected-frame) 0 0)
  ;;     (set-frame-size (selected-frame) frame-width frame-height t)))


  ;; (add-hook 'emacs-startup-hook #'my-position-frame)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Basic file stuff that mysteriously isn't in Emacs

  (defun insert-absolute-file-name (file-name)
    "Prompt for a file and insert its absolute file-name at point."
    (interactive "fInsert file-name: ")
    (insert (expand-file-name file-name)))

  (defun insert-relative-file-name (file-name)
    "Prompt for a file and insert its file-name relative to the current buffer."
    (interactive "fInsert file-name: ")
    (insert (file-relative-name
             file-name
             (and buffer-file-name (file-name-directory buffer-file-name)))))

  (spacemacs/set-leader-keys
    "iF" 'insert-absolute-file-name
    "if" 'insert-relative-file-name)

  ;; Basic file stuff that mysteriously isn't in Emacs
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;;;;;;
  ;; LSP (and Python)

  (setq lsp-keymap-prefix "C-c l")

  (with-eval-after-load 'lsp-mode
    (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\.venv$"))

  ;; I'm tending to like just doom-palenight all the time now
  ;; (use-package auto-dark
  ;;   :ensure t
  ;;   :custom
  ;;   (auto-dark-themes '((doom-palenight) (modus-operandi-tinted)))
  ;;   :init (spacemacs/defer-until-after-user-config #'auto-dark-mode)
  ;;   :defer t)

  ;; Define the ty client
  (with-eval-after-load 'lsp-mode
    (add-to-list 'lsp-disabled-clients 'semgrep-ls)
    (add-to-list 'lsp-disabled-clients 'pylsp)
    )

  ;; TODO: we've gotta have a carriage return line feed what have you
  (with-eval-after-load 'python
    (evil-define-key 'normal python-mode-map (kbd "RET")
      (lambda () (interactive)
        (spacemacs/python-shell-send-line)
        (evil-next-line)))

    (evil-define-key 'visual python-mode-map (kbd "RET")
      (lambda () (interactive)
        (spacemacs/python-shell-send-line)
        (evil-next-line)))

    (evil-define-key 'visual python-mode-map (kbd "RET") #'spacemacs/python-shell-send-region)
    (evil-define-key 'normal python-mode-map (kbd "C-<return>") #'spacemacs/python-shell-send-line-switch)
    (evil-define-key 'visual python-mode-map (kbd "C-<return>") #'spacemacs/python-shell-send-region-switch)
    )

  ;; LSP
  ;;;;;;

  ;;;;;;;;;;;;
  ;; C and C++

  (with-eval-after-load 'clean-aindent-mode
    (clean-aindent-mode -1))

  (setq compilation-ask-about-save nil)

  (add-hook 'c++-mode-hook (lambda () (setq c-basic-offset 4)))
  ;; (add-hook 'c-mode-hook (lambda () (setq c-basic-offset 4)))

  ;; TODO: Remember to run these first!
  ;; cd c && CC=clang cmake -B build -S .
  ;; cd ../cpp && CXX=clang++ cmake -B build -S .

  (defun my-cmake-subproject-dir ()
    "Return the directory containing the nearest CMakeLists.txt
ancestor of the current buffer."
    (let ((dir (locate-dominating-file (buffer-file-name) "CMakeLists.txt")))
      (unless dir
        (user-error "No CMakeLists.txt found in any parent directory"))
      (directory-file-name (expand-file-name dir))))

  (defun my-cmake-compile ()
    (interactive)
    (let* ((subdir (my-cmake-subproject-dir))
           (build-dir (concat subdir "/build"))
           (default-directory subdir))
      (compile (format "cmake -B %s -S . && cmake --build %s" build-dir build-dir))))

  (defun my-cmake-execute ()
    (interactive)
    (let* ((subdir (my-cmake-subproject-dir))
           (build-dir (concat subdir "/build"))
           (target (file-name-sans-extension
                    (file-name-nondirectory (buffer-file-name))))
           (default-directory subdir))
      (compile (format "cmake -B %s -S . && cmake --build %s && %s/%s"
                       build-dir build-dir build-dir target))))

  (dolist (mode '(c-mode c++-mode))
    (spacemacs/set-leader-keys-for-major-mode mode
      "cc" 'my-cmake-compile
      "cx" 'my-cmake-execute))

  ;; C and C++
  ;;;;;;;;;;;;

  ;;;;;;;;;;;;;;;;;;;;;;;
  ;; C-h delete backspace

  (global-set-key (kbd "C-w") #'spacemacs/backward-kill-word-or-region)
  (global-set-key (kbd "C-\\") #'previous-multiframe-window) ;; just like tmux!
  (global-set-key (kbd "M-o") #'other-window) ;; just like tmux!
  (global-set-key (kbd "M-z") #'spacemacs/toggle-maximize-window) ;; just like tmux!

  ;; company
  (with-eval-after-load 'company
    ;; (define-key company-active-map (kbd "C-h") nil) ; unbind company's C-h first
    ;; (define-key company-active-map (kbd "C-h") 'delete-backward-char)
    (define-key company-active-map (kbd "C-w") nil) ; unbind company's C-w first
    (define-key company-active-map (kbd "C-w") 'spacemacs/backward-kill-word-or-region);
    (define-key company-active-map (kbd "C-d") 'delete-char);
    )

  ;; minibuffer too, since it has its own keymaps
  ;; (define-key minibuffer-local-map (kbd "C-h") 'delete-backward-char)
  (define-key minibuffer-local-map (kbd "C-w") 'spacemacs/backward-kill-word-or-region)

  ;; do I need eval-after-load?
  ;; (define-key helm-map (kbd "C-w") 'spacemacs/backward-kill-word-or-region)
  ;; (define-key search-map (kbd "C-w") 'spacemacs/backward-kill-word-or-region)

  ;; Helm seems to respect C-h already
  (with-eval-after-load 'helm
    (define-key helm-map (kbd "C-w") 'spacemacs/backward-kill-word-or-region)
    )

  ;; C-h delete backspace
  ;;;;;;;;;;;;;;;;;;;;;;;

  ;; (add-hook 'lsp-help-mode-hook #'xenops-mode)
  (add-hook 'latex-mode-hook #'xenops-mode)
  (add-hook 'LaTeX-mode-hook #'xenops-mode)

  ;;;;;;;
  ;; LLMs

  ;; For using coding agents
  (global-auto-revert-mode 1)
  (setq global-auto-revert-non-file-buffers t)  ; dired buffers too
  (setq auto-revert-use-notify t)               ; inotify, not polling (default t)
  (setq auto-revert-avoid-polling t)            ; rely on notifications; skip the 5s poll
  (setq auto-revert-verbose nil)                ; stop the "Reverting buffer..." echo

  ;; Stop Emacs writing .#name lock symlinks that some external tools trip over
  (setq create-lockfiles nil)

  ;;;;;;;;;;;;
  ;; Aidermacs

  (spacemacs/set-leader-keys "aa" 'aidermacs-transient-menu)
  (spacemacs/set-leader-keys "ag" 'gptel)
  (setq aidermacs-default-chat-mode 'ask)
  (setq aidermacs-extra-args '("--chat-mode ask"))
  (setq aidermacs-backend 'vterm)

  (with-eval-after-load 'aidermacs
    (define-key aidermacs-minor-mode-map (kbd "C-<return>") 'aidermacs-send-line-or-region)
    (define-key aidermacs-minor-mode-map (kbd "C-c C-a") 'aidermacs-transient-menu)

    ;; I don't remember why I wanted this?
    (defun aidermacs-send-current-buffer ()
      (interactive)
      (aidermacs-send-region-by-line (point-min) (point-max)))
    )

  ;;;;;;;;;;;;;;
  ;; Agent Shell

  (require 'agent-shell-mistral)
  (setq agent-shell-mistral-authentication
        (agent-shell-mistral-make-authentication
         :api-key (lambda () (getenv "MISTRAL_API_KEY"))))

  ;;;;;;;;;
  ;; Ellama

  (use-package ellama
    :ensure t
    :bind ("C-c e" . ellama)
    :hook (org-ctrl-c-ctrl-c-hook . ellama-chat-send-last-message)
    :init
    (setopt ellama-keymap-prefix "C-c e")
    (setopt ellama-language "English")
    (require 'llm-ollama)

    ;; Strategy: two resident models do nearly everything —
    ;;   7B general workhorse (chat / translation) + 3B utility (summary / naming).
    ;; A 7B coder swaps in for code/extraction. All Q4_K_M, never Q8.
    ;; Bare Ollama tags (e.g. "qwen2.5:7b") default to Q4_K_M — VERIFY with `ollama show`.

    ;; General chat — 7B Q4_K_M (~4.7GB), modest context.
    (setopt ellama-provider
            (make-llm-ollama
             :chat-model "qwen2.5:7b"
             :embedding-model "nomic-embed-text"
             :default-chat-non-standard-params '(("num_ctx" . 8192))))

    ;; Coding — dedicated 7B coder; swaps with the chat model when invoked.
    (setopt ellama-coding-provider
            (make-llm-ollama
             :chat-model "qwen2.5-coder:7b"
             :embedding-model "nomic-embed-text"
             :default-chat-non-standard-params '(("num_ctx" . 16384))))

    ;; Extraction is code-adjacent → reuse the coder (no extra model to swap).
    (setopt ellama-extraction-provider
            (make-llm-ollama
             :chat-model "qwen2.5-coder:7b"
             :embedding-model "nomic-embed-text"
             :default-chat-non-standard-params '(("num_ctx" . 16384))))

    ;; Summarization — small model + long context, the right pairing (kept).
    (setopt ellama-summarization-provider
            (make-llm-ollama
             :chat-model "qwen2.5:3b"
             :embedding-model "nomic-embed-text"
             :default-chat-non-standard-params '(("num_ctx" . 32768))))

    ;; Translation — reuse the 7B general model: noticeably better German than a 3B,
    ;; and no extra model resident since it matches ellama-provider.
    (setopt ellama-translation-provider
            (make-llm-ollama
             :chat-model "qwen2.5:7b"
             :embedding-model "nomic-embed-text"
             :default-chat-non-standard-params '(("num_ctx" . 8192))))

    ;; Naming — trivial; reuse the 3B, keep the newline stop.
    (setopt ellama-naming-provider
            (make-llm-ollama
             :chat-model "qwen2.5:3b"
             :embedding-model "nomic-embed-text"
             :default-chat-non-standard-params '(("stop" . ("\n")))))
    (setopt ellama-naming-scheme 'ellama-generate-name-by-llm)

    ;; customize display buffer behaviour
    ;; see ~(info "(elisp) Buffer Display Action Functions")~
    ;; (setopt ellama-chat-display-action-function #'display-buffer-full-frame)
    (setopt ellama-instant-display-action-function #'display-buffer-at-bottom)
    :config
    ;; show ellama context in header line in all buffers
    ;; (ellama-context-header-line-global-mode +1)
    ;; show ellama session id in header line in all buffers
    ;; (ellama-session-header-line-global-mode +1)
    ;; handle scrolling events
    (advice-add 'pixel-scroll-precision :before #'ellama-disable-scroll)
    (advice-add 'end-of-buffer :after #'ellama-enable-scroll))

  ;;;;;;;;
  ;; GPTel

  (setq gptel-model 'mistral-medium-3-5
        gptel-debug t
        gptel-backend
        (gptel-make-openai "Mistral"  ;Any name you want
          :host "api.mistral.ai"
          :endpoint "/v1/chat/completions"
          :protocol "https"
          :stream t
          :key (lambda () (getenv "MISTRAL_API_KEY")) ; TODO auth-source
          :models '(mistral-small-latest
                    mistral-medium-3-5
                    mistral-large-latest)))
  (setq gptel-use-curl t)

  ;; LLMs
  ;;;;;;;

  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(custom-safe-themes
     '("3061706fa92759264751c64950df09b285e3a2d3a9db771e99bcbb2f9b470037"
       "07ccd9353199ffb1d7922186f7b779fbb7e00e6ae50c5606997660f7590b63f7"
       "197710560d850e194fedca6b1b5ce4e984ad66363e11ed0a2ae089630d2b3706"
       "138ed99a323c1b93c52f4b3726caf2bc634b79a76fa63a3d3aff76394db5f28f"
       "e9e28182669917b3b8aa4fe7f55577b982cac1ad3141269b447c721af663f3e0"
       "dde7fb0b1ed1bb5b61e62bf1a00696cf099a2b290718aee9b377365b3ed992f0" default))
   '(package-selected-packages
     '(ace-link acp add-node-modules-path afternoon-theme agent-shell
                aggressive-indent aidermacs aio alect-themes all-the-icons
                ample-theme ample-zen-theme anti-zenburn-theme apropospriate-theme
                auctex auctex-latexmk auto-compile auto-dark auto-highlight-symbol
                auto-yasnippet autothemer avy-jump-helm-line badwolf-theme
                birds-of-paradise-plus-theme browse-at-remote bubbleberry-theme
                bui busybee-theme catppuccin-theme centered-cursor-mode
                cherry-blossom-theme chocolate-theme claude-code-ide
                clean-aindent-mode clues-theme cmake-mode code-cells code-review
                color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow
                column-enforce-mode company-auctex company-c-headers company-lua
                company-math company-reftex consult cpp-auto-include csv-mode
                ctable cyberpunk-theme cython-mode dakrone-theme dap-mode
                darkmine-theme darkokai-theme darktooth-theme define-word devdocs
                diff-hl diminish dired-quick-sort disable-mouse disaster
                django-theme doom-themes dotenv-mode dracula-theme drag-stuff
                dumb-jump eat edit-indirect ef-themes elisp-def elisp-demos
                elisp-slime-nav emr esh-help eshell-prompt-extras eshell-z
                espresso-theme ess ess-R-data-view eval-sexp-fu evil-anzu
                evil-args evil-cleverparens evil-collection evil-easymotion
                evil-escape evil-evilified-state evil-exchange evil-goggles
                evil-iedit-state evil-indent-plus evil-lion evil-lisp-state
                evil-matchit evil-mc evil-nerd-commenter evil-numbers evil-org
                evil-snipe evil-surround evil-textobj-line evil-tutor
                evil-unimpaired evil-visual-mark-mode evil-visualstar
                exotica-theme expand-region eyebrowse eziam-themes fancy-battery
                farmhouse-themes flatland-theme flatui-theme flycheck-elsa
                flycheck-package flycheck-pos-tip flyspell-correct
                flyspell-correct-helm gandalf-theme gendoxy ggtags gh-md git-link
                git-messenger git-modes git-timemachine gitignore-templates
                gnuplot golden-ratio google-c-style google-translate gotham-theme
                grandshell-theme grizzl gruber-darker-theme gruvbox-theme
                hc-zenburn-theme helm-ag helm-c-yasnippet helm-comint helm-company
                helm-ctest helm-descbinds helm-ls-git helm-lsp helm-make
                helm-mode-manager helm-org helm-org-rifle helm-projectile
                helm-purpose helm-pydoc helm-swoop helm-xref hemisu-theme
                heroku-theme hide-comnt highlight-indentation highlight-numbers
                highlight-parentheses hl-todo holy-mode htmlize hungry-delete
                hybrid-mode impatient-mode import-js indent-guide info+
                inkpot-theme inspector ir-black-theme jazz-theme jbeans-theme
                journalctl-mode js-doc js2-mode js2-refactor kanagawa-themes
                kaolin-themes light-soap-theme link-hint live-py-mode livid-mode
                lorem-ipsum lsp-docker lsp-latex lsp-origami lsp-treemacs lsp-ui
                lua-mode lush-theme macrostep madhat2r-theme markdown-toc
                material-theme math-symbol-lists minimal-theme modus-themes
                moe-theme molokai-theme monochrome-theme monokai-theme multi-line
                multi-term multi-vterm multiple-cursors mustang-theme mwim
                nameless naquadah-theme noctilux-theme nodejs-repl nord-theme
                npm-mode obsidian-theme occidental-theme oldlace-theme
                omtose-phellack-themes open-junk-file org-cliplink org-contrib
                org-download org-mime org-pomodoro org-present org-projectile
                org-rich-yank org-superstar organic-green-theme orgit-forge
                overseer page-break-lines paradox password-generator pcre2el
                phoenix-dark-mono-theme phoenix-dark-pink-theme pip-requirements
                planet-theme popwin prettier-js professional-theme
                purple-haze-theme py-isort pydoc pyenv-mode pylookup pytest
                pythonic pyvenv quickrun railscasts-theme rainbow-delimiters
                rebecca-theme reformatter restart-emacs reverse-theme ron-mode
                ruff-format rust-mode rustic seti-theme shell-maker shell-pop
                simple-httpd skewer-mode smeargle smyx-theme soft-charcoal-theme
                soft-morning-theme soft-stone-theme solarized-theme soothe-theme
                space-doc spacegray-theme spaceline spacemacs-purpose-popwin
                spacemacs-whitespace-cleanup sphinx-doc string-edit-at-point
                string-inflection subatomic-theme subatomic256-theme
                sublime-themes sunny-day-theme symbol-overlay symon systemd
                tango-2-theme tango-plus-theme tangotango-theme tao-theme
                term-cursor terminal-here tern toc-org toml-mode toxi-theme
                tree-sitter tree-sitter-langs treemacs-evil treemacs-icons-dired
                treemacs-magit treemacs-persp treemacs-projectile tsc
                twilight-anti-bright-theme twilight-bright-theme twilight-theme
                ujelly-theme underwater-theme undo-fu undo-fu-session unfill uv
                vi-tilde-fringe volatile-highlights vundo web-beautify web-server
                websocket wgrep white-sand-theme winum writeroom-mode ws-butler
                xenops xterm-color yaml-mode yasnippet-snippets zen-and-art-theme
                zenburn-theme zonokai-emacs))
   '(warning-suppress-types '((treesit))))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:background nil)))))
  )
