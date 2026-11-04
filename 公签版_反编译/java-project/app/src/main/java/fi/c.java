package fi;

import java.io.DataInputStream;
import java.io.InputStream;
import yh.h;

/* loaded from: classes3.dex */
public final class c extends a {

    /* renamed from: n, reason: collision with root package name */
    public final DataInputStream f5898n;

    public c(InputStream inputStream) throws h {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f5898n = dataInputStream;
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new h();
        }
        this.f5895m = dataInputStream.readInt();
        this.l = -1;
    }

    @Override // fi.a
    public final void q0() {
        if ((this.l & (-16777216)) == 0) {
            this.f5895m = (this.f5895m << 8) | this.f5898n.readUnsignedByte();
            this.l <<= 8;
        }
    }
}
