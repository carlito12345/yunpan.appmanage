package androidx.activity;

import android.os.Bundle;
import androidx.fragment.app.j0;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements b4.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f789a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f790b;

    public /* synthetic */ d(int i10, Object obj) {
        this.f789a = i10;
        this.f790b = obj;
    }

    @Override // b4.d
    public final Bundle a() {
        switch (this.f789a) {
            case 0:
                j0 j0Var = (j0) this.f790b;
                Bundle bundle = new Bundle();
                g gVar = j0Var.f813k;
                gVar.getClass();
                HashMap map = gVar.f844b;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(map.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(map.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(gVar.f846d));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) gVar.f849g.clone());
                return bundle;
            default:
                return androidx.lifecycle.j0.a((androidx.lifecycle.j0) this.f790b);
        }
    }
}
