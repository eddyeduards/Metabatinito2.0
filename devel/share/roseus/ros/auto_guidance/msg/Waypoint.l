;; Auto-generated. Do not edit!


(when (boundp 'auto_guidance::Waypoint)
  (if (not (find-package "AUTO_GUIDANCE"))
    (make-package "AUTO_GUIDANCE"))
  (shadow 'Waypoint (find-package "AUTO_GUIDANCE")))
(unless (find-package "AUTO_GUIDANCE::WAYPOINT")
  (make-package "AUTO_GUIDANCE::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_guidance::Waypoint
  :super ros::object
  :slots (_is_docking _emergency_stop _sound_alarm _next_waypoint ))

(defmethod auto_guidance::Waypoint
  (:init
   (&key
    ((:is_docking __is_docking) nil)
    ((:emergency_stop __emergency_stop) nil)
    ((:sound_alarm __sound_alarm) nil)
    ((:next_waypoint __next_waypoint) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _is_docking __is_docking)
   (setq _emergency_stop __emergency_stop)
   (setq _sound_alarm __sound_alarm)
   (setq _next_waypoint __next_waypoint)
   self)
  (:is_docking
   (&optional __is_docking)
   (if __is_docking (setq _is_docking __is_docking)) _is_docking)
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:sound_alarm
   (&optional __sound_alarm)
   (if __sound_alarm (setq _sound_alarm __sound_alarm)) _sound_alarm)
  (:next_waypoint
   (&rest __next_waypoint)
   (if (keywordp (car __next_waypoint))
       (send* _next_waypoint __next_waypoint)
     (progn
       (if __next_waypoint (setq _next_waypoint (car __next_waypoint)))
       _next_waypoint)))
  (:serialization-length
   ()
   (+
    ;; bool _is_docking
    1
    ;; bool _emergency_stop
    1
    ;; bool _sound_alarm
    1
    ;; geometry_msgs/Pose _next_waypoint
    (send _next_waypoint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_docking
       (if _is_docking (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _sound_alarm
       (if _sound_alarm (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _next_waypoint
       (send _next_waypoint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_docking
     (setq _is_docking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sound_alarm
     (setq _sound_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _next_waypoint
     (send _next_waypoint :deserialize buf ptr-) (incf ptr- (send _next_waypoint :serialization-length))
   ;;
   self)
  )

(setf (get auto_guidance::Waypoint :md5sum-) "33b500f863be8e9520c2ee5c02322066")
(setf (get auto_guidance::Waypoint :datatype-) "auto_guidance/Waypoint")
(setf (get auto_guidance::Waypoint :definition-)
      "bool is_docking
bool emergency_stop
bool sound_alarm
geometry_msgs/Pose next_waypoint

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :auto_guidance/Waypoint "33b500f863be8e9520c2ee5c02322066")


