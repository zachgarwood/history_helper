import DS from 'ember-data';

export default DS.Model.extend({
  args: DS.attr('string'),
  documentation: DS.belongsTo('documentation'),
  name: DS.attr('string'),
});
