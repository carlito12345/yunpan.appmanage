package td;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import javax.crypto.ShortBufferException;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import ud.d;
import ud.e;
import vd.k;

/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f15073d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f15074e;

    /* renamed from: f, reason: collision with root package name */
    public final String f15075f;

    /* renamed from: g, reason: collision with root package name */
    public final String f15076g;

    /* renamed from: h, reason: collision with root package name */
    public final String f15077h;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f15078i;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f15079j;

    /* renamed from: k, reason: collision with root package name */
    public byte[] f15080k;

    public c(vc.b bVar, b bVar2, String str, String str2, String str3, String str4, String str5, int i10, boolean z) throws vc.c, ShortBufferException {
        byte[] bArr;
        byte[] bArr2;
        LinkedList linkedList;
        boolean z4;
        int i11;
        byte[] bArr3;
        ud.c cVar;
        int iB;
        int i12;
        byte[] bArr4;
        ud.c cVar2;
        ud.c bVar3;
        byte[] bArr5;
        this.f15078i = null;
        this.f15079j = null;
        this.f15080k = null;
        this.f15067a = i10 | (bVar2.a(1) ? 1 : 2) | 33554944;
        this.f15077h = str5;
        this.f15075f = str3;
        this.f15076g = str4;
        if (str2 == null || (!z && str2 != null && str2.length() == 0)) {
            this.f15073d = null;
            this.f15074e = null;
            return;
        }
        byte[] bArrC = k.c(str2);
        int i13 = ((wc.a) bVar.e()).r;
        int i14 = 0;
        if (i13 == 0 || i13 == 1) {
            if (!a(PKIFailureInfo.signerNotTrusted)) {
                this.f15073d = str2 == null ? null : k.d(bVar, str2, bVar2.f15069d);
                if (bArrC == null) {
                    bArr = null;
                } else {
                    byte[] bArr6 = bVar2.f15069d;
                    byte[] bArr7 = new byte[21];
                    bArr = new byte[24];
                    System.arraycopy(bArrC, 0, bArr7, 0, 16);
                    k.a(bArr7, bArr6, bArr);
                }
                this.f15074e = bArr;
                return;
            }
            byte[] bArr8 = new byte[24];
            ((wc.a) bVar.e()).f17828c.nextBytes(bArr8);
            Arrays.fill(bArr8, 8, 24, (byte) 0);
            byte[] bArr9 = bVar2.f15069d;
            byte[] bArr10 = new byte[8];
            MessageDigest messageDigestK = ge.a.k();
            messageDigestK.update(bArr9);
            messageDigestK.update(bArr8, 0, 8);
            System.arraycopy(messageDigestK.digest(), 0, bArr10, 0, 8);
            byte[] bArr11 = new byte[21];
            System.arraycopy(bArrC, 0, bArr11, 0, 16);
            byte[] bArr12 = new byte[24];
            k.a(bArr11, bArr10, bArr12);
            this.f15073d = bArr8;
            this.f15074e = bArr12;
            byte[] bArr13 = new byte[16];
            System.arraycopy(bVar2.f15069d, 0, bArr13, 0, 8);
            System.arraycopy(bArr8, 0, bArr13, 8, 8);
            MessageDigest messageDigestJ = ge.a.j();
            messageDigestJ.update(bArrC);
            de.b bVar4 = new de.b(messageDigestJ.digest(), 1);
            bVar4.update(bArr13);
            byte[] bArrDigest = bVar4.digest();
            if (!a(1073741824)) {
                this.f15078i = bArrDigest;
                return;
            }
            byte[] bArr14 = new byte[16];
            this.f15078i = bArr14;
            ((wc.a) bVar.e()).f17828c.nextBytes(bArr14);
            byte[] bArr15 = new byte[16];
            ge.a.h(bArrDigest).update(bArr14, 0, 16, bArr15, 0);
            this.f15079j = bArr15;
            return;
        }
        if (i13 == 2) {
            if (bArrC == null) {
                bArr2 = null;
            } else {
                byte[] bArr16 = bVar2.f15069d;
                byte[] bArr17 = new byte[21];
                bArr2 = new byte[24];
                System.arraycopy(bArrC, 0, bArr17, 0, 16);
                k.a(bArr17, bArr16, bArr2);
            }
            this.f15073d = bArr2;
            this.f15074e = bArr2;
            return;
        }
        if (i13 != 3 && i13 != 4 && i13 != 5) {
            this.f15073d = str2 == null ? null : k.d(bVar, str2, bVar2.f15069d);
            if (bArrC == null) {
                bArr5 = null;
            } else {
                byte[] bArr18 = bVar2.f15069d;
                byte[] bArr19 = new byte[21];
                bArr5 = new byte[24];
                System.arraycopy(bArrC, 0, bArr19, 0, 16);
                k.a(bArr19, bArr18, bArr5);
            }
            this.f15074e = bArr5;
            return;
        }
        byte[] bArr20 = bVar2.f15072g;
        if (bArr20 != null) {
            linkedList = new LinkedList();
            int i15 = 0;
            while (true) {
                int i16 = i15 + 4;
                if (i16 > bArr20.length) {
                    throw new vc.c("Missing AvEOL");
                }
                int iA = rd.a.a(i15, bArr20);
                int iA2 = rd.a.a(i15 + 2, bArr20);
                if (iA != 0) {
                    byte[] bArr21 = new byte[iA2];
                    System.arraycopy(bArr20, i16, bArr21, i14, iA2);
                    switch (iA) {
                        case 6:
                            bVar3 = new ud.b(bArr21);
                            break;
                        case 7:
                            bVar3 = new e(bArr21);
                            break;
                        case 8:
                            bVar3 = new ud.a(bArr21, 1);
                            break;
                        case 9:
                            bVar3 = new d(bArr21);
                            break;
                        case 10:
                            bVar3 = new ud.a(bArr21, 0);
                            break;
                        default:
                            bVar3 = new ud.c(iA, bArr21);
                            break;
                    }
                    linkedList.add(bVar3);
                    i15 = iA2 + i16;
                    i14 = 0;
                } else if (iA2 != 0) {
                    throw new vc.c("Invalid avLen for AvEOL");
                }
            }
        } else {
            linkedList = null;
        }
        if (linkedList == null) {
            z4 = false;
        } else {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                if (((ud.c) it.next()).f16104a == 7) {
                    z4 = true;
                }
            }
            z4 = false;
        }
        if (z4) {
            this.f15073d = new byte[24];
        } else {
            byte[] bArr22 = new byte[8];
            ((wc.a) bVar.e()).f17828c.nextBytes(bArr22);
            this.f15073d = (str3 == null || str4 == null || bArrC == null) ? null : k.b(str3, str4, bArrC, bVar2.f15069d, bArr22);
        }
        if (linkedList != null) {
            this.f15067a |= 8388608;
        }
        de.b bVar5 = new de.b(bArrC, 1);
        String upperCase = str4.toUpperCase();
        Charset charset = ge.b.f6136b;
        bVar5.update(ge.b.d(upperCase, charset));
        bVar5.update(ge.b.d(str3, charset));
        byte[] bArrDigest2 = bVar5.digest();
        byte[] bArr23 = new byte[8];
        ((wc.a) bVar.e()).f17828c.nextBytes(bArr23);
        long jCurrentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
        if (z4) {
            Iterator it2 = linkedList.iterator();
            while (true) {
                if (it2.hasNext()) {
                    cVar2 = (ud.c) it2.next();
                    if (cVar2.f16104a == 7) {
                    }
                } else {
                    cVar2 = null;
                }
            }
            jCurrentTimeMillis = rd.a.c(0, ((e) cVar2).f16105b);
        }
        if (((wc.a) bVar.e()).f17861u || linkedList != null) {
            linkedList = linkedList == null ? new LinkedList() : linkedList;
            if (!a(16) || (!((wc.a) bVar.e()).f17861u && (!z4 || ((wc.a) bVar.e()).f17859t))) {
                i11 = 0;
            } else {
                this.f15080k = new byte[16];
                Iterator it3 = linkedList.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        cVar = (ud.c) it3.next();
                        if (cVar.f16104a == 6) {
                        }
                    } else {
                        cVar = null;
                    }
                }
                ud.b bVar6 = (ud.b) cVar;
                if (bVar6 != null) {
                    byte[] bArr24 = bVar6.f16105b;
                    i11 = 0;
                    iB = rd.a.b(0, bArr24);
                } else {
                    i11 = 0;
                    iB = 0;
                }
                byte[] bArr25 = new byte[4];
                rd.a.f(iB | 2, bArr25, i11);
                android.support.v4.media.session.b.C(linkedList, new ud.b(bArr25));
            }
            byte[] bArr26 = new byte[8];
            rd.a.g(jCurrentTimeMillis, bArr26, i11);
            android.support.v4.media.session.b.C(linkedList, new e(bArr26));
            if (str != null) {
                android.support.v4.media.session.b.C(linkedList, new d(str.getBytes(d.f16106c)));
            }
            android.support.v4.media.session.b.C(linkedList, new ud.c(10, new byte[16]));
            byte[] bArr27 = ((wc.a) bVar.e()).f17862u0;
            byte[] bArr28 = new byte[48];
            LinkedList linkedList2 = linkedList;
            rd.a.f(48, bArr28, 0);
            long j10 = 0;
            rd.a.f(0L, bArr28, 4);
            System.arraycopy(new byte[8], 0, bArr28, 8, 8);
            System.arraycopy(bArr27, 0, bArr28, 16, 32);
            android.support.v4.media.session.b.C(linkedList2, new ud.a(bArr28, 1));
            Iterator it4 = linkedList2.iterator();
            int length = 0;
            while (it4.hasNext()) {
                length += ((ud.c) it4.next()).f16105b.length + 4;
            }
            bArr3 = new byte[length + 4];
            Iterator it5 = linkedList2.iterator();
            int length2 = 0;
            while (it5.hasNext()) {
                byte[] bArr29 = ((ud.c) it5.next()).f16105b;
                rd.a.e(r13.f16104a, bArr3, length2);
                rd.a.e(bArr29.length, bArr3, length2 + 2);
                System.arraycopy(bArr29, 0, bArr3, length2 + 4, bArr29.length);
                length2 += bArr29.length + 4;
                j10 = 0;
            }
            rd.a.e(j10, bArr3, length2);
            rd.a.e(j10, bArr3, length2 + 2);
        } else {
            bArr3 = null;
        }
        if (bArrDigest2 != null) {
            byte[] bArr30 = bVar2.f15069d;
            int length3 = bArr3 != null ? bArr3.length : 0;
            int i17 = length3 + 28;
            int i18 = length3 + 32;
            byte[] bArr31 = new byte[i18];
            ge.a.g(257, 0, bArr31);
            ge.a.g(0, 4, bArr31);
            ge.a.g((int) (jCurrentTimeMillis & 4294967295L), 8, bArr31);
            ge.a.g((int) ((jCurrentTimeMillis >> 32) & 4294967295L), 12, bArr31);
            i12 = 0;
            System.arraycopy(bArr23, 0, bArr31, 16, 8);
            ge.a.g(0, 24, bArr31);
            if (bArr3 != null) {
                System.arraycopy(bArr3, 0, bArr31, 28, length3);
            }
            ge.a.g(0, i17, bArr31);
            de.b bVar7 = new de.b(bArrDigest2, 1);
            bVar7.update(bArr30);
            bVar7.update(bArr31, 0, i18);
            byte[] bArrDigest3 = bVar7.digest();
            bArr4 = new byte[bArrDigest3.length + i18];
            System.arraycopy(bArrDigest3, 0, bArr4, 0, bArrDigest3.length);
            System.arraycopy(bArr31, 0, bArr4, bArrDigest3.length, i18);
        } else {
            i12 = 0;
            bArr4 = null;
        }
        this.f15074e = bArr4;
        de.b bVar8 = new de.b(bArrDigest2, 1);
        bVar8.update(this.f15074e, i12, 16);
        byte[] bArrDigest4 = bVar8.digest();
        if (!a(1073741824)) {
            this.f15078i = bArrDigest4;
            return;
        }
        byte[] bArr32 = new byte[16];
        this.f15078i = bArr32;
        ((wc.a) bVar.e()).f17828c.nextBytes(bArr32);
        byte[] bArr33 = new byte[16];
        ge.a.h(bArrDigest4).update(bArr32, 0, 16, bArr33, 0);
        this.f15079j = bArr33;
    }

    public final void g(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.f15078i;
        if (bArr3 == null) {
            return;
        }
        de.b bVar = new de.b(bArr3, 1);
        bVar.update(bArr);
        bVar.update(bArr2);
        bVar.update(h());
        this.f15080k = bVar.digest();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] h() {
        byte[] bytes;
        int length;
        byte[] bytes2;
        int i10;
        int i11;
        int i12;
        boolean zA = a(1);
        byte[] bytes3 = null;
        String str = zA ? null : "Cp850";
        String str2 = this.f15075f;
        if (str2 == null || str2.length() == 0) {
            bytes = null;
            length = 64;
        } else {
            bytes = zA ? str2.getBytes("UTF-16LE") : str2.getBytes(str);
            length = bytes.length + 64;
        }
        String str3 = this.f15076g;
        if (str3 == null || str3.length() == 0) {
            bytes2 = null;
        } else {
            bytes2 = zA ? str3.getBytes("UTF-16LE") : str3.toUpperCase().getBytes(str);
            length += bytes2.length;
        }
        String str4 = this.f15077h;
        if (str4 != null && str4.length() != 0) {
            bytes3 = zA ? str4.getBytes("UTF-16LE") : str4.toUpperCase().getBytes(str);
            length += bytes3.length;
        }
        byte[] bArr = this.f15080k;
        if (bArr != null) {
            length += 24;
        } else if (a(33554432)) {
            length += 8;
        }
        byte[] bArr2 = this.f15073d;
        int length2 = length + (bArr2 != null ? bArr2.length : 0);
        byte[] bArr3 = this.f15074e;
        int length3 = length2 + (bArr3 != null ? bArr3.length : 0);
        byte[] bArr4 = this.f15079j;
        byte[] bArr5 = new byte[length3 + (bArr4 != null ? bArr4.length : 0)];
        System.arraycopy(a.f15065b, 0, bArr5, 0, 8);
        a.f(8, 3, bArr5);
        int iD = a.d(12, bArr5, bArr2);
        int iD2 = a.d(20, bArr5, bArr3);
        int iD3 = a.d(28, bArr5, bytes);
        int iD4 = a.d(36, bArr5, bytes2);
        int iD5 = a.d(44, bArr5, bytes3);
        int iD6 = a.d(52, bArr5, bArr4);
        a.f(60, this.f15067a, bArr5);
        if (!a(33554432)) {
            i10 = iD6;
            i11 = 0;
            i12 = 64;
            if (bArr != null) {
            }
            if (bArr != null) {
                System.arraycopy(bArr, i11, bArr5, i12, 16);
                i12 += 16;
            }
            int iE = a.e(i12, iD, bArr5, bArr2) + i12;
            int iE2 = a.e(iE, iD2, bArr5, bArr3) + iE;
            int iE3 = a.e(iE2, iD3, bArr5, bytes) + iE2;
            int iE4 = a.e(iE3, iD4, bArr5, bytes2) + iE3;
            a.e(a.e(iE4, iD5, bArr5, bytes3) + iE4, i10, bArr5, bArr4);
            return bArr5;
        }
        i10 = iD6;
        i11 = 0;
        System.arraycopy(a.f15066c, 0, bArr5, 64, 8);
        i12 = 72;
        if (bArr != null) {
        }
        int iE5 = a.e(i12, iD, bArr5, bArr2) + i12;
        int iE22 = a.e(iE5, iD2, bArr5, bArr3) + iE5;
        int iE32 = a.e(iE22, iD3, bArr5, bytes) + iE22;
        int iE42 = a.e(iE32, iD4, bArr5, bytes2) + iE32;
        a.e(a.e(iE42, iD5, bArr5, bytes3) + iE42, i10, bArr5, bArr4);
        return bArr5;
    }

    public final String toString() {
        String str = this.f15076g;
        String str2 = this.f15075f;
        String str3 = this.f15077h;
        byte[] bArr = this.f15073d;
        byte[] bArr2 = this.f15074e;
        byte[] bArr3 = this.f15079j;
        StringBuilder sb2 = new StringBuilder("Type3Message[domain=");
        sb2.append(str2);
        sb2.append(",user=");
        sb2.append(str);
        sb2.append(",workstation=");
        sb2.append(str3);
        sb2.append(",lmResponse=");
        sb2.append(bArr == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr.length, " bytes>"));
        sb2.append(",ntResponse=");
        sb2.append(bArr2 == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr2.length, " bytes>"));
        sb2.append(",sessionKey=");
        sb2.append(bArr3 != null ? android.support.v4.media.session.a.s(new StringBuilder("<"), bArr3.length, " bytes>") : "null");
        sb2.append(",flags=0x");
        sb2.append(ge.a.l(this.f15067a, 8));
        sb2.append("]");
        return sb2.toString();
    }
}
