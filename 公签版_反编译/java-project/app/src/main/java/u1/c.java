package u1;

import android.util.Pair;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f15189a = {0, 0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f15190b = {"", "A", "B", "C"};

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f15191c = Pattern.compile("^\\D?(\\d+)$");

    public static String a(int i10, int i11, int i12, int[] iArr, boolean z, int i13) {
        Object[] objArr = {f15190b[i10], Integer.valueOf(i11), Integer.valueOf(i12), Character.valueOf(z ? 'H' : Matrix.MATRIX_TYPE_RANDOM_LT), Integer.valueOf(i13)};
        String str = f0.f15206a;
        StringBuilder sb2 = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x0976  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0139  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair b(r1.p pVar) {
        int i10;
        r1.g gVar;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        Integer numValueOf;
        char c7;
        Integer num;
        int i26;
        Integer num2;
        int i27 = 16;
        String str = pVar.f13520k;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        boolean zEquals = "video/dolby-vision".equals(pVar.f13523o);
        String str2 = pVar.f13520k;
        if (zEquals) {
            if (strArrSplit.length < 3) {
                ta.q.t("Ignoring malformed Dolby Vision codec string: ", str2);
                return null;
            }
            Matcher matcher = f15191c.matcher(strArrSplit[1]);
            if (!matcher.matches()) {
                ta.q.t("Ignoring malformed Dolby Vision codec string: ", str2);
                return null;
            }
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                switch (strGroup) {
                    case "00":
                        c7 = 2;
                        num = 1;
                        break;
                    case "01":
                        c7 = 2;
                        num = 2;
                        break;
                    case "02":
                        num = 4;
                        c7 = 2;
                        break;
                    case "03":
                        i26 = 8;
                        num = i26;
                        c7 = 2;
                        break;
                    case "04":
                        i26 = 16;
                        num = i26;
                        c7 = 2;
                        break;
                    case "05":
                        i26 = 32;
                        num = i26;
                        c7 = 2;
                        break;
                    case "06":
                        i26 = 64;
                        num = i26;
                        c7 = 2;
                        break;
                    case "07":
                        i26 = 128;
                        num = i26;
                        c7 = 2;
                        break;
                    case "08":
                        i26 = 256;
                        num = i26;
                        c7 = 2;
                        break;
                    case "09":
                        i26 = 512;
                        num = i26;
                        c7 = 2;
                        break;
                    case "10":
                        i26 = 1024;
                        num = i26;
                        c7 = 2;
                        break;
                }
            } else {
                num = null;
                c7 = 2;
            }
            if (num == null) {
                ta.q.t("Unknown Dolby Vision profile string: ", strGroup);
                return null;
            }
            String str3 = strArrSplit[c7];
            if (str3 != null) {
                switch (str3) {
                    case "01":
                        num2 = 1;
                        break;
                    case "02":
                        num2 = 2;
                        break;
                    case "03":
                        num2 = 4;
                        break;
                    case "04":
                        num2 = 8;
                        break;
                    case "05":
                        num2 = 16;
                        break;
                    case "06":
                        num2 = 32;
                        break;
                    case "07":
                        num2 = 64;
                        break;
                    case "08":
                        num2 = 128;
                        break;
                    case "09":
                        num2 = 256;
                        break;
                    case "10":
                        num2 = 512;
                        break;
                    case "11":
                        num2 = 1024;
                        break;
                    case "12":
                        num2 = 2048;
                        break;
                    case "13":
                        num2 = 4096;
                        break;
                }
            } else {
                num2 = null;
            }
            if (num2 != null) {
                return new Pair(num, num2);
            }
            ta.q.t("Unknown Dolby Vision level string: ", str3);
            return null;
        }
        String str4 = strArrSplit[0];
        str4.getClass();
        i10 = 8192;
        gVar = pVar.E;
        switch (str4) {
            case "ac-4":
                if (strArrSplit.length != 4) {
                    ta.q.t("Ignoring malformed AC-4 codec string: ", str2);
                    return null;
                }
                try {
                    int i28 = Integer.parseInt(strArrSplit[1]);
                    int i29 = Integer.parseInt(strArrSplit[2]);
                    int i30 = Integer.parseInt(strArrSplit[3]);
                    if (i28 != 0) {
                        if (i28 != 1) {
                            if (i28 == 2) {
                                if (i29 == 1) {
                                    i12 = 1026;
                                    i11 = -1;
                                } else if (i29 == 2) {
                                    i11 = -1;
                                    i12 = 1028;
                                } else {
                                    i11 = -1;
                                    i12 = -1;
                                }
                            }
                        } else if (i29 == 0) {
                            i11 = -1;
                            i12 = 513;
                        } else if (i29 == 1) {
                            i11 = -1;
                            i12 = 514;
                        }
                    } else if (i29 == 0) {
                        i11 = -1;
                        i12 = 257;
                    }
                    if (i12 == i11) {
                        a.p("Unknown AC-4 profile: " + i28 + "." + i29);
                        return null;
                    }
                    if (i30 == 0) {
                        i13 = -1;
                        i27 = 1;
                    } else if (i30 == 1) {
                        i13 = -1;
                        i27 = 2;
                    } else if (i30 == 2) {
                        i13 = -1;
                        i27 = 4;
                    } else if (i30 == 3) {
                        i13 = -1;
                        i27 = 8;
                    } else if (i30 != 4) {
                        i13 = -1;
                        i27 = -1;
                    } else {
                        i13 = -1;
                    }
                    if (i27 != i13) {
                        return new Pair(Integer.valueOf(i12), Integer.valueOf(i27));
                    }
                    org.bouncycastle.jcajce.provider.digest.a.o(i30, "Unknown AC-4 level: ");
                    return null;
                } catch (NumberFormatException unused) {
                    ta.q.t("Ignoring malformed AC-4 codec string: ", str2);
                    return null;
                }
            case "apv1":
                if (strArrSplit.length < 4) {
                    ta.q.t("Ignoring malformed APV codec string: ", str2);
                    return null;
                }
                try {
                    int i31 = Integer.parseInt(strArrSplit[1].substring(4));
                    int i32 = Integer.parseInt(strArrSplit[2].substring(4));
                    int i33 = Integer.parseInt(strArrSplit[3].substring(4));
                    if (i31 == 33) {
                        i10 = 1;
                    } else if (i31 != 44) {
                        org.bouncycastle.jcajce.provider.digest.a.o(i31, "Ignoring invalid APV profile: ");
                        return null;
                    }
                    int i34 = (i32 / 30) * 2;
                    if (i32 % 30 == 0) {
                        i34--;
                    }
                    return new Pair(Integer.valueOf(i10), Integer.valueOf((256 << (i34 - 1)) | (1 << i33)));
                } catch (NumberFormatException e7) {
                    a.q("Ignoring malformed APV codec string: " + str2, e7);
                    return null;
                }
            case "av01":
                if (strArrSplit.length < 4) {
                    ta.q.t("Ignoring malformed AV1 codec string: ", str2);
                    return null;
                }
                try {
                    int i35 = Integer.parseInt(strArrSplit[1]);
                    int i36 = Integer.parseInt(strArrSplit[2].substring(0, 2));
                    int i37 = Integer.parseInt(strArrSplit[3]);
                    if (i35 != 0) {
                        org.bouncycastle.jcajce.provider.digest.a.o(i35, "Unknown AV1 profile: ");
                        return null;
                    }
                    if (i37 != 8 && i37 != 10) {
                        org.bouncycastle.jcajce.provider.digest.a.o(i37, "Unknown AV1 bit depth: ");
                        return null;
                    }
                    int i38 = i37 == 8 ? 1 : (gVar == null || !(gVar.f13445d != null || (i14 = gVar.f13444c) == 7 || i14 == 6)) ? 2 : 4096;
                    switch (i36) {
                        case 0:
                            i15 = -1;
                            i27 = 1;
                            break;
                        case 1:
                            i15 = -1;
                            i27 = 2;
                            break;
                        case 2:
                            i15 = -1;
                            i27 = 4;
                            break;
                        case 3:
                            i15 = -1;
                            i27 = 8;
                            break;
                        case 4:
                            i15 = -1;
                            break;
                        case 5:
                            i15 = -1;
                            i27 = 32;
                            break;
                        case 6:
                            i15 = -1;
                            i27 = 64;
                            break;
                        case 7:
                            i15 = -1;
                            i27 = 128;
                            break;
                        case 8:
                            i15 = -1;
                            i27 = 256;
                            break;
                        case 9:
                            i15 = -1;
                            i27 = 512;
                            break;
                        case 10:
                            i15 = -1;
                            i27 = 1024;
                            break;
                        case 11:
                            i15 = -1;
                            i27 = 2048;
                            break;
                        case 12:
                            i15 = -1;
                            i27 = 4096;
                            break;
                        case 13:
                            i15 = -1;
                            i27 = 8192;
                            break;
                        case 14:
                            i15 = -1;
                            i27 = 16384;
                            break;
                        case 15:
                            i15 = -1;
                            i27 = 32768;
                            break;
                        case 16:
                            i15 = -1;
                            i27 = 65536;
                            break;
                        case 17:
                            i15 = -1;
                            i27 = 131072;
                            break;
                        case 18:
                            i15 = -1;
                            i27 = 262144;
                            break;
                        case 19:
                            i15 = -1;
                            i27 = PKIFailureInfo.signerNotTrusted;
                            break;
                        case 20:
                            i15 = -1;
                            i27 = 1048576;
                            break;
                        case 21:
                            i15 = -1;
                            i27 = PKIFailureInfo.badSenderNonce;
                            break;
                        case 22:
                            i15 = -1;
                            i27 = 4194304;
                            break;
                        case 23:
                            i27 = 8388608;
                            i15 = -1;
                            break;
                        default:
                            i15 = -1;
                            i27 = -1;
                            break;
                    }
                    if (i27 != i15) {
                        return new Pair(Integer.valueOf(i38), Integer.valueOf(i27));
                    }
                    org.bouncycastle.jcajce.provider.digest.a.o(i36, "Unknown AV1 level: ");
                    return null;
                } catch (NumberFormatException unused2) {
                    ta.q.t("Ignoring malformed AV1 codec string: ", str2);
                    return null;
                }
            case "avc1":
            case "avc2":
                if (strArrSplit.length < 2) {
                    ta.q.t("Ignoring malformed AVC codec string: ", str2);
                    return null;
                }
                try {
                    if (strArrSplit[1].length() == 6) {
                        i16 = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                        i17 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                    } else {
                        if (strArrSplit.length < 3) {
                            a.p("Ignoring malformed AVC codec string: " + str2);
                            return null;
                        }
                        i16 = Integer.parseInt(strArrSplit[1]);
                        i17 = Integer.parseInt(strArrSplit[2]);
                    }
                    if (i16 == 66) {
                        i18 = -1;
                        i19 = 1;
                    } else if (i16 == 77) {
                        i18 = -1;
                        i19 = 2;
                    } else if (i16 == 88) {
                        i18 = -1;
                        i19 = 4;
                    } else if (i16 == 100) {
                        i18 = -1;
                        i19 = 8;
                    } else if (i16 == 110) {
                        i18 = -1;
                        i19 = 16;
                    } else if (i16 == 122) {
                        i18 = -1;
                        i19 = 32;
                    } else if (i16 != 244) {
                        i18 = -1;
                        i19 = -1;
                    } else {
                        i18 = -1;
                        i19 = 64;
                    }
                    if (i19 == i18) {
                        org.bouncycastle.jcajce.provider.digest.a.o(i16, "Unknown AVC profile: ");
                        return null;
                    }
                    switch (i17) {
                        case 10:
                            i20 = -1;
                            i27 = 1;
                            break;
                        case 11:
                            i20 = -1;
                            i27 = 4;
                            break;
                        case 12:
                            i20 = -1;
                            i27 = 8;
                            break;
                        case 13:
                            i20 = -1;
                            break;
                        default:
                            switch (i17) {
                                case 20:
                                    i20 = -1;
                                    i27 = 32;
                                    break;
                                case 21:
                                    i20 = -1;
                                    i27 = 64;
                                    break;
                                case 22:
                                    i20 = -1;
                                    i27 = 128;
                                    break;
                                default:
                                    switch (i17) {
                                        case 30:
                                            i20 = -1;
                                            i27 = 256;
                                            break;
                                        case 31:
                                            i20 = -1;
                                            i27 = 512;
                                            break;
                                        case 32:
                                            i20 = -1;
                                            i27 = 1024;
                                            break;
                                        default:
                                            switch (i17) {
                                                case 40:
                                                    i20 = -1;
                                                    i27 = 2048;
                                                    break;
                                                case 41:
                                                    i20 = -1;
                                                    i27 = 4096;
                                                    break;
                                                case 42:
                                                    i20 = -1;
                                                    i27 = 8192;
                                                    break;
                                                default:
                                                    switch (i17) {
                                                        case 50:
                                                            i20 = -1;
                                                            i27 = 16384;
                                                            break;
                                                        case 51:
                                                            i20 = -1;
                                                            i27 = 32768;
                                                            break;
                                                        case 52:
                                                            i20 = -1;
                                                            i27 = 65536;
                                                            break;
                                                        default:
                                                            i20 = -1;
                                                            i27 = -1;
                                                            break;
                                                    }
                                            }
                                    }
                            }
                    }
                    if (i27 != i20) {
                        return new Pair(Integer.valueOf(i19), Integer.valueOf(i27));
                    }
                    org.bouncycastle.jcajce.provider.digest.a.o(i17, "Unknown AVC level: ");
                    return null;
                } catch (NumberFormatException unused3) {
                    ta.q.t("Ignoring malformed AVC codec string: ", str2);
                    return null;
                }
            case "hev1":
            case "hvc1":
                return c(str2, strArrSplit, gVar);
            case "iamf":
                if (strArrSplit.length < 4) {
                    ta.q.t("Ignoring malformed IAMF codec string: ", str2);
                    return null;
                }
                try {
                    int i39 = 1 << (Integer.parseInt(strArrSplit[1]) + 16);
                    String str5 = strArrSplit[3];
                    str5.getClass();
                    switch (str5) {
                        case "Opus":
                            i21 = 1;
                            break;
                        case "fLaC":
                            i21 = 4;
                            break;
                        case "ipcm":
                            i21 = 8;
                            break;
                        case "mp4a":
                            i21 = 2;
                            break;
                        default:
                            a.p("Ignoring unknown codec identifier for IAMF auxiliary profile: " + strArrSplit[3]);
                            return null;
                    }
                    return new Pair(Integer.valueOf(i39 | 16777216 | i21), 0);
                } catch (NumberFormatException e10) {
                    a.q("Ignoring malformed primary profile in IAMF codec string: " + strArrSplit[1], e10);
                    return null;
                }
            case "mp4a":
                if (strArrSplit.length != 3) {
                    ta.q.t("Ignoring malformed MP4A codec string: ", str2);
                    return null;
                }
                try {
                    if (!"audio/mp4a-latm".equals(r1.e0.d(Integer.parseInt(strArrSplit[1], 16)))) {
                        return null;
                    }
                    int i40 = Integer.parseInt(strArrSplit[2]);
                    if (i40 == 17) {
                        i22 = -1;
                        i23 = 17;
                    } else if (i40 == 20) {
                        i22 = -1;
                        i23 = 20;
                    } else if (i40 == 23) {
                        i22 = -1;
                        i23 = 23;
                    } else if (i40 == 29) {
                        i22 = -1;
                        i23 = 29;
                    } else if (i40 == 39) {
                        i22 = -1;
                        i23 = 39;
                    } else if (i40 != 42) {
                        switch (i40) {
                            case 1:
                                i22 = -1;
                                i23 = 1;
                                break;
                            case 2:
                                i22 = -1;
                                i23 = 2;
                                break;
                            case 3:
                                i22 = -1;
                                i23 = 3;
                                break;
                            case 4:
                                i22 = -1;
                                i23 = 4;
                                break;
                            case 5:
                                i22 = -1;
                                i23 = 5;
                                break;
                            case 6:
                                i22 = -1;
                                i23 = 6;
                                break;
                            default:
                                i22 = -1;
                                i23 = -1;
                                break;
                        }
                    } else {
                        i22 = -1;
                        i23 = 42;
                    }
                    if (i23 != i22) {
                        return new Pair(Integer.valueOf(i23), 0);
                    }
                    return null;
                } catch (NumberFormatException unused4) {
                    ta.q.t("Ignoring malformed MP4A codec string: ", str2);
                    return null;
                }
            case "s263":
                Pair pair = new Pair(1, 1);
                if (strArrSplit.length < 3) {
                    ta.q.t("Ignoring malformed H263 codec string: ", str2);
                    return pair;
                }
                try {
                    return new Pair(Integer.valueOf(Integer.parseInt(strArrSplit[1])), Integer.valueOf(Integer.parseInt(strArrSplit[2])));
                } catch (NumberFormatException unused5) {
                    ta.q.t("Ignoring malformed H263 codec string: ", str2);
                    return pair;
                }
            case "vp09":
                if (strArrSplit.length < 3) {
                    ta.q.t("Ignoring malformed VP9 codec string: ", str2);
                    return null;
                }
                try {
                    int i41 = Integer.parseInt(strArrSplit[1]);
                    int i42 = Integer.parseInt(strArrSplit[2]);
                    int i43 = i41 != 0 ? i41 != 1 ? i41 != 2 ? i41 != 3 ? -1 : 8 : 4 : 2 : 1;
                    if (i43 == -1) {
                        org.bouncycastle.jcajce.provider.digest.a.o(i41, "Unknown VP9 profile: ");
                        return null;
                    }
                    if (i42 == 10) {
                        i24 = -1;
                        i27 = 1;
                    } else if (i42 == 11) {
                        i24 = -1;
                        i27 = 2;
                    } else if (i42 == 20) {
                        i24 = -1;
                        i27 = 4;
                    } else if (i42 == 21) {
                        i24 = -1;
                        i27 = 8;
                    } else if (i42 == 30) {
                        i24 = -1;
                    } else if (i42 == 31) {
                        i24 = -1;
                        i27 = 32;
                    } else if (i42 == 40) {
                        i24 = -1;
                        i27 = 64;
                    } else if (i42 == 41) {
                        i24 = -1;
                        i27 = 128;
                    } else if (i42 == 50) {
                        i24 = -1;
                        i27 = 256;
                    } else if (i42 != 51) {
                        switch (i42) {
                            case 60:
                                i24 = -1;
                                i27 = 2048;
                                break;
                            case 61:
                                i24 = -1;
                                i27 = 4096;
                                break;
                            case 62:
                                i24 = -1;
                                i27 = 8192;
                                break;
                            default:
                                i24 = -1;
                                i27 = -1;
                                break;
                        }
                    } else {
                        i24 = -1;
                        i27 = 512;
                    }
                    if (i27 != i24) {
                        return new Pair(Integer.valueOf(i43), Integer.valueOf(i27));
                    }
                    org.bouncycastle.jcajce.provider.digest.a.o(i42, "Unknown VP9 level: ");
                    return null;
                } catch (NumberFormatException unused6) {
                    ta.q.t("Ignoring malformed VP9 codec string: ", str2);
                    return null;
                }
            case "vvc1":
            case "vvi1":
                if (strArrSplit.length < 3) {
                    ta.q.t("Ignoring malformed VVC codec string: ", str2);
                    return null;
                }
                try {
                    int i44 = Integer.parseInt(strArrSplit[1]);
                    if (i44 == 1) {
                        i25 = (gVar == null || gVar.f13444c != 6) ? (gVar == null || gVar.f13446e != 8) ? 2 : 1 : 4096;
                    } else {
                        if (i44 != 65) {
                            a.p("Unknown VVC profile IDC: " + strArrSplit[1]);
                            return null;
                        }
                        i25 = 4;
                    }
                    String str6 = strArrSplit[2];
                    if (str6 != null) {
                        switch (str6) {
                            case "H64":
                                numValueOf = 64;
                                break;
                            case "H67":
                                numValueOf = 256;
                                break;
                            case "H80":
                                numValueOf = 1024;
                                break;
                            case "H83":
                                numValueOf = 4096;
                                break;
                            case "H86":
                                numValueOf = 16384;
                                break;
                            case "H96":
                                numValueOf = 65536;
                                break;
                            case "L16":
                                numValueOf = 1;
                                break;
                            case "L32":
                                numValueOf = 2;
                                break;
                            case "L35":
                                numValueOf = 4;
                                break;
                            case "L48":
                                numValueOf = 8;
                                break;
                            case "L51":
                                numValueOf = 16;
                                break;
                            case "L64":
                                numValueOf = 32;
                                break;
                            case "L67":
                                numValueOf = 128;
                                break;
                            case "L80":
                                numValueOf = 512;
                                break;
                            case "L83":
                                numValueOf = 2048;
                                break;
                            case "L86":
                                numValueOf = 8192;
                                break;
                            case "L96":
                                numValueOf = 32768;
                                break;
                            case "H112":
                                numValueOf = 262144;
                                break;
                            case "H128":
                                numValueOf = 1048576;
                                break;
                            case "H144":
                                numValueOf = 4194304;
                                break;
                            case "L112":
                                numValueOf = 131072;
                                break;
                            case "L128":
                                numValueOf = Integer.valueOf(PKIFailureInfo.signerNotTrusted);
                                break;
                            case "L144":
                                numValueOf = Integer.valueOf(PKIFailureInfo.badSenderNonce);
                                break;
                        }
                    } else {
                        numValueOf = null;
                    }
                    if (numValueOf != null) {
                        return new Pair(Integer.valueOf(i25), numValueOf);
                    }
                    ta.q.t("Unknown VVC level string: ", str6);
                    return null;
                } catch (NumberFormatException unused7) {
                    ta.q.t("Ignoring malformed VVC codec string: ", str2);
                    return null;
                }
            default:
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair c(String str, String[] strArr, r1.g gVar) {
        int i10;
        Integer numValueOf;
        char c7 = 3;
        if (strArr.length < 4) {
            ta.q.t("Ignoring malformed HEVC codec string: ", str);
            return null;
        }
        Matcher matcher = f15191c.matcher(strArr[1]);
        if (!matcher.matches()) {
            ta.q.t("Ignoring malformed HEVC codec string: ", str);
            return null;
        }
        String strGroup = matcher.group(1);
        if ("1".equals(strGroup)) {
            i10 = 1;
        } else if ("2".equals(strGroup)) {
            i10 = (gVar == null || gVar.f13444c != 6) ? 2 : 4096;
        } else {
            if (!"6".equals(strGroup)) {
                ta.q.t("Unknown HEVC profile string: ", strGroup);
                return null;
            }
            i10 = 6;
        }
        String str2 = strArr[3];
        if (str2 != null) {
            switch (str2.hashCode()) {
                case 70821:
                    if (!str2.equals("H30")) {
                        c7 = 65535;
                        break;
                    } else {
                        c7 = 0;
                        break;
                    }
                case 70914:
                    if (str2.equals("H60")) {
                        c7 = 1;
                        break;
                    }
                    break;
                case 70917:
                    if (str2.equals("H63")) {
                        c7 = 2;
                        break;
                    }
                    break;
                case 71007:
                    if (!str2.equals("H90")) {
                    }
                    break;
                case 71010:
                    if (str2.equals("H93")) {
                        c7 = 4;
                        break;
                    }
                    break;
                case 74665:
                    if (str2.equals("L30")) {
                        c7 = 5;
                        break;
                    }
                    break;
                case 74758:
                    if (str2.equals("L60")) {
                        c7 = 6;
                        break;
                    }
                    break;
                case 74761:
                    if (str2.equals("L63")) {
                        c7 = 7;
                        break;
                    }
                    break;
                case 74851:
                    if (str2.equals("L90")) {
                        c7 = '\b';
                        break;
                    }
                    break;
                case 74854:
                    if (str2.equals("L93")) {
                        c7 = '\t';
                        break;
                    }
                    break;
                case 2193639:
                    if (str2.equals("H120")) {
                        c7 = '\n';
                        break;
                    }
                    break;
                case 2193642:
                    if (str2.equals("H123")) {
                        c7 = 11;
                        break;
                    }
                    break;
                case 2193732:
                    if (str2.equals("H150")) {
                        c7 = '\f';
                        break;
                    }
                    break;
                case 2193735:
                    if (str2.equals("H153")) {
                        c7 = '\r';
                        break;
                    }
                    break;
                case 2193738:
                    if (str2.equals("H156")) {
                        c7 = 14;
                        break;
                    }
                    break;
                case 2193825:
                    if (str2.equals("H180")) {
                        c7 = 15;
                        break;
                    }
                    break;
                case 2193828:
                    if (str2.equals("H183")) {
                        c7 = 16;
                        break;
                    }
                    break;
                case 2193831:
                    if (str2.equals("H186")) {
                        c7 = 17;
                        break;
                    }
                    break;
                case 2312803:
                    if (str2.equals("L120")) {
                        c7 = 18;
                        break;
                    }
                    break;
                case 2312806:
                    if (str2.equals("L123")) {
                        c7 = 19;
                        break;
                    }
                    break;
                case 2312896:
                    if (str2.equals("L150")) {
                        c7 = 20;
                        break;
                    }
                    break;
                case 2312899:
                    if (str2.equals("L153")) {
                        c7 = 21;
                        break;
                    }
                    break;
                case 2312902:
                    if (str2.equals("L156")) {
                        c7 = 22;
                        break;
                    }
                    break;
                case 2312989:
                    if (str2.equals("L180")) {
                        c7 = 23;
                        break;
                    }
                    break;
                case 2312992:
                    if (str2.equals("L183")) {
                        c7 = 24;
                        break;
                    }
                    break;
                case 2312995:
                    if (str2.equals("L186")) {
                        c7 = 25;
                        break;
                    }
                    break;
            }
            switch (c7) {
                case 0:
                    numValueOf = 2;
                    break;
                case 1:
                    numValueOf = 8;
                    break;
                case 2:
                    numValueOf = 32;
                    break;
                case 3:
                    numValueOf = 128;
                    break;
                case 4:
                    numValueOf = 512;
                    break;
                case 5:
                    numValueOf = 1;
                    break;
                case 6:
                    numValueOf = 4;
                    break;
                case 7:
                    numValueOf = 16;
                    break;
                case '\b':
                    numValueOf = 64;
                    break;
                case '\t':
                    numValueOf = 256;
                    break;
                case '\n':
                    numValueOf = 2048;
                    break;
                case 11:
                    numValueOf = 8192;
                    break;
                case '\f':
                    numValueOf = 32768;
                    break;
                case '\r':
                    numValueOf = 131072;
                    break;
                case 14:
                    numValueOf = Integer.valueOf(PKIFailureInfo.signerNotTrusted);
                    break;
                case 15:
                    numValueOf = Integer.valueOf(PKIFailureInfo.badSenderNonce);
                    break;
                case 16:
                    numValueOf = 8388608;
                    break;
                case 17:
                    numValueOf = 33554432;
                    break;
                case 18:
                    numValueOf = 1024;
                    break;
                case 19:
                    numValueOf = 4096;
                    break;
                case 20:
                    numValueOf = 16384;
                    break;
                case 21:
                    numValueOf = 65536;
                    break;
                case 22:
                    numValueOf = 262144;
                    break;
                case 23:
                    numValueOf = 1048576;
                    break;
                case 24:
                    numValueOf = 4194304;
                    break;
                case 25:
                    numValueOf = 16777216;
                    break;
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return new Pair(Integer.valueOf(i10), numValueOf);
        }
        ta.q.t("Unknown HEVC level string: ", str2);
        return null;
    }
}
