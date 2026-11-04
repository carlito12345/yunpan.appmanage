package vb;

import android.content.Context;
import ua.b1;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16749a;

    /* renamed from: b, reason: collision with root package name */
    public String f16750b = "";

    /* renamed from: c, reason: collision with root package name */
    public boolean f16751c = true;

    /* renamed from: d, reason: collision with root package name */
    public int f16752d;

    /* renamed from: e, reason: collision with root package name */
    public b1 f16753e;

    public m(Context context) {
        this.f16749a = context;
    }

    public final void a(te.a aVar) {
        this.f16753e = new b1(2, aVar);
    }

    public final void b(int i10) {
        String string = this.f16749a.getString(i10);
        ue.d.d(string, "getString(...)");
        this.f16750b = string;
    }
}
