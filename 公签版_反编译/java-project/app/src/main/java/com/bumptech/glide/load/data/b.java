package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class b implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3350a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3351b;

    /* renamed from: c, reason: collision with root package name */
    public final Comparable f3352c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3353d;

    public /* synthetic */ b(int i10, Comparable comparable, Object obj) {
        this.f3350a = i10;
        this.f3353d = obj;
        this.f3352c = comparable;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        switch (this.f3350a) {
            case 0:
                Object obj = this.f3351b;
                if (obj != null) {
                    try {
                        g(obj);
                        break;
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            default:
                Object obj2 = this.f3351b;
                if (obj2 != null) {
                    try {
                        g(obj2);
                        break;
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        switch (this.f3350a) {
        }
        return f5.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i10 = this.f3350a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, d dVar) {
        switch (this.f3350a) {
            case 0:
                try {
                    Object objI = i((AssetManager) this.f3353d, (String) this.f3352c);
                    this.f3351b = objI;
                    dVar.B(objI);
                    break;
                } catch (IOException e7) {
                    dVar.i(e7);
                    return;
                }
            default:
                try {
                    Object objH = h((ContentResolver) this.f3353d, (Uri) this.f3352c);
                    this.f3351b = objH;
                    dVar.B(objH);
                    break;
                } catch (FileNotFoundException e10) {
                    dVar.i(e10);
                }
        }
    }

    public abstract void g(Object obj);

    public abstract Object h(ContentResolver contentResolver, Uri uri);

    public abstract Object i(AssetManager assetManager, String str);

    private final void e() {
    }

    private final void f() {
    }
}
