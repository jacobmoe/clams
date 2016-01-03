(defpackage :clams/api/controller
  (:use :cl :ningle)
  (:import-from :clams/lib/utils :render-json)
  (:export :index :show))

(in-package :clams/api/controller)

(defun index (params)
  (render-json '((test1 . 1) (test2 . 2) (test3 . 3))))

(defun show (params) (format nil "==> show ~A" params))
