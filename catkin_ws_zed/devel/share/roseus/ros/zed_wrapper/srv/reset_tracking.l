;; Auto-generated. Do not edit!


(when (boundp 'zed_wrapper::reset_tracking)
  (if (not (find-package "ZED_WRAPPER"))
    (make-package "ZED_WRAPPER"))
  (shadow 'reset_tracking (find-package "ZED_WRAPPER")))
(unless (find-package "ZED_WRAPPER::RESET_TRACKING")
  (make-package "ZED_WRAPPER::RESET_TRACKING"))
(unless (find-package "ZED_WRAPPER::RESET_TRACKINGREQUEST")
  (make-package "ZED_WRAPPER::RESET_TRACKINGREQUEST"))
(unless (find-package "ZED_WRAPPER::RESET_TRACKINGRESPONSE")
  (make-package "ZED_WRAPPER::RESET_TRACKINGRESPONSE"))

(in-package "ROS")





(defclass zed_wrapper::reset_trackingRequest
  :super ros::object
  :slots ())

(defmethod zed_wrapper::reset_trackingRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass zed_wrapper::reset_trackingResponse
  :super ros::object
  :slots (_reset_done ))

(defmethod zed_wrapper::reset_trackingResponse
  (:init
   (&key
    ((:reset_done __reset_done) nil)
    )
   (send-super :init)
   (setq _reset_done __reset_done)
   self)
  (:reset_done
   (&optional __reset_done)
   (if __reset_done (setq _reset_done __reset_done)) _reset_done)
  (:serialization-length
   ()
   (+
    ;; bool _reset_done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset_done
       (if _reset_done (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset_done
     (setq _reset_done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zed_wrapper::reset_tracking
  :super ros::object
  :slots ())

(setf (get zed_wrapper::reset_tracking :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_wrapper::reset_tracking :datatype-) "zed_wrapper/reset_tracking")
(setf (get zed_wrapper::reset_tracking :request) zed_wrapper::reset_trackingRequest)
(setf (get zed_wrapper::reset_tracking :response) zed_wrapper::reset_trackingResponse)

(defmethod zed_wrapper::reset_trackingRequest
  (:response () (instance zed_wrapper::reset_trackingResponse :init)))

(setf (get zed_wrapper::reset_trackingRequest :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_wrapper::reset_trackingRequest :datatype-) "zed_wrapper/reset_trackingRequest")
(setf (get zed_wrapper::reset_trackingRequest :definition-)
      "---
bool reset_done
")

(setf (get zed_wrapper::reset_trackingResponse :md5sum-) "e1e87fc9e9e6c154eca93b9fa292cc05")
(setf (get zed_wrapper::reset_trackingResponse :datatype-) "zed_wrapper/reset_trackingResponse")
(setf (get zed_wrapper::reset_trackingResponse :definition-)
      "---
bool reset_done
")



(provide :zed_wrapper/reset_tracking "e1e87fc9e9e6c154eca93b9fa292cc05")


