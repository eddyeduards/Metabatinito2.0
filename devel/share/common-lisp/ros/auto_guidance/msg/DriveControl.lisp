; Auto-generated. Do not edit!


(cl:in-package auto_guidance-msg)


;//! \htmlinclude DriveControl.msg.html

(cl:defclass <DriveControl> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:fixnum
    :initform 0)
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (sound_alarm
    :reader sound_alarm
    :initarg :sound_alarm
    :type cl:boolean
    :initform cl:nil)
   (current_postion
    :reader current_postion
    :initarg :current_postion
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass DriveControl (<DriveControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_guidance-msg:<DriveControl> is deprecated: use auto_guidance-msg:DriveControl instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:speed-val is deprecated.  Use auto_guidance-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:steering_angle-val is deprecated.  Use auto_guidance-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:emergency_stop-val is deprecated.  Use auto_guidance-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'sound_alarm-val :lambda-list '(m))
(cl:defmethod sound_alarm-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:sound_alarm-val is deprecated.  Use auto_guidance-msg:sound_alarm instead.")
  (sound_alarm m))

(cl:ensure-generic-function 'current_postion-val :lambda-list '(m))
(cl:defmethod current_postion-val ((m <DriveControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:current_postion-val is deprecated.  Use auto_guidance-msg:current_postion instead.")
  (current_postion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveControl>) ostream)
  "Serializes a message object of type '<DriveControl>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steering_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sound_alarm) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_postion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveControl>) istream)
  "Deserializes a message object of type '<DriveControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_angle) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sound_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_postion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveControl>)))
  "Returns string type for a message object of type '<DriveControl>"
  "auto_guidance/DriveControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveControl)))
  "Returns string type for a message object of type 'DriveControl"
  "auto_guidance/DriveControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveControl>)))
  "Returns md5sum for a message object of type '<DriveControl>"
  "4e24a1cda9a8add832facf1b2049fde3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveControl)))
  "Returns md5sum for a message object of type 'DriveControl"
  "4e24a1cda9a8add832facf1b2049fde3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveControl>)))
  "Returns full string definition for message of type '<DriveControl>"
  (cl:format cl:nil "int16 speed~%int8 steering_angle~%bool emergency_stop~%bool sound_alarm~%geometry_msgs/Pose current_postion ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveControl)))
  "Returns full string definition for message of type 'DriveControl"
  (cl:format cl:nil "int16 speed~%int8 steering_angle~%bool emergency_stop~%bool sound_alarm~%geometry_msgs/Pose current_postion ~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveControl>))
  (cl:+ 0
     2
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_postion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveControl>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveControl
    (cl:cons ':speed (speed msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':sound_alarm (sound_alarm msg))
    (cl:cons ':current_postion (current_postion msg))
))
