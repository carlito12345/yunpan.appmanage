package net.engio.mbassy.dispatch;

import net.engio.mbassy.bus.MessagePublication;
import net.engio.mbassy.subscription.ISubscriptionContextAware;

/* loaded from: classes.dex */
public interface IHandlerInvocation<HANDLER, MESSAGE> extends ISubscriptionContextAware {
    void invoke(HANDLER handler, MESSAGE message, MessagePublication messagePublication);
}
