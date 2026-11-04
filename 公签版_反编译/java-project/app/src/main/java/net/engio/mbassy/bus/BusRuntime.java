package net.engio.mbassy.bus;

import g.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import net.engio.mbassy.bus.common.PubSubSupport;
import net.engio.mbassy.bus.error.MissingPropertyException;

/* loaded from: classes.dex */
public class BusRuntime {
    private Map<String, Object> properties = new HashMap();
    private PubSubSupport provider;

    public BusRuntime(PubSubSupport pubSubSupport) {
        this.provider = pubSubSupport;
    }

    public BusRuntime add(String str, Object obj) {
        this.properties.put(str, obj);
        return this;
    }

    public boolean contains(String str) {
        return this.properties.containsKey(str);
    }

    public <T> T get(String str) {
        if (contains(str)) {
            return (T) this.properties.get(str);
        }
        throw new MissingPropertyException(b.A("The property ", str, " is not available in this runtime"));
    }

    public Collection<String> getKeys() {
        return this.properties.keySet();
    }

    public PubSubSupport getProvider() {
        return this.provider;
    }
}
