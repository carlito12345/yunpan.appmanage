package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {

    /* renamed from: a, reason: collision with root package name */
    public int f2390a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f2391b = new LinkedHashMap();

    /* renamed from: c, reason: collision with root package name */
    public final m f2392c = new m(this);

    /* renamed from: d, reason: collision with root package name */
    public final l f2393d = new l(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        ue.d.e(intent, "intent");
        return this.f2393d;
    }
}
