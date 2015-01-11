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
        var img = [];
        sample.translations.forEach(function(trans){
          var translations = [];
          trans.gestures.forEach(function(gesture) {
            if(gesture.name.length == 1){
              var src = '/assets/gestures/sign-letters-circles/'+gesture.name+'.png';
            }
            else{
              var src = '/assets/gestures/words/'+gesture.name+'.png';
            }

            translations.push(src);
          });
          img.push(translations);
        });

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
          difficulty: sample.difficulty,
          src: img,
        });
      });

      return self.store.all('items');
    });


  }
});
