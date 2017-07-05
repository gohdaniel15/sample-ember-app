import Ember from 'ember';

export default Ember.Route.extend({

  model() {
    return Ember.RSVP.hash({
      projects: this.store.findAll('project'),
      contact: this.store.createRecord('contact')
    });
  },

  setupController(controller, models) {
    controller.set('projects', models.projects);
    controller.set('contact', models.contact);
  },

  actions: {

    createContact() {
      let contact = this.currentModel.contact;

      contact.save().then(() => this.controller.set('responseMessage', true));
    },

    willTransition() {
      let model = this.controller.get('contact');

      if (model.get('isNew')) {
        model.destroyRecord();
      }

      this.controller.set('responseMessage', false);
    }

  }

});
