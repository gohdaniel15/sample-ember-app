import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  description: DS.attr('string'),
  project_images: DS.hasMany('project_image'),
  tags: DS.hasMany('tag')
});
