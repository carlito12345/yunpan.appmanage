package zg;

import java.lang.reflect.Array;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Integer[] f19572a = new Integer[0];

    /* renamed from: b, reason: collision with root package name */
    public static final Object[] f19573b = new Object[0];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.CharSequence] */
    public static String a(String str, Supplier supplier) {
        try {
            int i10 = b.f19574a;
            boolean z = true;
            if (str.length() == 0) {
                return (String) supplier.get();
            }
            ?? property = System.getProperty(str);
            if (property != 0 && property.length() != 0) {
                z = false;
            }
            if (z) {
                property = (CharSequence) supplier.get();
            }
            return (String) property;
        } catch (SecurityException unused) {
            return (String) supplier.get();
        }
    }

    public static boolean b(Object obj) {
        return (obj != null ? Array.getLength(obj) : 0) == 0;
    }
}
