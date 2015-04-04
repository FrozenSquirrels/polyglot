function BasicPrompt(promptData){
    var self = this;
    self.prompt_type = "BASIC";
    self.targetLanguage = ko.observable(promptData.hindi);
    self.nativeLanguage = ko.observable(promptData.english);
    self.validate = function(){
      return true;
    };
}
