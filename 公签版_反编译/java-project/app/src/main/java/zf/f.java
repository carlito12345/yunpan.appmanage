package zf;

import ag.m;
import java.io.IOException;

/* loaded from: classes.dex */
public final class f extends b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19555c = 0;

    public f(i iVar, m mVar) {
        super(iVar, mVar, null, true);
    }

    @Override // zf.b
    public final tf.d A(m mVar, char[] cArr, boolean z) throws IOException {
        switch (this.f19555c) {
            case 0:
                return new s9.a(29, false);
            default:
                kf.d dVar = new kf.d(cArr, mVar.f714j ? (eg.c.d(mVar.f712h) & 65535) << 16 : 0L, z);
                this.f19548a.write((byte[]) dVar.f10287c);
                return dVar;
        }
    }

    @Override // zf.b, java.io.OutputStream
    public void write(int i10) throws IOException {
        switch (this.f19555c) {
            case 1:
                super.write(new byte[]{(byte) i10}, 0, 1);
                break;
            default:
                super.write(i10);
                break;
        }
    }

    public f(i iVar, m mVar, char[] cArr, boolean z) {
        super(iVar, mVar, cArr, z);
    }

    @Override // zf.b, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        switch (this.f19555c) {
            case 1:
                super.write(bArr, 0, bArr.length);
                break;
            default:
                super.write(bArr);
                break;
        }
    }
}
