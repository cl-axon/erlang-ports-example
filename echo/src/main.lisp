;; #!/opt/local/bin/sbcl --script

(load "~/quicklisp/setup.lisp")
(ql:system-apropos :echo)
(ql:quickload :echo :silent t)

(defun main ()
  (echo:setup-app)
  (echo:run))

(handler-bind ((t #'echo-util:handle-finished))
  (main))

(main)
