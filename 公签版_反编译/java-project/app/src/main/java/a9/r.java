package a9;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: g, reason: collision with root package name */
    public static final byte[] f516g;

    /* renamed from: c, reason: collision with root package name */
    public final m7.e f519c;

    /* renamed from: a, reason: collision with root package name */
    public int f517a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f518b = "no comment";

    /* renamed from: d, reason: collision with root package name */
    public boolean f520d = false;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f521e = null;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f522f = null;

    static {
        byte[] bArr = h0.f503a;
        Charset charset = StandardCharsets.UTF_8;
        f516g = "openssh-key-v1\u0000".getBytes(charset);
        h0.j(SignParameters.NEW_LINE);
        "Proc-Type: 4,ENCRYPTED".getBytes(charset);
        "DEK-Info: DES-EDE3-CBC,".getBytes(charset);
        h0.j(" ");
    }

    public r(m7.e eVar) {
        this.f519c = eVar;
    }

    public static int b(int i10) {
        int i11 = 1;
        if (i10 <= 127) {
            return 1;
        }
        while (i10 > 0) {
            i10 >>>= 8;
            i11++;
        }
        return i11;
    }

    public static boolean i(int i10, int i11, byte[] bArr) {
        int i12 = i10 + 24;
        return i12 < i11 && "OPENSSH PRIVATE KEY-----".equals(h0.c(Arrays.copyOfRange(bArr, i10, i12)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x018f A[Catch: NoClassDefFoundError -> 0x00ad, Exception -> 0x00b1, TryCatch #7 {Exception -> 0x00b1, NoClassDefFoundError -> 0x00ad, blocks: (B:44:0x00a6, B:52:0x00b5, B:57:0x00bd, B:59:0x00c1, B:61:0x00c5, B:63:0x00cb, B:65:0x00d1, B:67:0x00d7, B:74:0x00e7, B:76:0x00f3, B:78:0x00f7, B:80:0x00fd, B:82:0x0105, B:84:0x010b, B:86:0x0111, B:88:0x0117, B:90:0x011d, B:150:0x01dd, B:95:0x0129, B:97:0x012f, B:101:0x0139, B:105:0x0147, B:107:0x014d, B:110:0x0158, B:113:0x0160, B:115:0x0166, B:117:0x016c, B:119:0x0174, B:121:0x017a, B:123:0x0182, B:126:0x018f, B:130:0x0197, B:132:0x019f, B:134:0x01a5, B:136:0x01ab, B:138:0x01b3, B:140:0x01bb, B:142:0x01c1, B:144:0x01c9, B:147:0x01d4, B:152:0x01ea, B:153:0x01ef, B:154:0x01f0, B:155:0x01f5, B:157:0x01f8, B:159:0x01fc, B:161:0x0204, B:163:0x020a, B:165:0x0212, B:167:0x021a, B:169:0x0222, B:171:0x022a, B:174:0x0231, B:175:0x0241, B:178:0x0246, B:180:0x024a, B:182:0x0252, B:184:0x0258, B:186:0x0260, B:188:0x0268, B:190:0x026e, B:192:0x0276, B:195:0x027d, B:196:0x028d, B:198:0x0290, B:200:0x0294, B:202:0x029c, B:204:0x02a2, B:206:0x02aa, B:208:0x02b2, B:210:0x02ba, B:212:0x02c2, B:215:0x02cb, B:216:0x02db, B:218:0x02de, B:220:0x02e2, B:222:0x02ea, B:224:0x02f2, B:226:0x02f8, B:229:0x02ff, B:232:0x0309, B:233:0x030b, B:235:0x0311, B:238:0x031e, B:239:0x0320, B:241:0x0325, B:240:0x0322, B:234:0x030e, B:244:0x0332, B:246:0x0337, B:251:0x0344, B:253:0x0349, B:255:0x034d, B:258:0x0354, B:260:0x0359, B:262:0x035f, B:264:0x0363, B:266:0x0366, B:272:0x0373, B:276:0x037c, B:281:0x0387, B:284:0x038e, B:285:0x0391, B:287:0x0394, B:289:0x0397, B:291:0x03a0, B:294:0x03a8, B:298:0x03b3, B:300:0x03be, B:301:0x03c2, B:305:0x03ca, B:307:0x03cf, B:316:0x03e1, B:317:0x03e6, B:318:0x03e7, B:319:0x03ec), top: B:563:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01d4 A[Catch: NoClassDefFoundError -> 0x00ad, Exception -> 0x00b1, TryCatch #7 {Exception -> 0x00b1, NoClassDefFoundError -> 0x00ad, blocks: (B:44:0x00a6, B:52:0x00b5, B:57:0x00bd, B:59:0x00c1, B:61:0x00c5, B:63:0x00cb, B:65:0x00d1, B:67:0x00d7, B:74:0x00e7, B:76:0x00f3, B:78:0x00f7, B:80:0x00fd, B:82:0x0105, B:84:0x010b, B:86:0x0111, B:88:0x0117, B:90:0x011d, B:150:0x01dd, B:95:0x0129, B:97:0x012f, B:101:0x0139, B:105:0x0147, B:107:0x014d, B:110:0x0158, B:113:0x0160, B:115:0x0166, B:117:0x016c, B:119:0x0174, B:121:0x017a, B:123:0x0182, B:126:0x018f, B:130:0x0197, B:132:0x019f, B:134:0x01a5, B:136:0x01ab, B:138:0x01b3, B:140:0x01bb, B:142:0x01c1, B:144:0x01c9, B:147:0x01d4, B:152:0x01ea, B:153:0x01ef, B:154:0x01f0, B:155:0x01f5, B:157:0x01f8, B:159:0x01fc, B:161:0x0204, B:163:0x020a, B:165:0x0212, B:167:0x021a, B:169:0x0222, B:171:0x022a, B:174:0x0231, B:175:0x0241, B:178:0x0246, B:180:0x024a, B:182:0x0252, B:184:0x0258, B:186:0x0260, B:188:0x0268, B:190:0x026e, B:192:0x0276, B:195:0x027d, B:196:0x028d, B:198:0x0290, B:200:0x0294, B:202:0x029c, B:204:0x02a2, B:206:0x02aa, B:208:0x02b2, B:210:0x02ba, B:212:0x02c2, B:215:0x02cb, B:216:0x02db, B:218:0x02de, B:220:0x02e2, B:222:0x02ea, B:224:0x02f2, B:226:0x02f8, B:229:0x02ff, B:232:0x0309, B:233:0x030b, B:235:0x0311, B:238:0x031e, B:239:0x0320, B:241:0x0325, B:240:0x0322, B:234:0x030e, B:244:0x0332, B:246:0x0337, B:251:0x0344, B:253:0x0349, B:255:0x034d, B:258:0x0354, B:260:0x0359, B:262:0x035f, B:264:0x0363, B:266:0x0366, B:272:0x0373, B:276:0x037c, B:281:0x0387, B:284:0x038e, B:285:0x0391, B:287:0x0394, B:289:0x0397, B:291:0x03a0, B:294:0x03a8, B:298:0x03b3, B:300:0x03be, B:301:0x03c2, B:305:0x03ca, B:307:0x03cf, B:316:0x03e1, B:317:0x03e6, B:318:0x03e7, B:319:0x03ec), top: B:563:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x03f1 A[Catch: NoClassDefFoundError -> 0x03db, Exception -> 0x03df, TRY_ENTER, TryCatch #0 {Exception -> 0x03df, blocks: (B:310:0x03d6, B:322:0x03f1, B:325:0x03f8, B:327:0x03fb, B:329:0x0402, B:331:0x0409, B:333:0x040f, B:335:0x0416, B:337:0x0434, B:339:0x043c, B:523:0x0640, B:542:0x067c, B:544:0x0686, B:545:0x068c, B:547:0x0692, B:548:0x0696, B:549:0x069b, B:526:0x0649, B:529:0x0652, B:532:0x065b, B:536:0x0667, B:539:0x0673, B:520:0x0633, B:340:0x044e, B:341:0x0469, B:342:0x046a), top: B:558:0x03d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0630  */
    /* JADX WARN: Removed duplicated region for block: B:523:0x0640 A[Catch: NoClassDefFoundError -> 0x03db, Exception -> 0x03df, TryCatch #0 {Exception -> 0x03df, blocks: (B:310:0x03d6, B:322:0x03f1, B:325:0x03f8, B:327:0x03fb, B:329:0x0402, B:331:0x0409, B:333:0x040f, B:335:0x0416, B:337:0x0434, B:339:0x043c, B:523:0x0640, B:542:0x067c, B:544:0x0686, B:545:0x068c, B:547:0x0692, B:548:0x0696, B:549:0x069b, B:526:0x0649, B:529:0x0652, B:532:0x065b, B:536:0x0667, B:539:0x0673, B:520:0x0633, B:340:0x044e, B:341:0x0469, B:342:0x046a), top: B:558:0x03d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b5 A[Catch: NoClassDefFoundError -> 0x00ad, Exception -> 0x00b1, TryCatch #7 {Exception -> 0x00b1, NoClassDefFoundError -> 0x00ad, blocks: (B:44:0x00a6, B:52:0x00b5, B:57:0x00bd, B:59:0x00c1, B:61:0x00c5, B:63:0x00cb, B:65:0x00d1, B:67:0x00d7, B:74:0x00e7, B:76:0x00f3, B:78:0x00f7, B:80:0x00fd, B:82:0x0105, B:84:0x010b, B:86:0x0111, B:88:0x0117, B:90:0x011d, B:150:0x01dd, B:95:0x0129, B:97:0x012f, B:101:0x0139, B:105:0x0147, B:107:0x014d, B:110:0x0158, B:113:0x0160, B:115:0x0166, B:117:0x016c, B:119:0x0174, B:121:0x017a, B:123:0x0182, B:126:0x018f, B:130:0x0197, B:132:0x019f, B:134:0x01a5, B:136:0x01ab, B:138:0x01b3, B:140:0x01bb, B:142:0x01c1, B:144:0x01c9, B:147:0x01d4, B:152:0x01ea, B:153:0x01ef, B:154:0x01f0, B:155:0x01f5, B:157:0x01f8, B:159:0x01fc, B:161:0x0204, B:163:0x020a, B:165:0x0212, B:167:0x021a, B:169:0x0222, B:171:0x022a, B:174:0x0231, B:175:0x0241, B:178:0x0246, B:180:0x024a, B:182:0x0252, B:184:0x0258, B:186:0x0260, B:188:0x0268, B:190:0x026e, B:192:0x0276, B:195:0x027d, B:196:0x028d, B:198:0x0290, B:200:0x0294, B:202:0x029c, B:204:0x02a2, B:206:0x02aa, B:208:0x02b2, B:210:0x02ba, B:212:0x02c2, B:215:0x02cb, B:216:0x02db, B:218:0x02de, B:220:0x02e2, B:222:0x02ea, B:224:0x02f2, B:226:0x02f8, B:229:0x02ff, B:232:0x0309, B:233:0x030b, B:235:0x0311, B:238:0x031e, B:239:0x0320, B:241:0x0325, B:240:0x0322, B:234:0x030e, B:244:0x0332, B:246:0x0337, B:251:0x0344, B:253:0x0349, B:255:0x034d, B:258:0x0354, B:260:0x0359, B:262:0x035f, B:264:0x0363, B:266:0x0366, B:272:0x0373, B:276:0x037c, B:281:0x0387, B:284:0x038e, B:285:0x0391, B:287:0x0394, B:289:0x0397, B:291:0x03a0, B:294:0x03a8, B:298:0x03b3, B:300:0x03be, B:301:0x03c2, B:305:0x03ca, B:307:0x03cf, B:316:0x03e1, B:317:0x03e6, B:318:0x03e7, B:319:0x03ec), top: B:563:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x067c A[Catch: NoClassDefFoundError -> 0x03db, Exception -> 0x03df, TryCatch #0 {Exception -> 0x03df, blocks: (B:310:0x03d6, B:322:0x03f1, B:325:0x03f8, B:327:0x03fb, B:329:0x0402, B:331:0x0409, B:333:0x040f, B:335:0x0416, B:337:0x0434, B:339:0x043c, B:523:0x0640, B:542:0x067c, B:544:0x0686, B:545:0x068c, B:547:0x0692, B:548:0x0696, B:549:0x069b, B:526:0x0649, B:529:0x0652, B:532:0x065b, B:536:0x0667, B:539:0x0673, B:520:0x0633, B:340:0x044e, B:341:0x0469, B:342:0x046a), top: B:558:0x03d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:552:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:554:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:575:0x0380 A[EDGE_INSN: B:575:0x0380->B:277:0x0380 BREAK  A[LOOP:1: B:72:0x00e3->B:151:0x01df], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e7 A[Catch: NoClassDefFoundError -> 0x00ad, Exception -> 0x00b1, TRY_ENTER, TryCatch #7 {Exception -> 0x00b1, NoClassDefFoundError -> 0x00ad, blocks: (B:44:0x00a6, B:52:0x00b5, B:57:0x00bd, B:59:0x00c1, B:61:0x00c5, B:63:0x00cb, B:65:0x00d1, B:67:0x00d7, B:74:0x00e7, B:76:0x00f3, B:78:0x00f7, B:80:0x00fd, B:82:0x0105, B:84:0x010b, B:86:0x0111, B:88:0x0117, B:90:0x011d, B:150:0x01dd, B:95:0x0129, B:97:0x012f, B:101:0x0139, B:105:0x0147, B:107:0x014d, B:110:0x0158, B:113:0x0160, B:115:0x0166, B:117:0x016c, B:119:0x0174, B:121:0x017a, B:123:0x0182, B:126:0x018f, B:130:0x0197, B:132:0x019f, B:134:0x01a5, B:136:0x01ab, B:138:0x01b3, B:140:0x01bb, B:142:0x01c1, B:144:0x01c9, B:147:0x01d4, B:152:0x01ea, B:153:0x01ef, B:154:0x01f0, B:155:0x01f5, B:157:0x01f8, B:159:0x01fc, B:161:0x0204, B:163:0x020a, B:165:0x0212, B:167:0x021a, B:169:0x0222, B:171:0x022a, B:174:0x0231, B:175:0x0241, B:178:0x0246, B:180:0x024a, B:182:0x0252, B:184:0x0258, B:186:0x0260, B:188:0x0268, B:190:0x026e, B:192:0x0276, B:195:0x027d, B:196:0x028d, B:198:0x0290, B:200:0x0294, B:202:0x029c, B:204:0x02a2, B:206:0x02aa, B:208:0x02b2, B:210:0x02ba, B:212:0x02c2, B:215:0x02cb, B:216:0x02db, B:218:0x02de, B:220:0x02e2, B:222:0x02ea, B:224:0x02f2, B:226:0x02f8, B:229:0x02ff, B:232:0x0309, B:233:0x030b, B:235:0x0311, B:238:0x031e, B:239:0x0320, B:241:0x0325, B:240:0x0322, B:234:0x030e, B:244:0x0332, B:246:0x0337, B:251:0x0344, B:253:0x0349, B:255:0x034d, B:258:0x0354, B:260:0x0359, B:262:0x035f, B:264:0x0363, B:266:0x0366, B:272:0x0373, B:276:0x037c, B:281:0x0387, B:284:0x038e, B:285:0x0391, B:287:0x0394, B:289:0x0397, B:291:0x03a0, B:294:0x03a8, B:298:0x03b3, B:300:0x03be, B:301:0x03c2, B:305:0x03ca, B:307:0x03cf, B:316:0x03e1, B:317:0x03e6, B:318:0x03e7, B:319:0x03ec), top: B:563:0x00a6 }] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static r j(m7.e eVar, byte[] bArr, byte[] bArr2) throws Throwable {
        byte[] bArr3;
        int length;
        int i10;
        int i11;
        int i12;
        byte[] bArrG;
        boolean z;
        byte[] bArrG2;
        char c7;
        int length2;
        char c10;
        byte b10;
        byte[] bArr4;
        r wVar;
        u uVar;
        int i13;
        int i14;
        byte b11;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        byte b12;
        byte[] length3 = new byte[8];
        if (bArr2 == null && bArr != null && bArr.length > 11 && bArr[0] == 0 && bArr[1] == 0 && bArr[2] == 0 && ((b12 = bArr[3]) == 7 || b12 == 9 || b12 == 11 || b12 == 19)) {
            a aVar = new a(bArr);
            aVar.r(bArr.length);
            String strC = h0.c(aVar.l());
            aVar.q();
            if (strC.equals("ssh-rsa")) {
                return x.s(eVar, aVar);
            }
            if (strC.equals("ssh-dss")) {
                return s.s(eVar, aVar);
            }
            if (strC.equals("ecdsa-sha2-nistp256") || strC.equals("ecdsa-sha2-nistp384") || strC.equals("ecdsa-sha2-nistp521")) {
                return t.t(eVar, aVar);
            }
            if (strC.equals("ssh-ed25519")) {
                return u.s(eVar, aVar);
            }
            if (strC.equals("ssh-ed448")) {
                return u.t(eVar, aVar);
            }
            throw new n("privatekey: invalid key ".concat(strC));
        }
        if (bArr != null) {
            try {
                r rVarL = l(eVar, bArr);
                if (rVarL != null) {
                    return rVarL;
                }
                length = bArr == null ? bArr.length : 0;
                i10 = 0;
                while (i10 < length && (bArr[i10] != 45 || (i22 = i10 + 4) >= length || bArr[i10 + 1] != 45 || bArr[i10 + 2] != 45 || bArr[i10 + 3] != 45 || bArr[i22] != 45)) {
                    i10++;
                }
                char c11 = 0;
                i11 = 0;
                boolean z4 = true;
                loop1: while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    byte b13 = bArr[i10];
                    if (b13 == 66 && (i21 = i10 + 3) < length && bArr[i10 + 1] == 69 && bArr[i10 + 2] == 71 && bArr[i21] == 73) {
                        int i23 = i10 + 6;
                        int i24 = i10 + 8;
                        if (i24 >= length) {
                            throw new n("invalid privatekey");
                        }
                        byte b14 = bArr[i23];
                        if (b14 == 68 && bArr[i10 + 7] == 83 && bArr[i24] == 65) {
                            c11 = 1;
                        } else if (b14 == 82 && bArr[i10 + 7] == 83 && bArr[i24] == 65) {
                            c11 = 2;
                        } else if (b14 == 69 && bArr[i10 + 7] == 67) {
                            c11 = 3;
                        } else if (b14 == 83 && bArr[i10 + 7] == 83 && bArr[i24] == 72) {
                            c11 = 4;
                            i11 = 1;
                        } else {
                            int i25 = i10 + 12;
                            if (i25 < length && b14 == 80 && bArr[i10 + 7] == 82 && bArr[i24] == 73) {
                                int i26 = i10 + 9;
                                if (bArr[i26] == 86 && bArr[i10 + 10] == 65 && bArr[i10 + 11] == 84 && bArr[i25] == 69) {
                                    i23 = i26;
                                    c11 = 4;
                                    i11 = 3;
                                    z4 = false;
                                }
                            } else {
                                int i27 = i10 + 14;
                                if (i27 < length && b14 == 69 && bArr[i10 + 7] == 78 && bArr[i24] == 67 && bArr[i10 + 9] == 82 && bArr[i10 + 10] == 89) {
                                    int i28 = i10 + 11;
                                    if (bArr[i28] == 80 && bArr[i25] == 84 && bArr[i10 + 13] == 69 && bArr[i27] == 68) {
                                        i23 = i28;
                                        c11 = 4;
                                        i11 = 3;
                                    }
                                } else {
                                    if (!i(i23, length, bArr)) {
                                        throw new n("invalid privatekey");
                                    }
                                    c11 = 4;
                                    i11 = 4;
                                }
                            }
                        }
                        i10 = i23 + 3;
                    } else {
                        if (b13 == 65 && (i20 = i10 + 7) < length && bArr[i10 + 1] == 69 && bArr[i10 + 2] == 83 && bArr[i10 + 3] == 45 && bArr[i10 + 4] == 50 && bArr[i10 + 5] == 53 && bArr[i10 + 6] == 54 && bArr[i20] == 45) {
                            f0.a(l.b("aes256-cbc"));
                            throw new n("privatekey: aes256-cbc is not available");
                        }
                        if (b13 == 65 && (i19 = i10 + 7) < length && bArr[i10 + 1] == 69 && bArr[i10 + 2] == 83 && bArr[i10 + 3] == 45 && bArr[i10 + 4] == 49 && bArr[i10 + 5] == 57 && bArr[i10 + 6] == 50 && bArr[i19] == 45) {
                            f0.a(l.b("aes192-cbc"));
                            throw new n("privatekey: aes192-cbc is not available");
                        }
                        if (b13 == 65 && (i18 = i10 + 7) < length && bArr[i10 + 1] == 69 && bArr[i10 + 2] == 83 && bArr[i10 + 3] == 45 && bArr[i10 + 4] == 49 && bArr[i10 + 5] == 50 && bArr[i10 + 6] == 56 && bArr[i18] == 45) {
                            f0.a(l.b("aes128-cbc"));
                            throw new n("privatekey: aes128-cbc is not available");
                        }
                        if (b13 == 67 && (i17 = i10 + 3) < length && bArr[i10 + 1] == 66 && bArr[i10 + 2] == 67 && bArr[i17] == 44) {
                            i10 += 4;
                            for (int i29 = 0; i29 < 8; i29++) {
                                int i30 = i10 + 1;
                                byte b15 = bArr[i10];
                                int i31 = (((byte) ((48 > b15 || b15 > 57) ? b15 - 87 : b15 - 48)) << 4) & 240;
                                i10 += 2;
                                byte b16 = bArr[i30];
                                length3[i29] = (byte) (i31 + (((byte) ((48 > b16 || b16 > 57) ? b16 - 87 : b16 - 48)) & 15));
                            }
                        } else if (b13 == 13 && (i16 = i10 + 1) < bArr.length && bArr[i16] == 10) {
                            i10 = i16;
                        } else {
                            if (b13 == 10 && (i14 = i10 + 1) < bArr.length) {
                                byte b17 = bArr[i14];
                                if (b17 != 10) {
                                    if (b17 != 13 || (i15 = i10 + 2) >= bArr.length || bArr[i15] != 10) {
                                        for (int i32 = i14; i32 < bArr.length && (b11 = bArr[i32]) != 10; i32++) {
                                            if (b11 != 58) {
                                            }
                                        }
                                        break loop1;
                                    }
                                    i10 += 3;
                                    break;
                                }
                                i10 += 2;
                                break;
                            }
                            i10++;
                        }
                    }
                }
                i10 = i14;
                if (i11 != 3) {
                    z4 = false;
                }
                if (bArr != null) {
                    i12 = 4;
                    bArrG = null;
                } else {
                    if (c11 == 0) {
                        throw new n("invalid privatekey");
                    }
                    int i33 = i10;
                    while (i33 < length && bArr[i33] != 45) {
                        i33++;
                    }
                    if (length - i33 == 0 || (i13 = i33 - i10) == 0) {
                        throw new n("invalid privatekey");
                    }
                    length3 = new byte[i13];
                    System.arraycopy(bArr, i10, length3, 0, i13);
                    int i34 = 0;
                    while (i34 < i13) {
                        char c12 = length3[i34];
                        if (c12 == '\n') {
                            int i35 = (i34 <= 0 || length3[i34 + (-1)] != '\r') ? 0 : 1;
                            int i36 = i34 + 1;
                            System.arraycopy(length3, i36, length3, i34 - i35, i13 - i36);
                            if (i35 != 0) {
                                i13--;
                                i34--;
                            }
                            i13--;
                        } else {
                            if (c12 == '-') {
                                break;
                            }
                            i34++;
                        }
                    }
                    bArrG = i34 > 0 ? h0.g(0, i34, length3) : null;
                    try {
                        try {
                            h0.d(length3);
                            i12 = 4;
                        } catch (Exception e7) {
                            e = e7;
                            bArr3 = bArrG;
                            h0.d(bArr3);
                            if (e instanceof n) {
                            }
                        }
                    } catch (NoClassDefFoundError e10) {
                        e = e10;
                        bArr3 = bArrG;
                        h0.d(bArr3);
                        if (e instanceof n) {
                        }
                    }
                }
                if (i11 != i12) {
                    return k(eVar, bArrG);
                }
                if (bArrG != 0 && (length3 = bArrG.length) > i12 && (length3 = bArrG[0]) == 63 && (length3 = bArrG[1]) == 111 && (length3 = bArrG[2]) == -7 && (length3 = bArrG[3]) == -21) {
                    a aVar2 = new a(bArrG);
                    aVar2.g();
                    aVar2.g();
                    aVar2.l();
                    String strC2 = h0.c(aVar2.l());
                    if (strC2.equals("3des-cbc")) {
                        aVar2.g();
                        int length4 = bArrG.length - aVar2.f472c;
                        bArr3 = new byte[length4];
                        aVar2.e(length4, bArr3);
                        try {
                            throw new n("cipher " + strC2 + " is not supported for this privatekey format");
                        } catch (Exception e11) {
                            e = e11;
                        } catch (NoClassDefFoundError e12) {
                            e = e12;
                        }
                    } else {
                        if (!strC2.equals("none")) {
                            throw new n("cipher " + strC2 + " is not supported for this privatekey format");
                        }
                        aVar2.g();
                        aVar2.g();
                        int length5 = bArrG.length - aVar2.f472c;
                        byte[] bArr5 = new byte[length5];
                        aVar2.e(length5, bArr5);
                        bArrG = bArr5;
                        z = false;
                        bArrG2 = length5;
                    }
                } else {
                    z = z4;
                    bArrG2 = length3;
                }
                String strB = "";
                if (bArr2 != null) {
                    try {
                        length2 = bArr2.length;
                    } catch (Exception unused) {
                        bArrG2 = null;
                    }
                    try {
                    } catch (Exception unused2) {
                        eVar.getClass();
                        l.f508f.getClass();
                        c7 = 1;
                        bArr4 = bArrG2;
                        if (c11 != c7) {
                        }
                        if (wVar != null) {
                        }
                        return wVar;
                    }
                    if (bArr2.length <= 4 || bArr2[0] != 45) {
                        byte b18 = bArr2[0];
                        if (b18 == 115 && bArr2[1] == 115 && bArr2[2] == 104 && bArr2[3] == 45) {
                            if (bArr == null && bArr2.length > 7) {
                                byte b19 = bArr2[4];
                                if (b19 == 100) {
                                    c11 = 1;
                                } else if (b19 == 114) {
                                    c11 = 2;
                                } else {
                                    if (b19 == 101) {
                                        c10 = 6;
                                        if (bArr2[6] == 50) {
                                            c11 = 5;
                                        }
                                    } else {
                                        c10 = 6;
                                    }
                                    if (b19 == 101 && bArr2[c10] == 52) {
                                        c11 = 6;
                                    }
                                }
                            }
                            int i37 = 0;
                            while (i37 < length2 && bArr2[i37] != 32) {
                                i37++;
                            }
                            int i38 = i37 + 1;
                            if (i38 < length2) {
                                int i39 = i38;
                                while (i39 < length2 && bArr2[i39] != 32) {
                                    i39++;
                                }
                                int i40 = i39;
                                bArrG2 = h0.g(i38, i39 - i38, bArr2);
                                i38 = i40;
                            } else {
                                bArrG2 = null;
                            }
                            int i41 = i38 + 1;
                            if (i38 < length2) {
                                int i42 = i41;
                                while (i42 < length2 && bArr2[i42] != 10) {
                                    i42++;
                                }
                                if (i42 > 0 && bArr2[i42 - 1] == 13) {
                                    i42--;
                                }
                                if (i41 < i42) {
                                    strB = h0.b(i41, i42 - i41, bArr2);
                                }
                            }
                        } else if (b18 == 101 && bArr2[1] == 99 && bArr2[2] == 100 && bArr2[3] == 115) {
                            if (bArr == null && bArr2.length > 7) {
                                c11 = 3;
                            }
                            int i43 = 0;
                            while (i43 < length2 && bArr2[i43] != 32) {
                                i43++;
                            }
                            int i44 = i43 + 1;
                            if (i44 < length2) {
                                int i45 = i44;
                                while (i45 < length2 && bArr2[i45] != 32) {
                                    i45++;
                                }
                                int i46 = i45;
                                bArrG2 = h0.g(i44, i45 - i44, bArr2);
                                i44 = i46;
                            } else {
                                bArrG2 = null;
                            }
                            int i47 = i44 + 1;
                            if (i44 < length2) {
                                int i48 = i47;
                                while (i48 < length2 && bArr2[i48] != 10) {
                                    i48++;
                                }
                                if (i48 > 0 && bArr2[i48 - 1] == 13) {
                                    i48--;
                                }
                                if (i47 < i48) {
                                    strB = h0.b(i47, i48 - i47, bArr2);
                                }
                            }
                        } else {
                            bArrG2 = null;
                        }
                        c7 = 1;
                        bArr4 = bArrG2;
                    } else {
                        int i49 = 1;
                        if (bArr2[1] == 45 && bArr2[2] == 45 && bArr2[3] == 45) {
                            int i50 = 0;
                            while (true) {
                                i50 += i49;
                                if (bArr2.length <= i50 || bArr2[i50] == 10) {
                                    break;
                                }
                                i49 = 1;
                            }
                            boolean z10 = bArr2.length > i50;
                            loop6: while (z10) {
                                if (bArr2[i50] == 10) {
                                    int i51 = i50 + 1;
                                    int i52 = i51;
                                    for (byte b20 = 10; i52 < bArr2.length && (b10 = bArr2[i52]) != b20; b20 = 10) {
                                        if (b10 == 58) {
                                            break;
                                        }
                                        i52++;
                                    }
                                    i50 = i51;
                                    break loop6;
                                }
                                i50++;
                            }
                            if (bArr2.length <= i50) {
                                z10 = false;
                            }
                            int i53 = i50;
                            while (z10 && i53 < length2) {
                                byte b21 = bArr2[i53];
                                if (b21 == 10) {
                                    System.arraycopy(bArr2, i53 + 1, bArr2, i53, (length2 - i53) - 1);
                                    length2--;
                                } else {
                                    if (b21 == 45) {
                                        break;
                                    }
                                    i53++;
                                }
                            }
                            if (z10) {
                                bArrG2 = h0.g(i50, i53 - i50, bArr2);
                                if (bArr == null || c11 == 4) {
                                    byte b22 = bArrG2[8];
                                    if (b22 == 100) {
                                        c11 = 1;
                                    } else if (b22 == 114) {
                                        c11 = 2;
                                    }
                                }
                            }
                            c7 = 1;
                            bArr4 = bArrG2;
                        }
                    }
                } else {
                    c7 = 1;
                    bArr4 = null;
                }
                if (c11 != c7) {
                    wVar = new s(eVar);
                } else if (c11 == 2) {
                    wVar = new x(eVar);
                } else if (c11 == 3) {
                    wVar = new t(eVar, bArr2);
                } else {
                    if (c11 == 5) {
                        uVar = new u(eVar, bArr2, null, 0);
                    } else if (c11 == 6) {
                        uVar = new u(eVar, bArr2, null, 1);
                    } else {
                        wVar = i11 == 3 ? new w(eVar) : null;
                    }
                    wVar = uVar;
                }
                if (wVar != null) {
                    wVar.f520d = z;
                    wVar.f522f = bArr4;
                    wVar.f517a = i11;
                    wVar.f518b = strB;
                    if (z) {
                        wVar.f520d = true;
                        wVar.f521e = bArrG;
                    } else {
                        if (!wVar.m(bArrG)) {
                            throw new n("invalid privatekey");
                        }
                        wVar.f520d = false;
                    }
                }
                return wVar;
            } catch (Exception e13) {
                e = e13;
                bArr3 = null;
                h0.d(bArr3);
                if (e instanceof n) {
                }
            } catch (NoClassDefFoundError e14) {
                e = e14;
                bArr3 = null;
                h0.d(bArr3);
                if (e instanceof n) {
                }
            }
        } else {
            if (bArr == null) {
            }
            i10 = 0;
            while (i10 < length) {
                i10++;
            }
            char c112 = 0;
            i11 = 0;
            boolean z42 = true;
            loop1: while (true) {
                if (i10 >= length) {
                }
            }
            i10 = i14;
            if (i11 != 3) {
            }
            if (bArr != null) {
            }
            if (i11 != i12) {
            }
        }
        h0.d(bArr3);
        if (e instanceof n) {
            throw ((n) e);
        }
        throw new n(e.toString(), e);
    }

    public static r k(m7.e eVar, byte[] bArr) throws Exception {
        if (bArr == null) {
            throw new n("invalid privatekey");
        }
        a aVar = new a(bArr);
        byte[] bArr2 = f516g;
        int length = bArr2.length;
        byte[] bArr3 = new byte[length];
        aVar.e(length, bArr3);
        if (bArr2.length == length) {
            int i10 = 0;
            for (int i11 = 0; i11 < bArr2.length; i11++) {
                i10 |= bArr2[i11] ^ bArr3[i11];
            }
            if (i10 == 0) {
                byte[] bArrL = aVar.l();
                int length2 = bArrL.length;
                Charset charset = StandardCharsets.UTF_8;
                String str = new String(bArrL, 0, length2, charset);
                byte[] bArrL2 = aVar.l();
                new String(bArrL2, 0, bArrL2.length, charset);
                aVar.l();
                if (aVar.g() != 1) {
                    throw new n("We don't support having more than 1 key in the file (yet).");
                }
                byte[] bArrL3 = aVar.l();
                r rVarP = p(eVar, bArrL3, null);
                rVarP.f520d = true ^ "none".equals(str);
                rVarP.f522f = bArrL3;
                rVarP.f517a = 4;
                rVarP.f518b = "";
                byte[] bArrL4 = aVar.l();
                rVarP.f521e = bArrL4;
                try {
                    if (!rVarP.f520d) {
                        if (!rVarP.m(bArrL4)) {
                            throw new n("invalid privatekey");
                        }
                        h0.d(rVarP.f521e);
                        return rVarP;
                    }
                    f0.a(l.b(str));
                    throw new n("cipher " + str + " is not available");
                } catch (Exception e7) {
                    h0.d(rVarP.f521e);
                    throw e7;
                }
            }
        }
        throw new n("Invalid openssh v1 format.");
    }

    public static r l(m7.e eVar, byte[] bArr) throws Throwable {
        int i10;
        a aVar = new a(bArr);
        HashMap map = new HashMap();
        while (n(aVar, map)) {
        }
        String str = (String) map.get("PuTTY-User-Key-File-2");
        byte[] bArr2 = null;
        if (str == null) {
            str = (String) map.get("PuTTY-User-Key-File-3");
            if (str == null) {
                return null;
            }
            i10 = 5;
        } else {
            i10 = 2;
        }
        try {
            byte[] bArrO = o(aVar, Integer.parseInt((String) map.get("Public-Lines")));
            while (n(aVar, map)) {
            }
            byte[] bArrO2 = o(aVar, Integer.parseInt((String) map.get("Private-Lines")));
            do {
                try {
                    try {
                    } catch (Exception e7) {
                        e = e7;
                        h0.d(null);
                        throw e;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bArr2 = bArrO2;
                    h0.d(bArr2);
                    throw th;
                }
            } while (n(aVar, map));
            byte[] bArrG = h0.g(0, bArrO2.length, bArrO2);
            byte[] bArrG2 = h0.g(0, bArrO.length, bArrO);
            r rVarP = p(eVar, bArrG2, str);
            rVarP.f520d = !((String) map.get("Encryption")).equals("none");
            rVarP.f522f = bArrG2;
            rVarP.f517a = i10;
            rVarP.f518b = (String) map.get("Comment");
            if (rVarP.f520d) {
                f0.a(l.b("aes256-cbc"));
                throw new n("The cipher 'aes256-cbc' is required, but it is not available.");
            }
            rVarP.f521e = bArrG;
            if (!rVarP.m(bArrG)) {
                throw new n("invalid privatekey");
            }
            h0.d(bArrG);
            h0.d(bArrO2);
            return rVarP;
        } catch (Exception e10) {
            e = e10;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        if (r2 >= r0.length) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        r2 = r0[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        r2 = r1;
        r1 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean n(a aVar, HashMap map) {
        String strB;
        int i10;
        String strB2;
        byte[] bArr = (byte[]) aVar.f474e;
        int i11 = aVar.f471b;
        int i12 = i11;
        while (true) {
            strB = null;
            if (i12 >= bArr.length) {
                break;
            }
            byte b10 = bArr[i12];
            if (b10 == 13 || b10 == 10) {
                break;
            }
            if (b10 == 58) {
                strB2 = h0.b(i11, i12 - i11, bArr);
                int i13 = i12 + 1;
                i10 = (i13 >= bArr.length || bArr[i13] != 32) ? i13 : i12 + 2;
            } else {
                i12++;
            }
        }
        if (strB2 == null) {
            return false;
        }
        for (int i14 = i10; i14 < bArr.length; i14++) {
            byte b11 = bArr[i14];
            if (b11 == 13 || b11 == 10) {
                strB = h0.b(i10, i14 - i10, bArr);
                i10 = i14 + 1;
                if (i10 < bArr.length && bArr[i10] == 10) {
                    i10 = i14 + 2;
                }
                if (strB != null) {
                    map.put(strB2, strB);
                    aVar.f471b = i10;
                }
                return strB == null;
            }
        }
        if (strB != null) {
        }
        if (strB == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0048 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] o(a aVar, int i10) {
        byte[] bArr = (byte[]) aVar.f474e;
        int i11 = aVar.f471b;
        byte[] bArr2 = null;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                break;
            }
            int i13 = i11;
            while (bArr.length > i13) {
                int i14 = i13 + 1;
                byte b10 = bArr[i13];
                if (b10 == 13 || b10 == 10) {
                    int i15 = (i14 - i11) - 1;
                    if (bArr2 == null) {
                        bArr2 = new byte[i15];
                        System.arraycopy(bArr, i11, bArr2, 0, i15);
                    } else {
                        if (i15 > 0) {
                            byte[] bArr3 = new byte[bArr2.length + i15];
                            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
                            System.arraycopy(bArr, i11, bArr3, bArr2.length, i15);
                            h0.d(bArr2);
                            i13 = i14;
                            bArr2 = bArr3;
                        }
                        if (i13 < bArr.length && bArr[i13] == 10) {
                            i13++;
                        }
                        i11 = i13;
                        i10 = i12;
                    }
                    i13 = i14;
                    if (i13 < bArr.length) {
                    }
                    i11 = i13;
                    i10 = i12;
                } else {
                    i13 = i14;
                }
            }
            if (i13 < bArr.length) {
            }
            i11 = i13;
            i10 = i12;
        }
        if (bArr2 != null) {
            aVar.f471b = i11;
        }
        return bArr2;
    }

    public static r p(m7.e eVar, byte[] bArr, String str) throws n {
        int i10 = 1;
        int i11 = 0;
        a aVar = new a(bArr);
        aVar.r(bArr.length);
        byte[] bArrL = aVar.l();
        byte[] bArr2 = h0.f503a;
        String str2 = new String(bArrL, 0, bArrL.length, StandardCharsets.UTF_8);
        if (str == null || str.equals("")) {
            str = str2;
        } else if (!str.equals(str2)) {
            throw new n(ta.q.l("pubkeyblob type [", str2, "] does not match expected type [", str, "]"));
        }
        byte[] bArr3 = null;
        if (str.equals("ssh-rsa")) {
            int iG = aVar.g();
            byte[] bArr4 = new byte[iG];
            aVar.e(iG, bArr4);
            int iG2 = aVar.g();
            byte[] bArr5 = new byte[iG2];
            aVar.e(iG2, bArr5);
            return new x(eVar, bArr5, bArr4, null);
        }
        if (str.equals("ssh-dss")) {
            int iG3 = aVar.g();
            byte[] bArr6 = new byte[iG3];
            aVar.e(iG3, bArr6);
            int iG4 = aVar.g();
            byte[] bArr7 = new byte[iG4];
            aVar.e(iG4, bArr7);
            int iG5 = aVar.g();
            byte[] bArr8 = new byte[iG5];
            aVar.e(iG5, bArr8);
            int iG6 = aVar.g();
            byte[] bArr9 = new byte[iG6];
            aVar.e(iG6, bArr9);
            return new s(eVar, bArr6, bArr7, bArr8, bArr9, null);
        }
        if (!str.equals("ecdsa-sha2-nistp256") && !str.equals("ecdsa-sha2-nistp384") && !str.equals("ecdsa-sha2-nistp521")) {
            if (!str.equals("ssh-ed25519") && !str.equals("ssh-ed448")) {
                throw new n(g.b.A("key type ", str, " is not supported"));
            }
            int iG7 = aVar.g();
            byte[] bArr10 = new byte[iG7];
            aVar.e(iG7, bArr10);
            return str.equals("ssh-ed25519") ? new u(eVar, bArr10, bArr3, i11) : new u(eVar, bArr10, bArr3, i10);
        }
        byte[] bArrL2 = aVar.l();
        int iG8 = aVar.g();
        aVar.d();
        int i12 = (iG8 - 1) / 2;
        byte[] bArr11 = new byte[i12];
        byte[] bArr12 = new byte[i12];
        aVar.e(i12, bArr11);
        aVar.e(i12, bArr12);
        return new t(eVar, bArrL2, bArr11, bArr12, null);
    }

    public static int q(int i10, byte[] bArr, byte[] bArr2) {
        bArr[i10] = 2;
        int iR = r(i10 + 1, bArr2.length, bArr);
        System.arraycopy(bArr2, 0, bArr, iR, bArr2.length);
        return iR + bArr2.length;
    }

    public static int r(int i10, int i11, byte[] bArr) {
        int iB = b(i11) - 1;
        if (iB == 0) {
            int i12 = i10 + 1;
            bArr[i10] = (byte) i11;
            return i12;
        }
        bArr[i10] = (byte) (iB | 128);
        int i13 = i10 + 1 + iB;
        while (iB > 0) {
            bArr[(r1 + iB) - 1] = (byte) (i11 & 255);
            i11 >>>= 8;
            iB--;
        }
        return i13;
    }

    public final void a(w wVar) {
        this.f522f = wVar.f522f;
        this.f517a = wVar.f517a;
        this.f518b = wVar.f518b;
    }

    public boolean c(byte[] bArr) {
        if (!this.f520d) {
            return true;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        try {
            try {
                f();
                throw null;
            } catch (Exception unused) {
                this.f519c.getClass();
                l.f508f.getClass();
                if (m(null)) {
                    this.f520d = false;
                    h0.d(this.f521e);
                }
                h0.d(bArr2);
                return !this.f520d;
            }
        } catch (Throwable th2) {
            h0.d(bArr2);
            throw th2;
        }
    }

    public void d() {
        byte[] bArr = h0.f503a;
    }

    public abstract byte[] e();

    public final synchronized void f() {
        try {
        } catch (Exception unused) {
            this.f519c.getClass();
            l.f508f.getClass();
        }
        if (Class.forName(l.b("3des-cbc")).asSubclass(f.class).getDeclaredConstructor(null).newInstance(null) != null) {
            throw new ClassCastException();
        }
        try {
            if (Class.forName(l.b("md5")).asSubclass(g.class).getDeclaredConstructor(null).newInstance(null) != null) {
                throw new ClassCastException();
            }
            throw null;
        } catch (Exception unused2) {
            this.f519c.getClass();
            l.f508f.getClass();
            throw null;
        }
    }

    public final void finalize() {
        d();
    }

    public abstract int g();

    public abstract byte[] h();

    public abstract boolean m(byte[] bArr);
}
