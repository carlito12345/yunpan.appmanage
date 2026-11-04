package net.engio.mbassy.bus.common;

import net.engio.mbassy.bus.publication.IPublicationCommand;

/* loaded from: classes.dex */
public interface GenericMessagePublicationSupport<T, P extends IPublicationCommand> extends PubSubSupport<T>, ErrorHandlingSupport {
    P post(T t10);
}
