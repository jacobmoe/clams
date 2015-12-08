(defpackage :jacobmoeller/lib/blog/routes
  (:use :cl)
  ;; (:import-from :jacobmoeller.blog.controllers :index)
  (:export :register-routes))

(in-package :jacobmoeller/lib/blog/routes)

(defun get-param (params name)
 (cdr (assoc name params :test #'string=)))

(defun register-routes (app)
  (setf (ningle:route app "/blog") '(lambda (params) ("BLOG INDEX")))
  (setf (ningle:route app "/blog/:id") '(lambda (params) ("BLOGGGG"))))
