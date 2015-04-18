function polyglotViewModel(){
    //lets get some jquery stuff out of the way first
    $('#prompts-card').hide();//hide the prompt form

    var self = this;
    self.prompts = ko.observableArray([]);
    self.categories = ko.observableArray([]);
    self.selectedCategory = "";

    self.getCategories = function(){
      $.ajax({
          url: "/GetCategories",
          type: "GET",
          success: function(categories){
            categories = JSON.parse(categories);
            console.log(categories[0]);
            self.categories(categories);
          },
          error: function(){
              console.log("server failed to return categories");
          }
      });
    };

    self.loadPrompts = function(){
        $.ajax({
            url: "/GetPrompts/" + self.selectedCategory,
            type: "GET",
            success: function(prompts){
                prompts = JSON.parse(prompts);
                var promptObjs = []
                prompts.forEach(function(prompt){
                  promptObjs.push(self.promptFactory("BASIC", prompt));
                  promptObjs.push(self.promptFactory("LOCALFILLIN", prompt));
                });
                self.prompts(promptObjs);
            },
            error: function(){
                console.log("server failed to return prompt");
            }
        });
    };
    self.discardPrompt = function(){
        self.prompts.shift();
        if(self.prompts().length == 0){
          self.loadPrompts();
        }
    };

    self.next = function(){
      self.discardPrompt();
    };

    self.showCategorySelection = function(){
      $("#category-selection").show();
      $("#prompts-card").hide();
    };


    self.currentPrompt = ko.computed(function(){
        return self.prompts()[0] || new BasicPrompt({
          english: 'Complete',
          hindi: 'Pūrī',
          type: 'basic'
        });
    });
    self.promptTemplate = ko.computed(function(){
      if(!self.currentPrompt() || ! self.currentPrompt().prompt_type){
        return 'placeholder';
      }
      return self.currentPrompt().prompt_type;
    });

    self.selectCategory = function(category){
      self.selectedCategory = category;
      self.prompts([]);
      self.loadPrompts();
      $("#prompts-card").show();
      $("#category-selection").hide();
    };

    self.promptFactory = function(type, data){
        switch(type){
          case 'BASIC':
            return new BasicPrompt(data);
          break;
          case 'LOCALFILLIN':
            return new LocalLanguageFillInPrompt(data);
          break;
          default:
            return new BasicPrompt(data);
          break;
        }
    }

    self.getCategories();
}
$(document).ready(function(){
  var resource_counter = 0;
  var templates = $("template").toArray();
  templates.forEach(function(template){
    var url = $(template).attr("url");
    var id = $(template).attr("id")
    $.ajax({
      url: url,
      type: 'GET',
      success: function(data){
        template.innerHTML = data;
        ++ resource_counter;
        if(resource_counter == templates.length){
          ko.applyBindings(new polyglotViewModel());
        }
      },
      error: function(){
        console.log("could not fetch template " + id);
      }
    });
  });
});
