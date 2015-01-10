import DS from 'ember-data';

export default DS.Model.extend({
	phrase: DS.attr(),  
	difficulty: DS.attr(),
	src: DS.attr()
});
