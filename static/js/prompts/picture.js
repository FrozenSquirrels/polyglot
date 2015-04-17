function PicturePrompt(promptData){
    var self = this;
    //inhert from BasicPrompt
    ko.utils.extend(self, new BasicPrompt(promptData));

console.log('before random');
    $.getJSON("/words/random", function(data){
console.log('random word call');
console.log(data);
      self._randomWord = data;
    });

    self.prompt_type = "PICTURE";

    self.answer  = ko.observable('');

    self.getImage = ko.computed(function(){
      var path = '/static/words/'+self.nativeLanguage().toLowerCase() +'.jpg';
      return path;
    });

    self.randomImage = ko.computed(function(){
      var path = '/static/words/'+self._randomWord +'.jpg';
      return path;
    });

    self.randomWord = ko.computed(function(){
      return self._randomWord; 
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
