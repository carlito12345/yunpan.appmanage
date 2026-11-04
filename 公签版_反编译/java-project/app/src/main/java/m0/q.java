package m0;

import android.app.Notification;
import android.app.Service;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Service f10777a;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f10781e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f10782f;

    /* renamed from: g, reason: collision with root package name */
    public int f10783g;

    /* renamed from: i, reason: collision with root package name */
    public String f10785i;

    /* renamed from: j, reason: collision with root package name */
    public Bundle f10786j;

    /* renamed from: k, reason: collision with root package name */
    public final String f10787k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final Notification f10788m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f10789n;

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f10790o;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f10778b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f10779c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f10780d = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final boolean f10784h = true;

    public q(Service service, String str) {
        Notification notification = new Notification();
        this.f10788m = notification;
        this.f10777a = service;
        this.f10787k = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f10783g = 0;
        this.f10790o = new ArrayList();
        this.l = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification a() {
        g3.j jVar = new g3.j(this);
        ((q) jVar.f6036c).getClass();
        int i10 = Build.VERSION.SDK_INT;
        Notification.Builder builder = (Notification.Builder) jVar.f6035b;
        if (i10 >= 26) {
            return r.a(builder);
        }
        int i11 = jVar.f6034a;
        if (i10 >= 24) {
            Notification notificationA = r.a(builder);
            if (i11 == 0) {
                return notificationA;
            }
            if (u.f(notificationA) != null && (notificationA.flags & 512) != 0 && i11 == 2) {
                g3.j.j(notificationA);
            }
            if (u.f(notificationA) == null || (notificationA.flags & 512) != 0 || i11 != 1) {
                return notificationA;
            }
            g3.j.j(notificationA);
            return notificationA;
        }
        Bundle bundle = (Bundle) jVar.f6038e;
        if (i10 >= 21) {
            t.a(builder, bundle);
            Notification notificationA2 = r.a(builder);
            if (i11 == 0) {
                return notificationA2;
            }
            if (u.f(notificationA2) != null && (notificationA2.flags & 512) != 0 && i11 == 2) {
                g3.j.j(notificationA2);
            }
            if (u.f(notificationA2) == null || (notificationA2.flags & 512) != 0 || i11 != 1) {
                return notificationA2;
            }
            g3.j.j(notificationA2);
            return notificationA2;
        }
        if (i10 >= 20) {
            t.a(builder, bundle);
            Notification notificationA3 = r.a(builder);
            if (i11 == 0) {
                return notificationA3;
            }
            if (u.f(notificationA3) != null && (notificationA3.flags & 512) != 0 && i11 == 2) {
                g3.j.j(notificationA3);
            }
            if (u.f(notificationA3) == null || (notificationA3.flags & 512) != 0 || i11 != 1) {
                return notificationA3;
            }
            g3.j.j(notificationA3);
            return notificationA3;
        }
        ArrayList arrayList = (ArrayList) jVar.f6037d;
        if (i10 >= 19) {
            SparseArray<? extends Parcelable> sparseArrayA = c0.a(arrayList);
            if (sparseArrayA != null) {
                bundle.putSparseParcelableArray("android.support.actionExtras", sparseArrayA);
            }
            t.a(builder, bundle);
            return r.a(builder);
        }
        Notification notificationA4 = r.a(builder);
        Bundle bundleB = c0.b(notificationA4);
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle.keySet()) {
            if (bundleB.containsKey(str)) {
                bundle2.remove(str);
            }
        }
        bundleB.putAll(bundle2);
        SparseArray<? extends Parcelable> sparseArrayA2 = c0.a(arrayList);
        if (sparseArrayA2 != null) {
            c0.b(notificationA4).putSparseParcelableArray("android.support.actionExtras", sparseArrayA2);
        }
        return notificationA4;
    }

    public final void c() {
        this.f10788m.flags |= 2;
    }

    public final void d() {
        Notification notification = this.f10788m;
        notification.sound = null;
        notification.audioStreamType = -1;
        if (Build.VERSION.SDK_INT >= 21) {
            notification.audioAttributes = p.a(p.e(p.c(p.b(), 4), 5));
        }
    }
}
