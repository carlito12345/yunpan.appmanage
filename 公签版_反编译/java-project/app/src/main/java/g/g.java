package g;

import a1.i;
import com.android.apksig.internal.apk.v4.V4Signature;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public byte f5922a;

    /* renamed from: b, reason: collision with root package name */
    public e f5923b;

    /* renamed from: c, reason: collision with root package name */
    public final i f5924c;

    /* renamed from: d, reason: collision with root package name */
    public int f5925d;

    public g(String str) {
        byte b10;
        int i10 = 0;
        while (true) {
            if (i10 >= str.length()) {
                b10 = 19;
                break;
            } else {
                if (!h(str.charAt(i10))) {
                    b10 = V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
                    break;
                }
                i10++;
            }
        }
        this.f5924c = g(b10, str);
    }

    public static byte a(boolean z, byte b10) {
        byte b11 = (byte) (b10 | Byte.MIN_VALUE);
        return z ? (byte) (b11 | HebrewProber.SPACE) : b11;
    }

    public static boolean b(g gVar, g gVar2) {
        boolean zA;
        synchronized (gVar.f5924c) {
            synchronized (gVar2.f5924c) {
                ((e) gVar.f5924c.f76b).reset();
                ((e) gVar2.f5924c.f76b).reset();
                zA = gVar.f5923b.A(gVar2.f5923b);
            }
        }
        return zA;
    }

    public static boolean h(char c7) {
        if ((c7 < 'a' || c7 > 'z') && ((c7 < 'A' || c7 > 'Z') && ((c7 < '0' || c7 > '9') && c7 != ' ' && c7 != ':' && c7 != '=' && c7 != '?'))) {
            switch (c7) {
                default:
                    switch (c7) {
                    }
                    return true;
                case '\'':
                case '(':
                case ')':
                    return true;
            }
        }
        return true;
    }

    public final void c(f fVar) throws IOException {
        fVar.write(this.f5922a);
        fVar.r(this.f5925d);
        int i10 = this.f5925d;
        if (i10 > 0) {
            byte[] bArr = new byte[i10];
            synchronized (this.f5924c) {
                try {
                    this.f5923b.reset();
                    if (this.f5923b.read(bArr) != this.f5925d) {
                        throw new IOException("short DER value read (encode)");
                    }
                    fVar.write(bArr);
                } finally {
                }
            }
        }
    }

    public final boolean d(g gVar) {
        if (this == gVar) {
            return true;
        }
        if (this.f5922a != gVar.f5922a) {
            return false;
        }
        i iVar = gVar.f5924c;
        i iVar2 = this.f5924c;
        if (iVar2 == iVar) {
            return true;
        }
        return System.identityHashCode(iVar2) > System.identityHashCode(iVar) ? b(this, gVar) : b(gVar, this);
    }

    public final String e() throws IOException {
        byte b10 = this.f5922a;
        if (b10 == 12) {
            if (b10 == 12) {
                return new String(f(), "UTF8");
            }
            throw new IOException("DerValue.getUTF8String, not UTF-8 " + ((int) this.f5922a));
        }
        if (b10 == 19) {
            if (b10 == 19) {
                return new String(f(), HTTP.ASCII);
            }
            throw new IOException("DerValue.getPrintableString, not a string " + ((int) this.f5922a));
        }
        if (b10 == 20) {
            if (b10 == 20) {
                return new String(f(), "ISO-8859-1");
            }
            throw new IOException("DerValue.getT61String, not T61 " + ((int) this.f5922a));
        }
        if (b10 == 22) {
            if (b10 == 22) {
                return new String(f(), HTTP.ASCII);
            }
            throw new IOException("DerValue.getIA5String, not IA5 " + ((int) this.f5922a));
        }
        if (b10 == 30) {
            if (b10 == 30) {
                return new String(f(), "UnicodeBigUnmarked");
            }
            throw new IOException("DerValue.getBMPString, not BMP " + ((int) this.f5922a));
        }
        if (b10 != 27) {
            return null;
        }
        if (b10 == 27) {
            return new String(f(), HTTP.ASCII);
        }
        throw new IOException("DerValue.getGeneralString, not GeneralString " + ((int) this.f5922a));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return d((g) obj);
        }
        return false;
    }

    public final byte[] f() {
        int i10 = this.f5925d;
        byte[] bArr = new byte[i10];
        synchronized (this.f5924c) {
            ((e) this.f5924c.f76b).reset();
            i iVar = this.f5924c;
            iVar.getClass();
            if (i10 != 0 && ((e) iVar.f76b).read(bArr) != i10) {
                throw new IOException("short read of DER octet string");
            }
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final i g(byte b10, String str) throws UnsupportedEncodingException {
        String str2;
        this.f5922a = b10;
        if (b10 == 12) {
            str2 = "UTF8";
        } else if (b10 == 22 || b10 == 27) {
            str2 = HTTP.ASCII;
        } else if (b10 == 30) {
            str2 = "UnicodeBigUnmarked";
        } else if (b10 != 19) {
            if (b10 != 20) {
                throw new IllegalArgumentException("Unsupported DER string type");
            }
            str2 = "ISO-8859-1";
        }
        byte[] bytes = str.getBytes(str2);
        this.f5925d = bytes.length;
        e eVar = new e(bytes);
        this.f5923b = eVar;
        i iVar = new i(eVar);
        eVar.mark(Integer.MAX_VALUE);
        return iVar;
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final byte[] i() throws IOException {
        f fVar = new f();
        c(fVar);
        ((e) this.f5924c.f76b).reset();
        return fVar.toByteArray();
    }

    public final String toString() throws IOException {
        try {
            String strE = e();
            if (strE != null) {
                return "\"" + strE + "\"";
            }
            byte b10 = this.f5922a;
            if (b10 == 5) {
                return "[DerValue, null]";
            }
            if (b10 != 6) {
                return "[DerValue, tag = " + ((int) this.f5922a) + ", length = " + this.f5925d + "]";
            }
            StringBuilder sb2 = new StringBuilder("OID.");
            if (this.f5922a == 6) {
                sb2.append(new h(this.f5923b));
                return sb2.toString();
            }
            throw new IOException("DerValue.getOID, not an OID " + ((int) this.f5922a));
        } catch (IOException unused) {
            throw new IllegalArgumentException("misformatted DER value");
        }
    }

    public g(byte b10, String str) {
        this.f5924c = g(b10, str);
    }

    public g(e eVar) throws IOException {
        this.f5922a = (byte) eVar.read();
        byte b10 = (byte) eVar.read();
        int iQ = i.q(b10 & 255, eVar);
        this.f5925d = iQ;
        if (iQ == -1) {
            e eVarR = eVar.r();
            int iAvailable = eVarR.available();
            byte[] bArr = new byte[iAvailable + 2];
            bArr[0] = this.f5922a;
            bArr[1] = b10;
            DataInputStream dataInputStream = new DataInputStream(eVarR);
            dataInputStream.readFully(bArr, 2, iAvailable);
            dataInputStream.close();
            e eVar2 = new e(new d().a(bArr));
            if (this.f5922a == eVar2.read()) {
                this.f5925d = i.q(eVar2.read(), eVar2);
                e eVarR2 = eVar2.r();
                this.f5923b = eVarR2;
                eVarR2.J(this.f5925d);
                this.f5924c = new i(this.f5923b);
                eVar.skip(this.f5925d + 2);
                return;
            }
            throw new IOException("Indefinite length encoding not supported");
        }
        e eVarR3 = eVar.r();
        this.f5923b = eVarR3;
        eVarR3.J(this.f5925d);
        this.f5924c = new i(this.f5923b);
        eVar.skip(this.f5925d);
    }

    public g(byte[] bArr) throws IOException {
        int length;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        this.f5922a = (byte) byteArrayInputStream.read();
        byte b10 = (byte) byteArrayInputStream.read();
        int iQ = i.q(b10 & 255, byteArrayInputStream);
        this.f5925d = iQ;
        int i10 = 0;
        if (iQ == -1) {
            int iAvailable = byteArrayInputStream.available();
            byte[] bArr2 = new byte[iAvailable + 2];
            bArr2[0] = this.f5922a;
            bArr2[1] = b10;
            DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
            dataInputStream.readFully(bArr2, 2, iAvailable);
            dataInputStream.close();
            byteArrayInputStream = new ByteArrayInputStream(new d().a(bArr2));
            if (this.f5922a == byteArrayInputStream.read()) {
                this.f5925d = i.q(byteArrayInputStream.read(), byteArrayInputStream);
            } else {
                throw new IOException("Indefinite length encoding not supported");
            }
        }
        int iAvailable2 = byteArrayInputStream.available();
        int i11 = this.f5925d;
        if (iAvailable2 == i11) {
            byte[] bArrCopyOf = new byte[0];
            i11 = i11 == -1 ? Integer.MAX_VALUE : i11;
            while (true) {
                if (i10 >= i11) {
                    break;
                }
                if (i10 >= bArrCopyOf.length) {
                    length = Math.min(i11 - i10, bArrCopyOf.length + 1024);
                    int i12 = i10 + length;
                    if (bArrCopyOf.length < i12) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i12);
                    }
                } else {
                    length = bArrCopyOf.length - i10;
                }
                int i13 = byteArrayInputStream.read(bArrCopyOf, i10, length);
                if (i13 >= 0) {
                    i10 += i13;
                } else if (i11 == Integer.MAX_VALUE) {
                    if (bArrCopyOf.length != i10) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i10);
                    }
                } else {
                    throw new EOFException("Detect premature EOF");
                }
            }
            e eVar = new e(bArrCopyOf);
            this.f5923b = eVar;
            this.f5924c = new i(eVar);
            return;
        }
        throw new IOException("extra data given to DerValue constructor");
    }
}
