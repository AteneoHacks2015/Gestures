import Ember from "ember";
import config from "./config/environment";

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route("home", {
    path: "/"
  });

  this.route("learn");

  this.route("add", {
    path: "user/item/new"
  });

  this.resource("user", function() {
    this.route("translations");
  });

  this.resource("items", function() {});
});

export default Router;