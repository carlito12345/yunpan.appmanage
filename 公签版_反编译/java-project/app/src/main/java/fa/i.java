package fa;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public int f5691a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f5692b = "";

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f5693c = new ArrayList();

    public final String a() {
        Iterator it = this.f5693c.iterator();
        String strK = "";
        while (it.hasNext()) {
            strK = g.b.k(strK, (String) it.next(), SignParameters.NEW_LINE);
        }
        return strK;
    }
}
