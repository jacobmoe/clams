(defpackage :jacobmoeller/lib/controllers
  (:use :cl)
  (:export :index :show))

(in-package :jacobmoeller/lib/controllers)

(defun index (params) (format nil "==> home ~A" params))
(defun show (params) (format nil "==> show ~A" params))
