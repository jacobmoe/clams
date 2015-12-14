(defpackage :jacobmoeller/app
  (:use :cl)
  (:import-from :jacobmoeller/api/routes :register-routes)
  (:export :start :stop))

(in-package :jacobmoeller/app)

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
