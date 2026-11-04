package net.engio.mbassy.bus.common;

import net.engio.mbassy.bus.publication.IPublicationCommand;

/* loaded from: classes.dex */
public interface ISyncMessageBus<T, P extends IPublicationCommand> extends PubSubSupport<T>, ErrorHandlingSupport, GenericMessagePublicationSupport<T, P> {
}
