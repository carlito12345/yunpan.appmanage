package a2;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* loaded from: classes.dex */
public final class j extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f191a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f192b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f193c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(l lVar, Handler handler, ContentResolver contentResolver, Uri uri) {
        super(handler);
        this.f193c = lVar;
        this.f191a = contentResolver;
        this.f192b = uri;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f193c.c();
    }
}
