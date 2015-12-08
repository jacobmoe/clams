(defpackage :jacobmoeller
  (:use :cl)
  (:import-from :jacobmoeller.routes :register-routes)
  (:export :start :stop))

(in-package :jacobmoeller)

(defvar *app* (make-instance 'ningle:<app>))
(register-routes *app*)

(defvar *handler* nil)

(defun start ()
  (when *handler* (stop))
  (setf *handler*
        (clack:clackup *app*)))

(defun stop ()
  (clack:stop *handler*)
  (setf *handler* nil))
