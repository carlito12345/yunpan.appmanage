package nh;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class c extends IllegalArgumentException {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11441a = b.class.getName();

    public c(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        try {
            super.fillInStackTrace();
            StackTraceElement[] stackTrace = getStackTrace();
            ArrayList arrayList = new ArrayList();
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (!stackTraceElement.getClassName().equals(f11441a)) {
                    arrayList.add(stackTraceElement);
                }
            }
            setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }
}
