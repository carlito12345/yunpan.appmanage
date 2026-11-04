package d4;

import android.content.Context;
import androidx.lifecycle.m0;
import androidx.room.s;
import java.io.IOException;

/* loaded from: classes.dex */
public final class g implements c4.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4458a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4459b;

    /* renamed from: c, reason: collision with root package name */
    public final s f4460c;

    /* renamed from: d, reason: collision with root package name */
    public final ie.d f4461d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4462e;

    public g(Context context, String str, s sVar) {
        ue.d.e(sVar, "callback");
        this.f4458a = context;
        this.f4459b = str;
        this.f4460c = sVar;
        this.f4461d = new ie.d(new m0(2, this));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f4461d.f8687b != ie.e.f8689b) {
            ((f) this.f4461d.a()).close();
        }
    }

    public final c4.a r() {
        return ((f) this.f4461d.a()).r(true);
    }
}
