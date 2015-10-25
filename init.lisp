
;;; load quicklisp
#-quicklisp
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;; quickload dependencies
(ql:quickload "asdf")

;;; optimization options
(proclaim '(optimize (debug 3) (safety 3)))

;;; load system
(load "rlpc.asd")

(asdf:load-system :rlpc)

(print "Welcome to RLPC")
