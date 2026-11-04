package androidx.lifecycle;

import android.os.Build;

/* loaded from: classes.dex */
public final class m0 extends ue.e implements te.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1785a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1786b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m0(int i10, Object obj) {
        super(0);
        this.f1785a = i10;
        this.f1786b = obj;
    }

    @Override // te.a
    public final Object b() {
        switch (this.f1785a) {
            case 0:
                return l0.f((w0) this.f1786b);
            case 1:
                androidx.room.v vVar = (androidx.room.v) this.f1786b;
                return vVar.database.compileStatement(vVar.createQuery());
            default:
                int i10 = Build.VERSION.SDK_INT;
                d4.g gVar = (d4.g) this.f1786b;
                if (i10 >= 23) {
                    String str = gVar.f4459b;
                }
                d4.f fVar = new d4.f(gVar.f4458a, gVar.f4459b, new d4.c(), gVar.f4460c);
                fVar.setWriteAheadLoggingEnabled(gVar.f4462e);
                return fVar;
        }
    }
}
