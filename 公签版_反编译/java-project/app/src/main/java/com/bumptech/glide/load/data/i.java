package com.bumptech.glide.load.data;

import a2.k1;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.HashMap;
import o5.w;

/* loaded from: classes.dex */
public final class i implements g {

    /* renamed from: c, reason: collision with root package name */
    public static final h f3359c = new h(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3360a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3361b;

    public i() {
        this.f3360a = 0;
        this.f3361b = new HashMap();
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 21 && !"robolectric".equals(Build.FINGERPRINT);
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
        switch (this.f3360a) {
            case 1:
            case 2:
                break;
            default:
                ((w) this.f3361b).A();
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.g
    public Object d() {
        switch (this.f3360a) {
            case 1:
                return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f3361b).rewind();
            case 2:
                return this.f3361b;
            default:
                w wVar = (w) this.f3361b;
                wVar.reset();
                return wVar;
        }
    }

    public ParcelFileDescriptor f() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f3361b).rewind();
    }

    public i(InputStream inputStream, k1 k1Var) {
        this.f3360a = 3;
        w wVar = new w(inputStream, k1Var);
        this.f3361b = wVar;
        wVar.mark(5242880);
    }

    public i(ParcelFileDescriptor parcelFileDescriptor) {
        this.f3360a = 1;
        this.f3361b = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public i(Object obj) {
        this.f3360a = 2;
        this.f3361b = obj;
    }

    private final void a() {
    }

    private final void c() {
    }
}
