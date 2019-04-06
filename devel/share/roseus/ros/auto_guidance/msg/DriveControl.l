;; Auto-generated. Do not edit!


(when (boundp 'auto_guidance::DriveControl)
  (if (not (find-package "AUTO_GUIDANCE"))
    (make-package "AUTO_GUIDANCE"))
  (shadow 'DriveControl (find-package "AUTO_GUIDANCE")))
(unless (find-package "AUTO_GUIDANCE::DRIVECONTROL")
  (make-package "AUTO_GUIDANCE::DRIVECONTROL"))

(in-package "ROS")
;;//! \htmlinclude DriveControl.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass auto_guidance::DriveControl
  :super ros::object
  :slots (_speed _steering_angle _emergency_stop _sound_alarm _current_postion ))

(defmethod auto_guidance::DriveControl
  (:init
   (&key
    ((:speed __speed) 0)
    ((:steering_angle __steering_angle) 0)
    ((:emergency_stop __emergency_stop) nil)
    ((:sound_alarm __sound_alarm) nil)
    ((:current_postion __current_postion) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _steering_angle (round __steering_angle))
   (setq _emergency_stop __emergency_stop)
   (setq _sound_alarm __sound_alarm)
   (setq _current_postion __current_postion)
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:sound_alarm
   (&optional __sound_alarm)
   (if __sound_alarm (setq _sound_alarm __sound_alarm)) _sound_alarm)
  (:current_postion
   (&rest __current_postion)
   (if (keywordp (car __current_postion))
       (send* _current_postion __current_postion)
     (progn
       (if __current_postion (setq _current_postion (car __current_postion)))
       _current_postion)))
  (:serialization-length
   ()
   (+
    ;; int16 _speed
    2
    ;; int8 _steering_angle
    1
    ;; bool _emergency_stop
    1
    ;; bool _sound_alarm
    1
    ;; geometry_msgs/Pose _current_postion
    (send _current_postion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _speed
       (write-word _speed s)
     ;; int8 _steering_angle
       (write-byte _steering_angle s)
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _sound_alarm
       (if _sound_alarm (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _current_postion
       (send _current_postion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _steering_angle 127) (setq _steering_angle (- _steering_angle 256)))
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sound_alarm
     (setq _sound_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _current_postion
     (send _current_postion :deserialize buf ptr-) (incf ptr- (send _current_postion :serialization-length))
   ;;
   self)
  )

(setf (get auto_guidance::DriveControl :md5sum-) "4e24a1cda9a8add832facf1b2049fde3")
(setf (get auto_guidance::DriveControl :datatype-) "auto_guidance/DriveControl")
(setf (get auto_guidance::DriveControl :definition-)
      "int16 speed
int8 steering_angle
bool emergency_stop
bool sound_alarm
geometry_msgs/Pose current_postion 

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



(provide :auto_guidance/DriveControl "4e24a1cda9a8add832facf1b2049fde3")


