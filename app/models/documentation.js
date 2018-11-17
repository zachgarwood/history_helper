import DS from 'ember-data';

export default DS.Model.extend({
  help: DS.attr('string'),
  info: DS.attr('string'),
});
