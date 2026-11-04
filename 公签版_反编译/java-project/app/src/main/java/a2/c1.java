package a2;

import android.content.Context;
import android.content.ContextWrapper;

/* loaded from: classes.dex */
public final class c1 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f108a;

    /* renamed from: b, reason: collision with root package name */
    public g1 f109b;

    /* renamed from: c, reason: collision with root package name */
    public o1 f110c;

    /* renamed from: d, reason: collision with root package name */
    public g f111d;

    /* renamed from: e, reason: collision with root package name */
    public final float f112e;

    public c1(ContextWrapper contextWrapper) {
        this.f108a = contextWrapper != null ? contextWrapper.getApplicationContext() : null;
        this.f110c = o1.f266a;
        if (contextWrapper == null) {
            this.f111d = g.f164f;
        }
        this.f112e = 8.0f;
    }
}
