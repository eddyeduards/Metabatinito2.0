
(cl:in-package :asdf)

(defsystem "auto_guidance-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DriveControl" :depends-on ("_package_DriveControl"))
    (:file "_package_DriveControl" :depends-on ("_package"))
    (:file "ObstacleSignal" :depends-on ("_package_ObstacleSignal"))
    (:file "_package_ObstacleSignal" :depends-on ("_package"))
    (:file "ShuttleStatus" :depends-on ("_package_ShuttleStatus"))
    (:file "_package_ShuttleStatus" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
  ))