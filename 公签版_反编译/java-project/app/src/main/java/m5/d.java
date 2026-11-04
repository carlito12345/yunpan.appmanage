package m5;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import f5.i;
import l5.p;
import l5.q;

/* loaded from: classes.dex */
public final class d implements q {

    /* renamed from: a, reason: collision with root package name */
    public final Context f10890a;

    /* renamed from: b, reason: collision with root package name */
    public final q f10891b;

    /* renamed from: c, reason: collision with root package name */
    public final q f10892c;

    /* renamed from: d, reason: collision with root package name */
    public final Class f10893d;

    public d(Context context, q qVar, q qVar2, Class cls) {
        this.f10890a = context.getApplicationContext();
        this.f10891b = qVar;
        this.f10892c = qVar2;
        this.f10893d = cls;
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && p000if.a.e0((Uri) obj);
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, i iVar) {
        Uri uri = (Uri) obj;
        return new p(new z5.d(uri), new c(this.f10890a, this.f10891b, this.f10892c, uri, i10, i11, iVar, this.f10893d));
    }
}
