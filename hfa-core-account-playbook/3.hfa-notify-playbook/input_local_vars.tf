variable "transit_smn_topic_name" { default = "cts-notify-transit" }
variable "common_smn_topic_name" { default = "cts-notify-common" }
variable "security_smn_topic_name" { default = "cts-notify-security" }
variable "centralized_iam_smn_topic_name" { default = "cts-notify-cim" }

variable cts_notify_email { default = "yiam.kar.kar@huawei.com" }
# variable cts_notify_phone { default = "+60178899980" }