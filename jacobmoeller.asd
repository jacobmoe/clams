(asdf:defsystem :jacobmoeller
  :serial t
  :description "Site"
  :author "Jacob Moeller <jacobmoe@gmail.com>"
  :license "MIT"
  :class :package-inferred-system
  :defsystem-depends-on ("asdf-package-system")
  :depends-on (:clack
               :ningle
               :jacobmoeller/app))

(register-system-packages :lack '(:lack.response :lack.request))
