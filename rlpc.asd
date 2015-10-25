(asdf:defsystem :rlpc
  :depends-on ()
  :components ((:file "src/packages")
	       (:file "src/main" :depends-on ())
	       (:file "src/utils" :depends-on ())
               ))

