package rf;

import java.io.StringWriter;

/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: c, reason: collision with root package name */
    public final c[] f13760c;

    public a(c... cVarArr) {
        this.f13760c = cVarArr;
    }

    @Override // rf.c
    public final int a(int i10, StringWriter stringWriter, String str) {
        c[] cVarArr = this.f13760c;
        for (int i11 = 0; i11 < 6; i11++) {
            int iA = cVarArr[i11].a(i10, stringWriter, str);
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }
}
