package org.simpleframework.xml.transform;

/* loaded from: classes3.dex */
public interface Transform<T> {
    T read(String str);

    String write(T t10);
}
