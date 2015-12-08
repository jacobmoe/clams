(defpackage :jacobmoeller.controllers
  (:use :cl)
  (:export :home))

(in-package :jacobmoeller.controllers)

(print "LIB CONTROLLERS ======================")

(defun home (params) (format nil "home ~A" params))
