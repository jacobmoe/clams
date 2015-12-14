(defpackage :jacobmoeller/api/controller
  (:use :cl)
  (:import-from :jacobmoeller/lib/utils :render-json)
  (:export :index :show))

(in-package :jacobmoeller/api/controller)

(defun index (params)
  (print (render-json '((test1 . 1) (test2 . 2) (test3 . 3)))))

(defun show (params) (format nil "==> show ~A" params))
