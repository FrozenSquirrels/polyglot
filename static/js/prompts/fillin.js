function LocalLanguageFillInPrompt(promptData){
    var self = this;
    //inhert from BasicPrompt
    ko.utils.extend(self, new BasicPrompt(promptData));
    self.prompt_type = "LOCALFILLIN";

    self.answer  = ko.observable('');

    self.validate = function(){
      if(self.check()){
        alert("correct");//not that we should use alerts, but its the easiest thing to code right now
      }
      else{
        alert("incorrect");
      }
    };

    self.check = ko.computed(function(){
      if(!self.answer() || !self.nativeLanguage()){return false;}
      return self.answer().toUpperCase() === self.nativeLanguage().toUpperCase();
    });
}
