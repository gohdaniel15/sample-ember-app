import Ember from 'ember';

export default Ember.Component.extend({

  actions: {
    buttonClicked(params) {
      this.sendAction('action', params);
    }
  }

});
