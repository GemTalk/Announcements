The subscription is a single entry in a SubscriptionRegistry.
Several subscriptions by the same object is possible.

This subscription references the receiver weakly. If the receiver is garbage collected, the subscription is automatically removed from the SubscriptionRegistry. A MessageSend is dynamically generated to make ephemeron finalization easier.