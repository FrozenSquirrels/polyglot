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
                    return new BasicPrompt(prompt);
                }));
            },
            error: function(){
                console.log("server failed to return prompt");
            }
        });
    };
    self.discardPrompt = function(){
        self.prompts.shift();
    };
    self.currentPrompt = ko.computed(function(){
        return self.prompts()[0] || {
          english: 'Complete',
          hindi: 'Pūrī'
        };
    });

    self.loadPromts();
}

//we can use javascript class to represent promts
//becomes important when promts are more complicated (take user input)
function BasicPrompt(promptData){
    var self = this;
    self.hindi = promptData.hindi;
    self.english = promptData.english;
}

ko.applyBindings(new polyglotViewModel());
