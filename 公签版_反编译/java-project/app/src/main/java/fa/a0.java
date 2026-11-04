package fa;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.bean.ShellResultData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public int f5648a;

    /* renamed from: b, reason: collision with root package name */
    public List f5649b;

    public a0() {
        this.f5648a = 0;
        this.f5649b = new ArrayList();
    }

    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f5649b.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append(SignParameters.NEW_LINE);
        }
        return sb2.toString();
    }

    public final boolean b() {
        return this.f5648a == 0;
    }

    public a0(androidx.room.s sVar) {
        this.f5648a = 0;
        this.f5649b = new ArrayList();
        int i10 = sVar.f2426b;
        this.f5648a = i10;
        if (i10 != 0 && !sVar.j().isEmpty()) {
            sVar.k().addAll(sVar.j());
        }
        this.f5649b = sVar.k();
    }

    public a0(i iVar) {
        this.f5648a = 0;
        new ArrayList();
        this.f5648a = iVar.f5691a;
        this.f5649b = iVar.f5693c;
    }

    public a0(ShellResultData shellResultData) {
        this.f5648a = 0;
        new ArrayList();
        this.f5648a = shellResultData.code;
        this.f5649b = shellResultData.lines;
    }
}
