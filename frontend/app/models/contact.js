import DS from 'ember-data';
import Ember from 'ember';

export default DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),
  message: DS.attr('string'),

  isValidEmail: Ember.computed.match('email', /^.+@.+\..+$/),
  isPresentEmail: Ember.computed.notEmpty('email'),
  isPresentName: Ember.computed.notEmpty('name'),
  isPresentMessage: Ember.computed.notEmpty('message'),

  isValid: Ember.computed.and('isValidEmail', 'isPresentEmail', 'isPresentName', 'isPresentMessage')
});
