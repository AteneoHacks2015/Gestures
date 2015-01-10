import Ember from 'ember';

export default Ember.Controller.extend({
	sign_array: [],
	actions:{
		addSign: function(name, id){
	      $('#gesture-set').append('<img src="/assets/'+name+'" alt="" height="8%" width="8%" {{action "deleteSign"}}>');
	      this.get('sign_array').push(id);
		}
	},
});
