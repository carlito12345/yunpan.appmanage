package net.engio.mbassy.bus.config;

import java.util.Collection;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;

/* loaded from: classes.dex */
public interface IBusConfiguration {

    public static final class Properties {
        public static final String AsynchronousHandlerExecutor = "bus.handlers.async-executor";
        public static final String BusId = "bus.id";
        public static final String PublicationErrorHandlers = "bus.handlers.error";
    }

    IBusConfiguration addFeature(Feature feature);

    BusConfiguration addPublicationErrorHandler(IPublicationErrorHandler iPublicationErrorHandler);

    <T extends Feature> T getFeature(Class<T> cls);

    <T> T getProperty(String str, T t10);

    Collection<IPublicationErrorHandler> getRegisteredPublicationErrorHandlers();

    boolean hasProperty(String str);

    IBusConfiguration setProperty(String str, Object obj);
}
