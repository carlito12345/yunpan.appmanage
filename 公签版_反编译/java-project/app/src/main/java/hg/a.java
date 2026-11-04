package hg;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.BitSet;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class a extends IOException {
    public a(String str) {
        super(str);
    }

    public static void a(BitSet bitSet, Supplier supplier) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        if (bitSet == null) {
            try {
                ig.a.class.getConstructor(String.class).newInstance(supplier.get());
            } catch (ReflectiveOperationException | SecurityException e7) {
                new a((String) supplier.get(), e7);
            }
        }
    }

    public a(String str, Exception exc) {
        super(str, exc);
    }
}
