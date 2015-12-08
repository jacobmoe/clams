(defpackage :jacobmoeller/lib/controllers
  (:use :cl)
  (:export :home))

(in-package :jacobmoeller/lib/controllers)

(defun home (params) (format nil "==> home ~A" params))
