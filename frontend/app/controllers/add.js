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
			var phrase = this.get('phrase');
			var difficulty = $('#difficulty').val();
			var signs = this.get('sign_array');

			if(!Ember.isEmpty(phrase) && !Ember.isEmpty(difficulty)){
				$.post(
					'/api/items/',
					{"item": {"phrase":phrase, "difficulty":difficulty}},
					function(data){
						console.log(data);
					}
				);
			}
		}
	}
});
