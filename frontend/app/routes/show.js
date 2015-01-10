import Ember from 'ember';
import ajax from 'ic-ajax';

export default Ember.Route.extend({ 
  model: function(){
    self = this;
    return ajax({
      url: '/api/user/items',
      type: 'get'
    }).then(function(data){
      data.forEach(function(sample){
      	if(sample.difficulty === 1){
      		var difficulty = "Easy";
      	}
      	else if(sample.difficulty === 2){
      		var difficulty = "Medium";
      	}
      	else if(sample.difficulty === 3){
      		var difficulty = "Hard";
      	}

        var item = self.store.createRecord('items', {        
          phrase: sample.phrase,
          difficulty: sample.difficulty
        });
      });

      return self.store.all('items');
    });


  }
});
