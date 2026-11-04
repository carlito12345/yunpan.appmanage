package net.engio.mbassy.subscription;

import java.util.Collection;
import java.util.Iterator;
import net.engio.mbassy.bus.BusRuntime;
import net.engio.mbassy.bus.common.RuntimeProvider;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;
import net.engio.mbassy.bus.error.PublicationError;
import net.engio.mbassy.listener.MessageHandler;

/* loaded from: classes.dex */
public class SubscriptionContext implements RuntimeProvider {
    private final Collection<IPublicationErrorHandler> errorHandlers;
    private final MessageHandler handler;
    private final BusRuntime runtime;

    public SubscriptionContext(BusRuntime busRuntime, MessageHandler messageHandler, Collection<IPublicationErrorHandler> collection) {
        this.runtime = busRuntime;
        this.handler = messageHandler;
        this.errorHandlers = collection;
    }

    public Collection<IPublicationErrorHandler> getErrorHandlers() {
        return this.errorHandlers;
    }

    public MessageHandler getHandler() {
        return this.handler;
    }

    @Override // net.engio.mbassy.bus.common.RuntimeProvider
    public BusRuntime getRuntime() {
        return this.runtime;
    }

    public final void handleError(PublicationError publicationError) {
        Iterator<IPublicationErrorHandler> it = this.errorHandlers.iterator();
        while (it.hasNext()) {
            it.next().handleError(publicationError);
        }
    }
}
