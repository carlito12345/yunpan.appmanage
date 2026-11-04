package z7;

import java.lang.reflect.Field;

/* loaded from: classes.dex */
public enum a extends h {
    public a() {
        super("IDENTITY", 0);
    }

    @Override // z7.h
    public final String b(Field field) {
        return field.getName();
    }
}
