function PicturePrompt(promptData){
    var self = this;
    //inhert from BasicPrompt
    ko.utils.extend(self, new BasicPrompt(promptData));

    self.bad = ko.observable('');

    $.getJSON("/words/random", function(data){
      self.bad(data.word);
    });

    self.prompt_type = "PICTURE";

    self.answer  = ko.observable('');

    self.getImage = ko.computed(function(){
      var path = '/static/words/'+self.nativeLanguage().toLowerCase() +'.jpg';
      return path;
    });

    self.randomImage = ko.computed(function(){
      var path = '/static/words/'+self.bad() +'.jpg';
      return path;
    });

    self.randomWord = ko.computed(function(){
      return self.bad(); 
    });

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
