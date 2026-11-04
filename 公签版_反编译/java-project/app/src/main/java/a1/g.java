package a1;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* loaded from: classes.dex */
public final class g implements h {

    /* renamed from: a, reason: collision with root package name */
    public final InputContentInfo f74a;

    public g(Object obj) {
        this.f74a = (InputContentInfo) obj;
    }

    @Override // a1.h
    public final Uri b() {
        return this.f74a.getContentUri();
    }

    @Override // a1.h
    public final void f() {
        this.f74a.requestPermission();
    }

    @Override // a1.h
    public final Uri g() {
        return this.f74a.getLinkUri();
    }

    @Override // a1.h
    public final ClipDescription getDescription() {
        return this.f74a.getDescription();
    }

    @Override // a1.h
    public final Object k() {
        return this.f74a;
    }

    public g(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f74a = new InputContentInfo(uri, clipDescription, uri2);
    }
}
