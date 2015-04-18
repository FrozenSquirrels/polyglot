function LocalLanguageFillInPrompt(promptData){
    var self = this;
    //inhert from BasicPrompt
    ko.utils.extend(self, new BasicPrompt(promptData));
    self.prompt_type = "LOCALFILLIN";
    self.answer  = ko.observable('');
    self.answered = ko.observable(false);

    self.validate = function(){
      self.answered(true);
    };



    self.check = ko.computed(function(){
      if(!self.answer() || !self.nativeLanguage()){return false;}
      return self.answer().toUpperCase() === self.nativeLanguage().toUpperCase();
    });

}
