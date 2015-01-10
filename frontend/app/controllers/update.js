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

		updateTranslation: function(){
			var phrase = $('#phrase').text();
			var difficulty = $('#difficulty').val();
			var signs = this.get('sign_array');

			if(!Ember.isEmpty(phrase) && !Ember.isEmpty(difficulty)){
				$.post(
					'/api/items/',
					{"item": {"phrase":phrase, "difficulty":difficulty}},
					function(data){
						$.post(
						'/api/items/'+data.id+'/translations',
						{"translation": {"gestures": signs}},
						function(data){
							// console.log(data);
							$('#add').append('<br><br><div id="creation-success" class="alert alert-success">'+'<a href="#" class="close" data-dismiss="alert">&times;</a>'+'<strong>Success!</strong> You have successfully added an alternative translation.'+'</div>');
						});
					}
				);
			}
		}
	}
});
