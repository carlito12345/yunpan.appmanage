package net.engio.mbassy.bus.common;

import net.engio.mbassy.bus.publication.ISyncAsyncPublicationCommand;

/* loaded from: classes.dex */
public interface IMessageBus<T, P extends ISyncAsyncPublicationCommand> extends GenericMessagePublicationSupport<T, P> {
    boolean hasPendingMessages();

    P post(T t10);

    void shutdown();
}
