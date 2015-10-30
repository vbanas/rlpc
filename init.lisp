
;;; load quicklisp
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;; smug requires new ASDF 3
(let ((asdf:*central-registry* 
       (list (merge-pathnames "quicklisp/local-projects/asdf/"
                              (user-homedir-pathname)))))
  (asdf:upgrade-asdf) (ql:quickload :asdf))

(asdf:asdf-version)

;; quickload dependencies
(ql:quickload :smug)

;;; optimization options
(proclaim '(optimize (debug 3) (safety 3)))

;;; load system
(load "rlpc.asd")

(asdf:load-system :rlpc)

(print "Welcome to RLPC")
