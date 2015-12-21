(defpackage :clams/app
  (:use :cl)
  (:import-from :clams/config :configure)
  (:import-from :clams/api/routes :register-routes)
  (:export :start :stop))

(in-package :clams/app)

(configure)

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
