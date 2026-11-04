package org.simpleframework.xml.core;

/* loaded from: classes3.dex */
interface Instance {
    Object getInstance();

    Class getType();

    boolean isReference();

    Object setInstance(Object obj);
}
