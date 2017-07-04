import { moduleForModel, test } from 'ember-qunit';

moduleForModel('project-image', 'Unit | Model | project image', {
  // Specify the other units that are required for this test.
  needs: []
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
