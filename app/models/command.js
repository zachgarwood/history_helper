import DS from 'ember-data';

export default DS.Model.extend({
  command: DS.attr('string'),
  raw: DS.attr('string'),
});
