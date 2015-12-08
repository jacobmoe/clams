(defpackage :jacobmoeller/lib/blog/controllers
  (:use :cl)
  (:export :index :show))

(in-package :jacobmoeller/lib/blog/controllers)

(defun index (params) (format nil "blog index ~A" params))
(defun show (params) (format nil "blog show view ~A" params))
