import Ember from 'ember';

export default Ember.Controller.extend({
	sign_array: [],
	actions:{
		addSign: function(name, id){
	      $('#add-signs').append('<img src="/assets/'+name+'" alt="" height="5%" width="5%" {{action "deleteSign"}}>');
	      this.get('sign_array').push(id);
		},

		deleteSign: function(){

		},

		createTranslation: function(){
			console.log(this.get('sign_array'));
			console.log(this.get('phrase'));
		}
	}
});
