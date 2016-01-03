(defpackage :clams/config
  (:use :cl :ningle :envy)
  (:export :project-root :configure :disconnect))

(in-package :clams/config)

(setf (config-env-var) "LISP_APP_ENV")
(defvar project-root (asdf:system-source-directory :clams))
(defvar *pg-connection* nil)

(setf database-development-config
  '(:system :postgres
    :name "clams_dev"
    :username "postgres"
    :password ""))

(defconfig :common
  (cons :database-config (list database-development-config)))

(defconfig |development|
  (cons :database-config (list database-development-config)))

(defun configure ()
  (disconnect)

  (let ((database-config
         (getf (config :clams/config) :database-config)))

    (setq *pg-connection*
        (dbi:connect (getf database-config :system)
                    :database-name (getf database-config :name)
                    :username (getf database-config :username)
                    :password (getf database-config :password)))))

(defun disconnect ()
  (when *pg-connection*
    (dbi:disconnect *pg-connection*)
    (setq *pg-connection* nil)))
