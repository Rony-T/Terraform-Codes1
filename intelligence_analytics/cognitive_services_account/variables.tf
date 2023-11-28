#---------------------------------------------------------
# Azure Cognitive Services Account - Variables
#----------------------------------------------------------
variable "ca_name" {
  description = "name of the Cognitive Service Account. Changing this forces a new resource to be created"

}

variable "ca_resourcegroup_name" {
  description = "name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created."

}

variable "ca_location" {
  description = "supported Azure location where the resource exists."

}

variable "ca_kind" {
  description = "Specifies the type of Cognitive Service Account that should be created. Possible values are Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face,FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics(Language service), TextTranslation and WebLM. Changing this forces a new resource to be created"

}

variable "ca_sku_name" {
  description = "SKU Name for this Cognitive Service Account. Possible values are F0, F1, S, S0, S1, S2, S3, S4, S5, S6, P0, P1, and P2."

}

variable "ca_custom_subdomain_name" {
  description = "subdomain name used for token-based authentication"

}

variable "ca_outbound_network_access_restricted" {
  description = "Whether outbound network access is restricted for the Cognitive Account."
  default     = false

}

variable "ca_public_network_access_enabled" {
  description = "Whether public network access is allowed for the Cognitive Account."
  default     = true

}

variable "ca_identity" {
  description = "name of the Cognitive Service Account. Changing this forces a new resource to be created"

}

variable "ca_network_rules" {
  description = "Network rules to apply to key vault."
  type = object({
    # bypass         = list(string)
    default_action = string
    ip_rules       = list(string)
    subnet_id     = string
  })
  default = null
}

# variable "ca_network_rules_subnet_ids" {
#   description = "Subnet ids for firewall"

# }


# Tag for Cognitive Service Account
variable "ca_tags" {
  description = "A mapping of tags to assign to the Cognitive Services Account"
  type        = map(string)
  default     = {}
}


