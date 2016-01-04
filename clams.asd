(asdf:defsystem :clams
  :serial t
  :description "CMS for Common Lisp"
  :author "Jacob Moeller <jacobmoe@gmail.com>"
  :license "MIT"
  :class :package-inferred-system
  :defsystem-depends-on ("asdf-package-system")
  :depends-on (:clack
               :ningle
               :clams/app))

(register-system-packages :lack '(:lack.response :lack.request))
