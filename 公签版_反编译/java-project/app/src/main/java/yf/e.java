package yf;

import java.io.IOException;
import l5.y;

/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f19167e = 0;

    public e(i iVar, ag.g gVar, char[] cArr) {
        super(iVar, gVar, cArr, true);
    }

    @Override // yf.b
    public final tf.c A(ag.g gVar, char[] cArr, boolean z) throws IOException {
        switch (this.f19167e) {
            case 0:
                return new s5.c(29);
            default:
                long j10 = gVar.f653g;
                long j11 = gVar.f652f;
                byte[] bArr = new byte[12];
                J(bArr);
                return new y(cArr, j10, j11, bArr, z);
        }
    }

    public e(i iVar, ag.g gVar, char[] cArr, boolean z) {
        super(iVar, gVar, cArr, z);
    }
}
