package b4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import q.i;

/* loaded from: classes.dex */
public final class a implements d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2540a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2541b;

    public a(e eVar) {
        ue.d.e(eVar, "registry");
        this.f2541b = new LinkedHashSet();
        eVar.c("androidx.savedstate.Restarter", this);
    }

    @Override // b4.d
    public final Bundle a() {
        switch (this.f2540a) {
            case 0:
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.f2541b));
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                ((i) this.f2541b).r().getClass();
                return bundle2;
        }
    }

    public a(i iVar) {
        this.f2541b = iVar;
    }
}
