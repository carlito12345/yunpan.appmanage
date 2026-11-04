package g;

import java.io.ByteArrayInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class e extends ByteArrayInputStream implements Cloneable {
    public e(byte[] bArr) {
        super(bArr);
    }

    public final boolean A(e eVar) throws IOException {
        if (this == eVar) {
            return true;
        }
        int iAvailable = available();
        if (eVar.available() != iAvailable) {
            return false;
        }
        for (int i10 = 0; i10 < iAvailable; i10++) {
            if (((ByteArrayInputStream) this).buf[((ByteArrayInputStream) this).pos + i10] != ((ByteArrayInputStream) eVar).buf[((ByteArrayInputStream) eVar).pos + i10]) {
                return false;
            }
        }
        return true;
    }

    public final void J(int i10) throws IOException {
        if (i10 > available()) {
            throw new IOException("insufficient data");
        }
        ((ByteArrayInputStream) this).count = ((ByteArrayInputStream) this).pos + i10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return A((e) obj);
        }
        return false;
    }

    public final int hashCode() throws IOException {
        int iAvailable = available();
        int i10 = ((ByteArrayInputStream) this).pos;
        int i11 = 0;
        for (int i12 = 0; i12 < iAvailable; i12++) {
            i11 += ((ByteArrayInputStream) this).buf[i10 + i12] * i12;
        }
        return i11;
    }

    public final e r() {
        try {
            e eVar = (e) clone();
            eVar.mark(Integer.MAX_VALUE);
            return eVar;
        } catch (CloneNotSupportedException e7) {
            throw new IllegalArgumentException(e7.toString());
        }
    }
}
