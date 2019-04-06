; Auto-generated. Do not edit!


(cl:in-package auto_guidance-msg)


;//! \htmlinclude ObstacleSignal.msg.html

(cl:defclass <ObstacleSignal> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (back
    :reader back
    :initarg :back
    :type cl:fixnum
    :initform 0)
   (front_tof
    :reader front_tof
    :initarg :front_tof
    :type cl:fixnum
    :initform 0)
   (f45r
    :reader f45r
    :initarg :f45r
    :type cl:fixnum
    :initform 0)
   (f45l
    :reader f45l
    :initarg :f45l
    :type cl:fixnum
    :initform 0)
   (fixed_point_flag
    :reader fixed_point_flag
    :initarg :fixed_point_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ObstacleSignal (<ObstacleSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_guidance-msg:<ObstacleSignal> is deprecated: use auto_guidance-msg:ObstacleSignal instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:front-val is deprecated.  Use auto_guidance-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:right-val is deprecated.  Use auto_guidance-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:left-val is deprecated.  Use auto_guidance-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'back-val :lambda-list '(m))
(cl:defmethod back-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:back-val is deprecated.  Use auto_guidance-msg:back instead.")
  (back m))

(cl:ensure-generic-function 'front_tof-val :lambda-list '(m))
(cl:defmethod front_tof-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:front_tof-val is deprecated.  Use auto_guidance-msg:front_tof instead.")
  (front_tof m))

(cl:ensure-generic-function 'f45r-val :lambda-list '(m))
(cl:defmethod f45r-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:f45r-val is deprecated.  Use auto_guidance-msg:f45r instead.")
  (f45r m))

(cl:ensure-generic-function 'f45l-val :lambda-list '(m))
(cl:defmethod f45l-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:f45l-val is deprecated.  Use auto_guidance-msg:f45l instead.")
  (f45l m))

(cl:ensure-generic-function 'fixed_point_flag-val :lambda-list '(m))
(cl:defmethod fixed_point_flag-val ((m <ObstacleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_guidance-msg:fixed_point_flag-val is deprecated.  Use auto_guidance-msg:fixed_point_flag instead.")
  (fixed_point_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleSignal>) ostream)
  "Serializes a message object of type '<ObstacleSignal>"
  (cl:let* ((signed (cl:slot-value msg 'front)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_tof)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'f45r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'f45l)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fixed_point_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleSignal>) istream)
  "Deserializes a message object of type '<ObstacleSignal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_tof) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'f45r) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'f45l) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'fixed_point_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleSignal>)))
  "Returns string type for a message object of type '<ObstacleSignal>"
  "auto_guidance/ObstacleSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleSignal)))
  "Returns string type for a message object of type 'ObstacleSignal"
  "auto_guidance/ObstacleSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleSignal>)))
  "Returns md5sum for a message object of type '<ObstacleSignal>"
  "b529d4bcafe31815ba1c9b2c75468bf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleSignal)))
  "Returns md5sum for a message object of type 'ObstacleSignal"
  "b529d4bcafe31815ba1c9b2c75468bf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleSignal>)))
  "Returns full string definition for message of type '<ObstacleSignal>"
  (cl:format cl:nil "~%int8 front~%int8 right~%int8 left~%int8 back~%int8 front_tof~%int8 f45r~%int8 f45l~%bool fixed_point_flag~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleSignal)))
  "Returns full string definition for message of type 'ObstacleSignal"
  (cl:format cl:nil "~%int8 front~%int8 right~%int8 left~%int8 back~%int8 front_tof~%int8 f45r~%int8 f45l~%bool fixed_point_flag~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleSignal>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleSignal
    (cl:cons ':front (front msg))
    (cl:cons ':right (right msg))
    (cl:cons ':left (left msg))
    (cl:cons ':back (back msg))
    (cl:cons ':front_tof (front_tof msg))
    (cl:cons ':f45r (f45r msg))
    (cl:cons ':f45l (f45l msg))
    (cl:cons ':fixed_point_flag (fixed_point_flag msg))
))
