import Route from '@ember/routing/route';

const POLL_INTERVAL = 3000;  // milliseconds

export default Route.extend({
  model() {
    return this.getUsers();
  },
  getUsers() {
    return this.store.findAll('command');
  },
  onPoll() {
    return this.getUsers().then(users => { this.set('currentModel', users) });
  },
  afterModel() {
    let poller = this.get('poller');
    if (!poller) {
      poller = this.get('pollboy').add(this, this.onPoll, POLL_INTERVAL);
      this.set('poller', poller);
    }
  },
  deactivate() {
    let poller = this.get('poller');
    this.get('pollboy').remove(poller);
  },
});
