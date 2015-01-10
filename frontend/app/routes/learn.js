import Ember from 'ember';
import ajax from 'ic-ajax';

export default Ember.Route.extend({ 
  model: function(){
    self = this;
    return ajax({
      url: '/api/items?count=1&difficulty=1&all=false',
      type: 'get'
    }).then(function(data){
    	var item = self.store.createRecord('items',{
    		phrase: data[0].phrase,
    		difficulty: data[0].difficulty,
        item_id: data[0].id
    	});

    	return item;
    });


  }
});
