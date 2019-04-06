;; Auto-generated. Do not edit!


(when (boundp 'auto_guidance::ShuttleStatus)
  (if (not (find-package "AUTO_GUIDANCE"))
    (make-package "AUTO_GUIDANCE"))
  (shadow 'ShuttleStatus (find-package "AUTO_GUIDANCE")))
(unless (find-package "AUTO_GUIDANCE::SHUTTLESTATUS")
  (make-package "AUTO_GUIDANCE::SHUTTLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ShuttleStatus.msg.html


(defclass auto_guidance::ShuttleStatus
  :super ros::object
  :slots (_error_code _encoder_speed _initialization_status _charging_level ))

(defmethod auto_guidance::ShuttleStatus
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:encoder_speed __encoder_speed) 0)
    ((:initialization_status __initialization_status) nil)
    ((:charging_level __charging_level) 0)
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _encoder_speed (round __encoder_speed))
   (setq _initialization_status __initialization_status)
   (setq _charging_level (round __charging_level))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:encoder_speed
   (&optional __encoder_speed)
   (if __encoder_speed (setq _encoder_speed __encoder_speed)) _encoder_speed)
  (:initialization_status
   (&optional __initialization_status)
   (if __initialization_status (setq _initialization_status __initialization_status)) _initialization_status)
  (:charging_level
   (&optional __charging_level)
   (if __charging_level (setq _charging_level __charging_level)) _charging_level)
  (:serialization-length
   ()
   (+
    ;; int8 _error_code
    1
    ;; int16 _encoder_speed
    2
    ;; bool _initialization_status
    1
    ;; int8 _charging_level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _error_code
       (write-byte _error_code s)
     ;; int16 _encoder_speed
       (write-word _encoder_speed s)
     ;; bool _initialization_status
       (if _initialization_status (write-byte -1 s) (write-byte 0 s))
     ;; int8 _charging_level
       (write-byte _charging_level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;; int16 _encoder_speed
     (setq _encoder_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _initialization_status
     (setq _initialization_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _charging_level
     (setq _charging_level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _charging_level 127) (setq _charging_level (- _charging_level 256)))
   ;;
   self)
  )

(setf (get auto_guidance::ShuttleStatus :md5sum-) "887f812576610bde86685cae1b654708")
(setf (get auto_guidance::ShuttleStatus :datatype-) "auto_guidance/ShuttleStatus")
(setf (get auto_guidance::ShuttleStatus :definition-)
      "#Shuttle Status 

int8 error_code
int16 encoder_speed
bool initialization_status
int8 charging_level

")



(provide :auto_guidance/ShuttleStatus "887f812576610bde86685cae1b654708")


