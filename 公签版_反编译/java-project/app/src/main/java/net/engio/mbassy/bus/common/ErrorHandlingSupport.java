package net.engio.mbassy.bus.common;

import java.util.Collection;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;

/* loaded from: classes.dex */
public interface ErrorHandlingSupport {
    Collection<IPublicationErrorHandler> getRegisteredErrorHandlers();
}
