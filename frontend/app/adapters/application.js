import DS from 'ember-data';
import Ember from 'ember';

export default DS.JSONAPIAdapter.extend({
  namespace: 'api',
  pathForType: function(type) {
    let word = type;
    return Ember.String.pluralize(word).underscore(word);
  }
});
