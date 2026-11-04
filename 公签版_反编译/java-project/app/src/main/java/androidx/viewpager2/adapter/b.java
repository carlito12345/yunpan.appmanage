package androidx.viewpager2.adapter;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import l2.z;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f2451a;

    public b(int i10) {
        switch (i10) {
            case 1:
                this.f2451a = new CopyOnWriteArrayList();
                break;
            default:
                this.f2451a = new CopyOnWriteArrayList();
                break;
        }
    }

    public static void a(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw z.d(it);
        }
    }
}
