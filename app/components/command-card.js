import Component from '@ember/component';
import { computed } from '@ember/object';

export default Component.extend({
  showDocumentation: false,
  rerunCommand: computed('commandCount', 'index', 'command.id', function() {
    const count = this.get('commandCount');
    const index = this.get('index');
    const id = this.get('command.id');

    const byLookback = String(index - count);
    const byId = count == id ? '!' : String(id);
    return `!${byLookback.length < byId.length ? byLookback : byId}`;
  }),
});
