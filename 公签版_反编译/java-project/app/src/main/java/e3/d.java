package e3;

import java.util.Map;
import z2.n;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements t7.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4727a;

    @Override // t7.e
    public final boolean apply(Object obj) {
        switch (this.f4727a) {
            case 0:
                return ((n) obj).f19416a.equals("TLEN");
            case 1:
                return ((z2.e) obj).f19408c.equals("iTunSMPB");
            case 2:
                z2.k kVar = (z2.k) obj;
                return kVar.f19418b.equals("com.apple.iTunes") && kVar.f19419c.equals("iTunSMPB");
            case 3:
                return ((Map.Entry) obj).getKey() != null;
            default:
                return ((String) obj) != null;
        }
    }
}
