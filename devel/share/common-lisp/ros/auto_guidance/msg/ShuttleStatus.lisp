; Auto-generated. Do not edit!


(cl:in-package auto_guidance-msg)


;//! \htmlinclude ShuttleStatus.msg.html

(cl:defclass <ShuttleStatus> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (encoder_speed
    :reader encoder_speed
    :initarg :encoder_speed
    :type cl:fixnum
    :initform 0)
   (initialization_status
    :reader initialization_status
    :initarg :initialization_status
    :type cl:boolean
    :initform cl:nil)
   (charging_level
    :reader charging_level
    :initarg :charging_level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ShuttleStatus (<ShuttleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShuttleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShuttleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_guidance-msg:<ShuttleStatus> is deprecated: use auto_guidance-msg:ShuttleStatus instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ShuttleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:error_code-val is deprecated.  Use auto_guidance-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'encoder_speed-val :lambda-list '(m))
(cl:defmethod encoder_speed-val ((m <ShuttleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:encoder_speed-val is deprecated.  Use auto_guidance-msg:encoder_speed instead.")
  (encoder_speed m))

(cl:ensure-generic-function 'initialization_status-val :lambda-list '(m))
(cl:defmethod initialization_status-val ((m <ShuttleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:initialization_status-val is deprecated.  Use auto_guidance-msg:initialization_status instead.")
  (initialization_status m))

(cl:ensure-generic-function 'charging_level-val :lambda-list '(m))
(cl:defmethod charging_level-val ((m <ShuttleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:charging_level-val is deprecated.  Use auto_guidance-msg:charging_level instead.")
  (charging_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShuttleStatus>) ostream)
  "Serializes a message object of type '<ShuttleStatus>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'encoder_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initialization_status) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'charging_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShuttleStatus>) istream)
  "Deserializes a message object of type '<ShuttleStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder_speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'initialization_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charging_level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShuttleStatus>)))
  "Returns string type for a message object of type '<ShuttleStatus>"
  "auto_guidance/ShuttleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShuttleStatus)))
  "Returns string type for a message object of type 'ShuttleStatus"
  "auto_guidance/ShuttleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShuttleStatus>)))
  "Returns md5sum for a message object of type '<ShuttleStatus>"
  "887f812576610bde86685cae1b654708")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShuttleStatus)))
  "Returns md5sum for a message object of type 'ShuttleStatus"
  "887f812576610bde86685cae1b654708")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShuttleStatus>)))
  "Returns full string definition for message of type '<ShuttleStatus>"
  (cl:format cl:nil "#Shuttle Status ~%~%int8 error_code~%int16 encoder_speed~%bool initialization_status~%int8 charging_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShuttleStatus)))
  "Returns full string definition for message of type 'ShuttleStatus"
  (cl:format cl:nil "#Shuttle Status ~%~%int8 error_code~%int16 encoder_speed~%bool initialization_status~%int8 charging_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShuttleStatus>))
  (cl:+ 0
     1
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShuttleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ShuttleStatus
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':encoder_speed (encoder_speed msg))
    (cl:cons ':initialization_status (initialization_status msg))
    (cl:cons ':charging_level (charging_level msg))
))
