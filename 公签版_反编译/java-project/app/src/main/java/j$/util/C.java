package j$.util;

import java.util.Comparator;
import java.util.SortedSet;

/* loaded from: classes2.dex */
final class C extends c0 {

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ SortedSet f9003f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C(SortedSet sortedSet, SortedSet sortedSet2) {
        super(sortedSet2, 21);
        this.f9003f = sortedSet;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f9003f.comparator();
    }
}
