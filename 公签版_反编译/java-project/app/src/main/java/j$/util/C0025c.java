package j$.util;

import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;

/* renamed from: j$.util.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0025c implements Comparator, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9054a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f9055b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9056c;

    public /* synthetic */ C0025c(Comparator comparator, Object obj, int i10) {
        this.f9054a = i10;
        this.f9055b = comparator;
        this.f9056c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f9054a) {
            case 0:
                int iCompare = this.f9055b.compare(obj, obj2);
                return iCompare != 0 ? iCompare : ((Comparator) this.f9056c).compare(obj, obj2);
            default:
                Function function = (Function) this.f9056c;
                return this.f9055b.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
