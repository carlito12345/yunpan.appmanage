package hc;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class a extends d.b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8183d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f8184e;

    public /* synthetic */ a(int i10, Object obj) {
        this.f8183d = i10;
        this.f8184e = obj;
    }

    @Override // d.b
    public final void e0(String str) {
        switch (this.f8183d) {
            case 0:
                ((PrintStream) this.f8184e).getClass();
                break;
            default:
                ((PrintWriter) this.f8184e).println((Object) str);
                break;
        }
    }
}
