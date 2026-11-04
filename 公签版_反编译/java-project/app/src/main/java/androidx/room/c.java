package androidx.room;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2394a;

    /* renamed from: b, reason: collision with root package name */
    public final o f2395b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2396c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2397d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f2398e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f2399f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f2400g;

    public c(Context context, gf.g gVar, o oVar, ArrayList arrayList, int i10, LinkedHashSet linkedHashSet, ArrayList arrayList2, ArrayList arrayList3) {
        ue.d.e(oVar, "migrationContainer");
        ta.q.p(i10, "journalMode");
        this.f2394a = context;
        this.f2395b = oVar;
        this.f2396c = arrayList;
        this.f2397d = i10;
        this.f2398e = linkedHashSet;
        this.f2399f = arrayList2;
        this.f2400g = arrayList3;
    }
}
