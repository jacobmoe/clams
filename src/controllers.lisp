(defpackage :jacobmoeller.controllers
  (:use :cl)
  (:export :home))

(in-package :jacobmoeller.controllers)

(defun home (params) (format nil "home ~A" params))
