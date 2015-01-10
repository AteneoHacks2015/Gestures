import Ember from 'ember';
import ajax from 'ic-ajax';

export default Ember.Route.extend({ 
  model: function(){
    self = this;
    return ajax({
      url: 'api/items?all=true',
      type: 'get'
    }).then(function(data){
      data.forEach(function(sample){
        var item = self.store.createRecord('items', {        
          phrase: sample.phrase,
          difficulty: sample.difficulty
        });
      });

      return self.store.all('items');
    });


  }
});
