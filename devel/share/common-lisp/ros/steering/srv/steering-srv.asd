
(cl:in-package :asdf)

(defsystem "steering-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Desired_angle" :depends-on ("_package_Desired_angle"))
    (:file "_package_Desired_angle" :depends-on ("_package"))
    (:file "Odrive_command" :depends-on ("_package_Odrive_command"))
    (:file "_package_Odrive_command" :depends-on ("_package"))
  ))