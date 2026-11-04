package u7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class l0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public static final l0 f15498a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ l0[] f15499b;

    static {
        l0 l0Var = new l0();
        f15498a = l0Var;
        f15499b = new l0[]{l0Var};
    }

    public static l0 valueOf(String str) {
        return (l0) Enum.valueOf(l0.class, str);
    }

    public static l0[] values() {
        return (l0[]) f15499b.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        a9.o.s("no calls to next() since the last call to remove()", false);
    }
}
