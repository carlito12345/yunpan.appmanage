package o9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import fg.i;
import fg.l;
import java.io.EOFException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11676a = 0;

    static {
        Charset.forName(HTTP.ASCII);
    }

    public static ArrayList a(l lVar, String str) throws EOFException, UnknownHostException {
        ArrayList arrayList = new ArrayList();
        i iVar = new i();
        iVar.T(lVar);
        iVar.readShort();
        short s8 = iVar.readShort();
        if (((s8 & HPKE.aead_EXPORT_ONLY) >> 15) == 0) {
            throw new IllegalArgumentException("not a response");
        }
        byte b10 = (byte) (s8 & 15);
        if (b10 == 3) {
            throw new UnknownHostException(g.b.j(str, ": NXDOMAIN"));
        }
        if (b10 == 2) {
            throw new UnknownHostException(g.b.j(str, ": SERVFAIL"));
        }
        int i10 = iVar.readShort() & HPKE.aead_EXPORT_ONLY;
        int i11 = iVar.readShort() & HPKE.aead_EXPORT_ONLY;
        iVar.readShort();
        iVar.readShort();
        for (int i12 = 0; i12 < i10; i12++) {
            byte b11 = iVar.readByte();
            if (b11 < 0) {
                iVar.skip(1L);
            } else {
                while (b11 > 0) {
                    iVar.skip(b11);
                    b11 = iVar.readByte();
                }
            }
            iVar.readShort();
            iVar.readShort();
        }
        for (int i13 = 0; i13 < i11; i13++) {
            byte b12 = iVar.readByte();
            if (b12 < 0) {
                iVar.skip(1L);
            } else {
                while (b12 > 0) {
                    iVar.skip(b12);
                    b12 = iVar.readByte();
                }
            }
            int i14 = iVar.readShort() & HPKE.aead_EXPORT_ONLY;
            iVar.readShort();
            iVar.readInt();
            int i15 = iVar.readShort() & HPKE.aead_EXPORT_ONLY;
            if (i14 == 1 || i14 == 28) {
                byte[] bArr = new byte[i15];
                iVar.read(bArr, 0, i15);
                arrayList.add(InetAddress.getByAddress(bArr));
            } else {
                iVar.skip(i15);
            }
        }
        return arrayList;
    }
}
