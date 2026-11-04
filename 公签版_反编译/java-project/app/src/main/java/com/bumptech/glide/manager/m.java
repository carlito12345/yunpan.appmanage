package com.bumptech.glide.manager;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class m implements a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f3395a;

    public m(s sVar) {
        this.f3395a = sVar;
    }

    @Override // com.bumptech.glide.manager.a
    public final void a(boolean z) {
        ArrayList arrayList;
        a6.q.a();
        synchronized (this.f3395a) {
            arrayList = new ArrayList((HashSet) this.f3395a.f3413d);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(z);
        }
    }
}
