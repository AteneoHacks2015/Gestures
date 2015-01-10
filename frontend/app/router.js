import Ember from "ember";
import config from "./config/environment";

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route("home", {
    path: "/"
  });

  this.route("translate");
  this.route("add", {path:'user/item/new'});
  this.resource("user", function() {});
});

export default Router;