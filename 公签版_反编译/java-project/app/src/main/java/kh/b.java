package kh;

import java.util.Random;

/* loaded from: classes3.dex */
public final class b extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10325a;

    public /* synthetic */ b(int i10) {
        this.f10325a = i10;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f10325a) {
            case 0:
                return new d();
            case 1:
                return new w4.j();
            default:
                return new Random();
        }
    }
}
