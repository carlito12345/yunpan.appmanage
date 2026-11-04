package sd;

import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public String f14486a;

    /* renamed from: b, reason: collision with root package name */
    public String f14487b;

    /* renamed from: c, reason: collision with root package name */
    public int f14488c;

    /* renamed from: d, reason: collision with root package name */
    public int f14489d;

    /* renamed from: e, reason: collision with root package name */
    public final vc.f f14490e;

    public b(vc.f fVar) {
        this.f14490e = fVar;
    }

    public final boolean a() {
        return "0.0.0.0".equals(this.f14486a) && this.f14488c == 0 && this.f14487b == null;
    }

    public final int b(int i10, byte[] bArr) {
        int i11;
        byte[] bArr2 = new byte[33];
        int i12 = 15;
        for (int i13 = 0; i13 < 15; i13++) {
            int i14 = i13 * 2;
            byte b10 = (byte) (((bArr[(i14 + 1) + i10] & 255) - 65) << 4);
            bArr2[i13] = b10;
            byte b11 = (byte) (((byte) (((bArr[(i14 + 2) + i10] & 255) - 65) & 15)) | b10);
            bArr2[i13] = b11;
            if (b11 != 32) {
                i12 = i13 + 1;
            }
        }
        vc.f fVar = this.f14490e;
        this.f14486a = ge.b.c(bArr2, 0, i12, fVar);
        int i15 = ((bArr[i10 + 31] & 255) - 65) << 4;
        this.f14488c = i15;
        this.f14488c = i15 | (15 & ((bArr[i10 + 32] & 255) - 65));
        int i16 = i10 + 33;
        int i17 = i10 + 34;
        int i18 = bArr[i16] & 255;
        if (i18 == 0) {
            this.f14487b = null;
            i11 = 1;
        } else {
            StringBuffer stringBuffer = new StringBuffer(ge.b.c(bArr, i17, i18, fVar));
            while (true) {
                int i19 = i17 + i18;
                i18 = i19 + 1;
                i17 = bArr[i19] & 255;
                if (i17 == 0) {
                    break;
                }
                stringBuffer.append('.');
                stringBuffer.append(ge.b.c(bArr, i18, i17, fVar));
            }
            this.f14487b = stringBuffer.toString();
            i11 = i18 - i16;
        }
        return i11 + 33;
    }

    public final int c(int i10, byte[] bArr) {
        int length;
        bArr[i10] = HebrewProber.SPACE;
        String str = this.f14486a;
        vc.f fVar = this.f14490e;
        byte[] bArrE = ge.b.e(str, fVar);
        int i11 = 0;
        while (i11 < bArrE.length) {
            int i12 = i11 * 2;
            bArr[i12 + 1 + i10] = (byte) (((bArrE[i11] & 240) >> 4) + 65);
            bArr[i12 + 2 + i10] = (byte) ((15 & bArrE[i11]) + 65);
            i11++;
        }
        while (i11 < 15) {
            int i13 = i11 * 2;
            bArr[i13 + 1 + i10] = 67;
            bArr[i13 + 2 + i10] = 65;
            i11++;
        }
        int i14 = this.f14488c;
        bArr[i10 + 31] = (byte) (((i14 & 240) >> 4) + 65);
        bArr[i10 + 32] = (byte) ((i14 & 15) + 65);
        int i15 = i10 + 33;
        String str2 = this.f14487b;
        if (str2 == null) {
            bArr[i15] = 0;
            length = 1;
        } else {
            int i16 = i10 + 34;
            bArr[i15] = 46;
            System.arraycopy(ge.b.e(str2, fVar), 0, bArr, i16, this.f14487b.length());
            int length2 = this.f14487b.length() + i16;
            bArr[length2] = 0;
            int i17 = length2 - 1;
            int length3 = i17 - this.f14487b.length();
            int i18 = 0;
            while (true) {
                if (bArr[i17] == 46) {
                    bArr[i17] = (byte) i18;
                    i18 = 0;
                } else {
                    i18++;
                }
                int i19 = i17 - 1;
                if (i17 <= length3) {
                    break;
                }
                i17 = i19;
            }
            length = this.f14487b.length() + 2;
        }
        return length + 33;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return (this.f14487b == null && bVar.f14487b == null) ? this.f14486a.equals(bVar.f14486a) && this.f14488c == bVar.f14488c : this.f14486a.equals(bVar.f14486a) && this.f14488c == bVar.f14488c && this.f14487b.equals(bVar.f14487b);
    }

    public final int hashCode() {
        int iHashCode = (this.f14489d * 65599) + (this.f14488c * 65599) + this.f14486a.hashCode();
        String str = this.f14487b;
        return (str == null || str.length() == 0) ? iHashCode : iHashCode + this.f14487b.hashCode();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.f14486a;
        if (str == null) {
            str = "null";
        } else if (str.charAt(0) == 1) {
            char[] charArray = str.toCharArray();
            charArray[0] = '.';
            charArray[1] = '.';
            charArray[14] = '.';
            str = new String(charArray);
        }
        stringBuffer.append(str);
        stringBuffer.append("<");
        stringBuffer.append(ge.a.l(this.f14488c, 2));
        stringBuffer.append(">");
        if (this.f14487b != null) {
            stringBuffer.append(".");
            stringBuffer.append(this.f14487b);
        }
        return stringBuffer.toString();
    }

    public b(vc.f fVar, String str, int i10, String str2) {
        this.f14490e = fVar;
        this.f14486a = (str.length() > 15 ? str.substring(0, 15) : str).toUpperCase();
        this.f14488c = i10;
        this.f14487b = (str2 == null || str2.length() <= 0) ? ((wc.a) fVar).f17825a0 : str2;
        this.f14489d = 0;
    }

    public b(vc.f fVar, b bVar) {
        this.f14490e = fVar;
        this.f14486a = bVar.f14486a;
        this.f14488c = bVar.f14488c;
        this.f14487b = bVar.f14487b;
        this.f14489d = bVar.f14489d;
    }
}
