(defpackage :clams/api/blog/controller
  (:use :cl)
  (:export :index :show))

(in-package :clams/api/blog/controller)

(defun index (params) (format nil "blog index ~A" params))
(defun show (params) (format nil "blog show view ~A" params))
