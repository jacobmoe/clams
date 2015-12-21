(defpackage :clams/config
  (:use :cl :ningle :envy)
  (:export :configure))

(in-package :clams/config)

(setf (config-env-var) "LISP_APP_ENV")

(defconfig |development|
  '(:database-config (:system :postgres
                      :name "clams_dev"
                      :username "postgres"
                      :password "")))

(defun configure ()
  (defparameter database-config
    (getf (config :clams/config) :database-config))

  (setf (context :database)
    (dbi:connect (getf database-config :system)
                 :database-name (getf database-config :name)
                 :username (getf database-config :username)
                 :password (getf database-config :password))))
