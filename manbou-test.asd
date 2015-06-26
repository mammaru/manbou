(in-package :cl-user)
(defpackage manbou-test-asd
  (:use :cl :asdf))
(in-package :manbou-test-asd)

(defsystem manbou-test
  :author ""
  :license ""
  :depends-on (:manbou
               :prove)
  :components ((:module "t"
                :components
                ((:file "manbou"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
