package h4;

import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: b, reason: collision with root package name */
    public final View f6414b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6413a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6415c = new ArrayList();

    public a0(View view) {
        this.f6414b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f6414b == a0Var.f6414b && this.f6413a.equals(a0Var.f6413a);
    }

    public final int hashCode() {
        return this.f6413a.hashCode() + (this.f6414b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbB = d0.f.b("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbB.append(this.f6414b);
        sbB.append(SignParameters.NEW_LINE);
        String strJ = g.b.j(sbB.toString(), "    values:");
        HashMap map = this.f6413a;
        for (String str : map.keySet()) {
            strJ = strJ + "    " + str + ": " + map.get(str) + SignParameters.NEW_LINE;
        }
        return strJ;
    }
}
