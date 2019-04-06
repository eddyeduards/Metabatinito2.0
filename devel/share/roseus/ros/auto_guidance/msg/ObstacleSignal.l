;; Auto-generated. Do not edit!


(when (boundp 'auto_guidance::ObstacleSignal)
  (if (not (find-package "AUTO_GUIDANCE"))
    (make-package "AUTO_GUIDANCE"))
  (shadow 'ObstacleSignal (find-package "AUTO_GUIDANCE")))
(unless (find-package "AUTO_GUIDANCE::OBSTACLESIGNAL")
  (make-package "AUTO_GUIDANCE::OBSTACLESIGNAL"))

(in-package "ROS")
;;//! \htmlinclude ObstacleSignal.msg.html


(defclass auto_guidance::ObstacleSignal
  :super ros::object
  :slots (_front _right _left _back _front_tof _f45r _f45l _fixed_point_flag ))

(defmethod auto_guidance::ObstacleSignal
  (:init
   (&key
    ((:front __front) 0)
    ((:right __right) 0)
    ((:left __left) 0)
    ((:back __back) 0)
    ((:front_tof __front_tof) 0)
    ((:f45r __f45r) 0)
    ((:f45l __f45l) 0)
    ((:fixed_point_flag __fixed_point_flag) nil)
    )
   (send-super :init)
   (setq _front (round __front))
   (setq _right (round __right))
   (setq _left (round __left))
   (setq _back (round __back))
   (setq _front_tof (round __front_tof))
   (setq _f45r (round __f45r))
   (setq _f45l (round __f45l))
   (setq _fixed_point_flag __fixed_point_flag)
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:back
   (&optional __back)
   (if __back (setq _back __back)) _back)
  (:front_tof
   (&optional __front_tof)
   (if __front_tof (setq _front_tof __front_tof)) _front_tof)
  (:f45r
   (&optional __f45r)
   (if __f45r (setq _f45r __f45r)) _f45r)
  (:f45l
   (&optional __f45l)
   (if __f45l (setq _f45l __f45l)) _f45l)
  (:fixed_point_flag
   (&optional __fixed_point_flag)
   (if __fixed_point_flag (setq _fixed_point_flag __fixed_point_flag)) _fixed_point_flag)
  (:serialization-length
   ()
   (+
    ;; int8 _front
    1
    ;; int8 _right
    1
    ;; int8 _left
    1
    ;; int8 _back
    1
    ;; int8 _front_tof
    1
    ;; int8 _f45r
    1
    ;; int8 _f45l
    1
    ;; bool _fixed_point_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _front
       (write-byte _front s)
     ;; int8 _right
       (write-byte _right s)
     ;; int8 _left
       (write-byte _left s)
     ;; int8 _back
       (write-byte _back s)
     ;; int8 _front_tof
       (write-byte _front_tof s)
     ;; int8 _f45r
       (write-byte _f45r s)
     ;; int8 _f45l
       (write-byte _f45l s)
     ;; bool _fixed_point_flag
       (if _fixed_point_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _front
     (setq _front (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _front 127) (setq _front (- _front 256)))
   ;; int8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _right 127) (setq _right (- _right 256)))
   ;; int8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _left 127) (setq _left (- _left 256)))
   ;; int8 _back
     (setq _back (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _back 127) (setq _back (- _back 256)))
   ;; int8 _front_tof
     (setq _front_tof (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _front_tof 127) (setq _front_tof (- _front_tof 256)))
   ;; int8 _f45r
     (setq _f45r (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _f45r 127) (setq _f45r (- _f45r 256)))
   ;; int8 _f45l
     (setq _f45l (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _f45l 127) (setq _f45l (- _f45l 256)))
   ;; bool _fixed_point_flag
     (setq _fixed_point_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get auto_guidance::ObstacleSignal :md5sum-) "b529d4bcafe31815ba1c9b2c75468bf6")
(setf (get auto_guidance::ObstacleSignal :datatype-) "auto_guidance/ObstacleSignal")
(setf (get auto_guidance::ObstacleSignal :definition-)
      "
int8 front
int8 right
int8 left
int8 back
int8 front_tof
int8 f45r
int8 f45l
bool fixed_point_flag
")



(provide :auto_guidance/ObstacleSignal "b529d4bcafe31815ba1c9b2c75468bf6")


