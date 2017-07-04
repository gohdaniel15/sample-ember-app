import DS from 'ember-data';

export default DS.Model.extend({
  project: DS.belongsTo('project'),
  filepicker_url: DS.attr('string')
});
