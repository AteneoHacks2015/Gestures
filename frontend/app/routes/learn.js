import Ember from 'ember';
import ajax from 'ic-ajax';

export default Ember.Route.extend({ 
  model: function(){
    self = this;
    return ajax({
      url: '/api/items?count=1&difficulty=1',
      type: 'get'
    }).then(function(data){
    	var item = self.store.createRecord('items',{
    		phrase: data.phrase,
    		difficulty: data.difficulty,
        item_id: data.id
    	});

    	return item;
    });


  }
});
