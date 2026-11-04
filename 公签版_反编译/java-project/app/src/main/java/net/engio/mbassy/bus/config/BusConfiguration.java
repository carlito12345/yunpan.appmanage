package net.engio.mbassy.bus.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.engio.mbassy.bus.error.IPublicationErrorHandler;

/* loaded from: classes.dex */
public class BusConfiguration implements IBusConfiguration {
    private final Map<Object, Object> properties = new HashMap();
    private final List<IPublicationErrorHandler> publicationErrorHandlers = new ArrayList();

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public IBusConfiguration addFeature(Feature feature) {
        this.properties.put(feature.getClass(), feature);
        return this;
    }

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public final BusConfiguration addPublicationErrorHandler(IPublicationErrorHandler iPublicationErrorHandler) {
        this.publicationErrorHandlers.add(iPublicationErrorHandler);
        return this;
    }

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public <T extends Feature> T getFeature(Class<T> cls) {
        return (T) this.properties.get(cls);
    }

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public <T> T getProperty(String str, T t10) {
        return this.properties.containsKey(str) ? (T) this.properties.get(str) : t10;
    }

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public Collection<IPublicationErrorHandler> getRegisteredPublicationErrorHandlers() {
        return Collections.unmodifiableCollection(this.publicationErrorHandlers);
    }

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public boolean hasProperty(String str) {
        return this.properties.containsKey(str);
    }

    @Override // net.engio.mbassy.bus.config.IBusConfiguration
    public IBusConfiguration setProperty(String str, Object obj) {
        this.properties.put(str, obj);
        return this;
    }
}
