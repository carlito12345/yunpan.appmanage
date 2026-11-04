package net.engio.mbassy.common;

/* loaded from: classes.dex */
public interface ISetEntry<T> {
    void clear();

    T getValue();

    ISetEntry<T> next();

    void remove();
}
