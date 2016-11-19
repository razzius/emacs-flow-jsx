;;; emacs-flow-jsx-mode.el --- Major mode for Flow/JSX

;; Copyright (C) 2016 Rudolf Olah

;; Author: Rudolf Olah <omouse@gmail.com>

;; This file is not part of GNU Emacs.

;; URL: https://gitlab.com/rudolfo/emacs-flow-jsx
;; Keywords: languages javascript react flow

;;;; Commentary:

;; Emacs Flow JSX Mode is based on Java mode. It adds keyword
;; highlighting for flow type annotiations and react's JSX syntax.

;;; License:

;; This program is free software: you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this file. If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(defgroup flow-jsx nil
  "Major mode for Flow and JSX (JavaScript)."
  :prefix "flow-jsx-"
  :group 'languages
  :link '(url-link :tag "Gitlab" "https://gitlab.com/rudolfo/emacs-flow-jsx")
  :link '(emacs-commentary-link :tag "Commentary" "flow-jsx-mode"))


;; TODO: define flow-jsx-font-lock-keywords, based on https://github.com/omouse/angularjs-mode/blob/master/angular-mode.el#L137

;;;###autoload
(define-derived-mode flow-jsx-mode java-mode
  "JavaScript[FlowJSX]"
  "Major mode for Flow and JSX (JavaScript).
\\{java-mode-map}"
  (font-lock-add-keywords nil flow-jsx-font-lock-keywords))

(provide 'flow-jsx-mode)
;;; emacs-flow-jsx-mode.el ends here
