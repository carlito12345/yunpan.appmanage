package net.engio.mbassy.listener;

import net.engio.mbassy.subscription.SubscriptionContext;

/* loaded from: classes.dex */
public interface IMessageFilter<M> {
    boolean accepts(M m10, SubscriptionContext subscriptionContext);
}
