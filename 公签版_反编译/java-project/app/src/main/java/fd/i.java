package fd;

import androidx.fragment.app.b0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class i extends ed.c implements ad.j {
    public final boolean G;
    public final String[] H;

    public i(vc.f fVar, boolean z) {
        super(fVar, (byte) 114, null);
        this.G = z;
        wc.a aVar = (wc.a) fVar;
        this.f4933g = aVar.f17867x;
        if (aVar.f17856q0.f16792a) {
            this.H = new String[]{"SMB 2.???", "SMB 2.002"};
        } else if (aVar.f17857r0.f16792a) {
            this.H = new String[]{"NT LM 0.12", "SMB 2.???", "SMB 2.002"};
        } else {
            this.H = new String[]{"NT LM 0.12"};
        }
    }

    @Override // ad.j
    public final boolean d() {
        return this.G;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (String str : this.H) {
            byteArrayOutputStream.write(2);
            try {
                byteArrayOutputStream.write(ge.b.d(str, ge.b.f6137c));
                byteArrayOutputStream.write(0);
            } catch (IOException e7) {
                throw new b0(10, e7);
            }
        }
        System.arraycopy(byteArrayOutputStream.toByteArray(), 0, bArr, i10, byteArrayOutputStream.size());
        return byteArrayOutputStream.size();
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComNegotiate[");
        sb2.append(super.toString());
        sb2.append(",wordCount=");
        return new String(android.support.v4.media.session.a.s(sb2, this.f4937k, ",dialects=NT LM 0.12]"));
    }
}
