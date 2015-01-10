import Ember from 'ember';

export default Ember.Controller.extend({
	sign_array: [],
	actions:{
		addSign: function(name, id){
			if(id<=26){
		      	$('#gesture-set').append('<img src="/assets/gestures/sign-letters-circles/'+name+'" alt="" height="5%" width="5%" {{action "deleteSign"}}>');
			}
			else{
		      	$('#gesture-set').append('<img src="/assets/gestures/words/'+name+'" alt="" height="5%" width="5%" {{action "deleteSign"}}>');				
			}
	      	this.get('sign_array').push(id);
		},

		submit: function(id){
			$.post(
				'/api/items/'+id+'/submit',
				{"translation": {"gestures": this.get('sign_array')}},
				function(data){
					console.log(data);
					if(data.message == "correct"){
						$('#success').modal('show');
					}
					else{
						$('#fail').modal('show');
					}
			});
		},

		reset: function(){
			$('#fail').modal('hide');
			this.set('sign_array', []);
			$('#gesture-set').empty();
		},

		next: function(){
			$('#success').modal('hide');
			window.location.reload(true);
		}
	}
});
