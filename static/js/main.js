function polyglotViewModel(){
    var self = this;
    self.prompts = ko.observableArray([]);
    self.loadPromts = function(){
        $.ajax({
            url: "/getBasicPrompts",
            type: "GET",
            success: function(prompts){
                prompts = JSON.parse(prompts);
                self.prompts(prompts.map(function(prompt){
                    return new LocalLanguageFillInPrompt(prompt);
                }));
            },
            error: function(){
                console.log("server failed to return prompt");
            }
        });
    };
    self.discardPrompt = function(){
        if(!self.currentPrompt().check()){
          alert('Not correct');
          return;
        }

        self.prompts.shift();
    };
    self.currentPrompt = ko.computed(function(){
        return self.prompts()[0] || new BasicPrompt({
          english: 'Complete',
          hindi: 'Pūrī'
        });
    });

    self.promptFactory = function(type, data){
        switch(type){
          case 'BASIC':
            return new BasicPrompt(data);
          break;
          case 'LOCALFILLIN':
            return new LocalLanguageFillInPrompt(data);
          break;
        }
    }

    self.loadPromts();
}

//we can use javascript class to represent promts
//becomes important when promts are more complicated (take user input)
function BasicPrompt(promptData){
    var self = this;
    self.type           = 'BASIC'
    self.targetLanguage = ko.observable(promptData.hindi);
    self.nativeLanguage = ko.observable(promptData.english);

    self.check = ko.computed(function(){
      return true;
    });
}

function LocalLanguageFillInPrompt(promptData){
    var self = this;
    //inhert from BasicPrompt
    ko.utils.extend(self, new BasicPrompt(promptData));
    self.type    = 'LOCALFILLIN';
    self.answer  = ko.observable('');

    self.check = ko.computed(function(){
      if(!self.answer() || !self.nativeLanguage()){return false;}
      return self.answer().toUpperCase() === self.nativeLanguage().toUpperCase();
    });
}

ko.applyBindings(new polyglotViewModel());
