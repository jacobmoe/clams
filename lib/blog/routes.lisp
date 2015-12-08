(defpackage :jacobmoeller.blog.routes
  (:use :cl)
  (:import-from :jacobmoeller.blog.controllers :index)
  (:export :register-routes))

(in-package :jacobmoeller.blog.routes)

(print "BLOG CONTROLLERS ======================")

(defun get-param (params name)
 (cdr (assoc name params :test #'string=)))

(defun blog/register-routes (app)
  (setf (ningle:route app "/blog/:id") 'index))
