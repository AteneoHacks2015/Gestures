import Ember from 'ember';

export default Ember.Controller.extend({
  isAuthenticated: false,
  actions: {
    createSession: function(){
      var self = this;
      var login = this.get('username');
      var password = this.get('password');

      if(!Ember.isEmpty(login) && !Ember.isEmpty(password)){
        $.post(
            '/api/users/login',
            {"user_session": {"login":login, "password":password}},
            function(data){
              self.set('isAuthenticated', true);
              var user = self.store.createRecord('user',{
                name: data.login,
                user_id: data.id
              });

              console.log(data);
              $('#login').modal('hide');
              self.transitionToRoute("/user");
          });
      }
    },

    destroySession: function(){
      var self = this;
      if(typeof $.cookie("user_credentials") !== undefined){
       $.ajax({
        url: '/api/users/logout',
        type: 'DELETE',
        success: function(data){
          self.set('isAuthenticated', false);
          self.transitionToRoute('/');
        }
       }); 
      }
    },

    signUp: function(){
      var self = this;
      var login = this.get('newusername');
      var password = this.get('newpassword');
      var name = this.get('name');
      var school = this.get('school');
 
      if(!Ember.isEmpty(login) && !Ember.isEmpty(password)){
        $.post(
            '/api/users/',
            {"user": {"login":login, "password":password, "role":"player", "name": name, "school": school}},
            function(data){
              self.set('isAuthenticated', true);
              $('#signUp').modal('hide');
              self.transitionToRoute("/user");
          });
      }
    }
  }
});
