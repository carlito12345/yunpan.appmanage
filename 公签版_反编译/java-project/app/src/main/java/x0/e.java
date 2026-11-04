package x0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* loaded from: classes.dex */
public final class e implements f {

    /* renamed from: a, reason: collision with root package name */
    public final ContentInfo.Builder f17976a;

    public e(ClipData clipData, int i10) {
        this.f17976a = new ContentInfo.Builder(clipData, i10);
    }

    @Override // x0.f
    public final void a(Bundle bundle) {
        this.f17976a.setExtras(bundle);
    }

    @Override // x0.f
    public final i build() {
        return new i(new w.i(this.f17976a.build()));
    }

    @Override // x0.f
    public final void c(Uri uri) {
        this.f17976a.setLinkUri(uri);
    }

    @Override // x0.f
    public final void d(int i10) {
        this.f17976a.setFlags(i10);
    }
}
