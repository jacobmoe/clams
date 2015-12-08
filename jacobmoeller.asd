(asdf:defsystem :jacobmoeller
  :description "Site"
  :author "Jacob Moeller <jacobmoe@gmail.com>"
  :license "MIT"
  :class :package-inferred-system
  :defsystem-depends-on ("asdf-package-system")
  :depends-on (:clack
               :lack
               :ningle
               :jacobmoeller/app))
