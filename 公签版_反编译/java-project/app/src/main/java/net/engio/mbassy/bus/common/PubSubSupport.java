package net.engio.mbassy.bus.common;

import net.engio.mbassy.bus.IMessagePublication;

/* loaded from: classes.dex */
public interface PubSubSupport<T> extends RuntimeProvider {
    IMessagePublication publish(T t10);

    void subscribe(Object obj);

    boolean unsubscribe(Object obj);
}
