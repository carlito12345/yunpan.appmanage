package d2;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import j$.util.Objects;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import r1.e0;
import u1.f0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final String f4294a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4295b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4296c;

    /* renamed from: d, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f4297d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4298e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4299f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4300g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f4301h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4302i;

    /* renamed from: j, reason: collision with root package name */
    public int f4303j;

    /* renamed from: k, reason: collision with root package name */
    public int f4304k;
    public float l;

    public q(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z4, boolean z10, boolean z11, boolean z12, boolean z13) {
        str.getClass();
        this.f4294a = str;
        this.f4295b = str2;
        this.f4296c = str3;
        this.f4297d = codecCapabilities;
        this.f4300g = z;
        this.f4298e = z11;
        this.f4299f = z12;
        this.f4301h = z13;
        this.f4302i = e0.k(str2);
        this.l = -3.4028235E38f;
        this.f4303j = -1;
        this.f4304k = -1;
    }

    public static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Range achievableFrameRatesFor;
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        Point point = new Point(f0.e(i10, widthAlignment) * widthAlignment, f0.e(i11, heightAlignment) * heightAlignment);
        int i12 = point.x;
        int i13 = point.y;
        if (d10 == -1.0d || d10 < 1.0d) {
            return videoCapabilities.isSizeSupported(i12, i13);
        }
        double dFloor = Math.floor(d10);
        if (videoCapabilities.areSizeAndRateSupported(i12, i13, dFloor)) {
            return Build.VERSION.SDK_INT < 24 || (achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i12, i13)) == null || dFloor <= ((Double) achievableFrameRatesFor.getUpper()).doubleValue();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static q i(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z4, boolean z10, boolean z11) {
        boolean z12;
        boolean z13 = codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback");
        if (codecCapabilities != null) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        boolean z14 = z11 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"));
        if (Build.VERSION.SDK_INT < 35 || codecCapabilities == null || !codecCapabilities.isFeatureSupported("detached-surface")) {
            z12 = false;
        } else {
            String str4 = Build.MANUFACTURER;
            if (!str4.equals("Xiaomi") && !str4.equals("OPPO") && !str4.equals("realme") && !str4.equals("motorola") && !str4.equals("LENOVO")) {
                z12 = true;
            }
        }
        return new q(str, str2, str3, codecCapabilities, z, z4, z10, z13, z14, z12);
    }

    public final y1.d b(r1.p pVar, r1.p pVar2) {
        int i10;
        int i11 = !Objects.equals(pVar.f13523o, pVar2.f13523o) ? 8 : 0;
        if (this.f4302i) {
            if (pVar.A != pVar2.A) {
                i11 |= 1024;
            }
            boolean z = (pVar.f13529v == pVar2.f13529v && pVar.f13530w == pVar2.f13530w) ? false : true;
            if (!this.f4298e && z) {
                i11 |= 512;
            }
            r1.g gVar = pVar.E;
            boolean zE = r1.g.e(gVar);
            r1.g gVar2 = pVar2.E;
            if ((!zE || !r1.g.e(gVar2)) && !Objects.equals(gVar, gVar2)) {
                i11 |= 2048;
            }
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(this.f4294a) && !pVar.c(pVar2)) {
                i11 |= 2;
            }
            int i12 = pVar.f13531x;
            if (i12 != -1 && (i10 = pVar.f13532y) != -1 && i12 == pVar2.f13531x && i10 == pVar2.f13532y && z) {
                i11 |= 2;
            }
            if (i11 == 0 && Objects.equals(pVar2.f13523o, "video/dolby-vision")) {
                Pair pairB = u1.c.b(pVar);
                Pair pairB2 = u1.c.b(pVar2);
                if (pairB == null || pairB2 == null || !((Integer) pairB.first).equals(pairB2.first)) {
                    i11 |= 2;
                }
            }
            if (i11 == 0) {
                return new y1.d(this.f4294a, pVar, pVar2, pVar.c(pVar2) ? 3 : 2, 0);
            }
        } else {
            if (pVar.G != pVar2.G) {
                i11 |= 4096;
            }
            if (pVar.H != pVar2.H) {
                i11 |= 8192;
            }
            if (pVar.I != pVar2.I) {
                i11 |= 16384;
            }
            String str = this.f4295b;
            if (i11 == 0 && (str.equals("audio/mp4a-latm") || str.equals("audio/ac4"))) {
                Pair pairB3 = u1.c.b(pVar);
                Pair pairB4 = u1.c.b(pVar2);
                if (pairB3 != null && pairB4 != null) {
                    int iIntValue = ((Integer) pairB3.first).intValue();
                    int iIntValue2 = ((Integer) pairB4.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new y1.d(this.f4294a, pVar, pVar2, 3, 0);
                    }
                    if (str.equals("audio/ac4") && pairB3.equals(pairB4)) {
                        return new y1.d(this.f4294a, pVar, pVar2, 3, 0);
                    }
                }
            }
            if (i11 == 0 && (str.equals("audio/eac3-joc") || str.equals("audio/eac3"))) {
                return new y1.d(this.f4294a, pVar, pVar2, 3, 0);
            }
            if (!pVar.c(pVar2)) {
                i11 |= 32;
            }
            if ("audio/opus".equals(str)) {
                i11 |= 2;
            }
            if (i11 == 0) {
                return new y1.d(this.f4294a, pVar, pVar2, 1, 0);
            }
        }
        return new y1.d(this.f4294a, pVar, pVar2, 0, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(Context context, r1.p pVar, boolean z) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        boolean z4;
        int i10;
        int i11;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        Pair pair;
        String strA;
        Pair pairC;
        boolean[] zArr;
        int i12 = 4;
        int i13 = 3;
        Pair pairB = u1.c.b(pVar);
        String str = this.f4296c;
        String str2 = pVar.f13523o;
        if (str2 != null && str2.equals("video/mv-hevc")) {
            String strL = e0.l(str);
            if (strL.equals("video/mv-hevc")) {
                return true;
            }
            if (strL.equals("video/hevc")) {
                HashMap map = c0.f4247a;
                List list = pVar.r;
                int i14 = 0;
                loop0: while (true) {
                    if (i14 >= list.size()) {
                        pair = null;
                        strA = null;
                        break;
                    }
                    byte[] bArr = (byte[]) list.get(i14);
                    int length = bArr.length;
                    if (length > i13) {
                        boolean[] zArr2 = new boolean[i13];
                        u7.e0 e0Var = g0.f15471b;
                        u7.q.c(i12, "initialCapacity");
                        Object[] objArrCopyOf = new Object[i12];
                        int i15 = 0;
                        int i16 = 0;
                        while (i15 < bArr.length) {
                            int iC = v1.o.c(bArr, i15, bArr.length, zArr2);
                            if (iC != bArr.length) {
                                Integer numValueOf = Integer.valueOf(iC);
                                zArr = zArr2;
                                int i17 = i16 + 1;
                                int iF = u7.a0.f(objArrCopyOf.length, i17);
                                if (iF > objArrCopyOf.length) {
                                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                                }
                                objArrCopyOf[i16] = numValueOf;
                                i16 = i17;
                            } else {
                                zArr = zArr2;
                            }
                            i15 = iC + 3;
                            zArr2 = zArr;
                        }
                        int i18 = 3;
                        y0 y0VarI = g0.i(i16, objArrCopyOf);
                        int i19 = 0;
                        while (i19 < y0VarI.size()) {
                            if (((Integer) y0VarI.get(i19)).intValue() + i18 < length) {
                                t3.e eVar = new t3.e(bArr, ((Integer) y0VarI.get(i19)).intValue() + i18, length);
                                androidx.media3.exoplayer.video.k kVarH = v1.o.h(eVar);
                                if (kVarH.f1915a == 33 && kVarH.f1916b == 0) {
                                    eVar.l(4);
                                    int iF2 = eVar.f(i18);
                                    eVar.k();
                                    pair = null;
                                    v1.h hVarI = v1.o.i(eVar, true, iF2, null);
                                    strA = u1.c.a(hVarI.f16339a, hVarI.f16341c, hVarI.f16342d, hVarI.f16343e, hVarI.f16340b, hVarI.f16344f);
                                    break loop0;
                                }
                            }
                            i19++;
                            i18 = 3;
                        }
                    }
                    i14++;
                    i12 = 4;
                    i13 = 3;
                }
                if (strA == null) {
                    pairC = pair;
                } else {
                    String strTrim = strA.trim();
                    String str3 = f0.f15206a;
                    pairC = u1.c.c(strA, strTrim.split("\\.", -1), pVar.E);
                }
                pairB = pairC;
            }
        }
        if (pairB == null) {
            return true;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        int iIntValue2 = ((Integer) pairB.second).intValue();
        boolean zEquals = "video/dolby-vision".equals(str2);
        String str4 = this.f4295b;
        if (zEquals) {
            str4.getClass();
            switch (str4) {
                case "video/av01":
                case "video/hevc":
                    iIntValue = 2;
                    break;
                case "video/avc":
                    iIntValue = 8;
                    break;
            }
            iIntValue2 = 0;
        }
        if (!this.f4302i && !str4.equals("audio/ac4") && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4297d;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
        }
        if (str4.equals("audio/ac4") && codecProfileLevelArr.length == 0) {
            int i20 = ((codecCapabilities == null || (audioCapabilities = codecCapabilities.getAudioCapabilities()) == null) ? 2 : audioCapabilities.getMaxInputChannelCount()) > 18 ? 16 : 8;
            if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{c0.b(1026, i20)};
            } else {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{c0.b(257, i20), c0.b(513, i20), c0.b(514, i20), c0.b(1026, i20), c0.b(1028, i20)};
            }
        }
        if (Build.VERSION.SDK_INT == 23 && "video/x-vnd.on2.vp9".equals(str4) && codecProfileLevelArr.length == 0) {
            int iIntValue3 = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
            if (iIntValue3 >= 180000000) {
                i11 = 1024;
            } else if (iIntValue3 >= 120000000) {
                i11 = 512;
            } else if (iIntValue3 >= 60000000) {
                i11 = 256;
            } else if (iIntValue3 >= 30000000) {
                i11 = 128;
            } else if (iIntValue3 >= 18000000) {
                i11 = 64;
            } else if (iIntValue3 >= 12000000) {
                i11 = 32;
            } else {
                if (iIntValue3 >= 7200000) {
                    i10 = 1;
                    i11 = 16;
                } else if (iIntValue3 >= 3600000) {
                    i10 = 1;
                    i11 = 8;
                } else if (iIntValue3 >= 1800000) {
                    i10 = 1;
                    i11 = 4;
                } else if (iIntValue3 >= 800000) {
                    i10 = 1;
                    i11 = 2;
                } else {
                    i10 = 1;
                    i11 = 1;
                }
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[i10];
                codecProfileLevelArr[0] = c0.b(i10, i11);
            }
            i10 = 1;
            codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[i10];
            codecProfileLevelArr[0] = c0.b(i10, i11);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
            if (codecProfileLevel.profile == iIntValue && (codecProfileLevel.level >= iIntValue2 || !z)) {
                if ("video/hevc".equals(str4) && 2 == iIntValue) {
                    String str5 = Build.DEVICE;
                    if ("sailfish".equals(str5) || "marlin".equals(str5)) {
                        z4 = true;
                    }
                    if (!z4) {
                    }
                } else {
                    z4 = false;
                    if (!z4) {
                        return true;
                    }
                }
            }
        }
        h("codec.profileLevel, " + pVar.f13520k + ", " + str);
        return false;
    }

    public final boolean d(r1.p pVar) {
        return (Objects.equals(pVar.f13523o, "audio/flac") && pVar.I == 22 && Build.VERSION.SDK_INT < 34 && this.f4294a.equals("c2.android.flac.decoder")) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e(Context context, r1.p pVar) {
        int i10;
        String str = pVar.f13523o;
        String str2 = this.f4295b;
        if (!(str2.equals(str) || str2.equals(c0.c(pVar))) || !c(context, pVar, true) || !d(pVar)) {
            return false;
        }
        if (this.f4302i) {
            int i11 = pVar.f13529v;
            if (i11 <= 0 || (i10 = pVar.f13530w) <= 0) {
                return true;
            }
            return g(i11, i10, pVar.z);
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4297d;
        int i12 = pVar.H;
        if (i12 == -1) {
            int i13 = pVar.G;
            if (i13 == -1) {
                return true;
            }
            if (codecCapabilities == null) {
                h("channelCount.caps");
            } else {
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    h("channelCount.aCaps");
                } else {
                    int maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                    if (maxInputChannelCount <= 1 && ((Build.VERSION.SDK_INT < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                        int i14 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
                        u1.a.p("AssumedMaxChannelAdjustment: " + this.f4294a + ", [" + maxInputChannelCount + " to " + i14 + "]");
                        maxInputChannelCount = i14;
                    }
                    if (maxInputChannelCount >= i13) {
                        return true;
                    }
                    h("channelCount.support, " + i13);
                }
            }
        } else if (codecCapabilities == null) {
            h("sampleRate.caps");
        } else {
            MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities2 == null) {
                h("sampleRate.aCaps");
            } else if (!audioCapabilities2.isSampleRateSupported(i12)) {
                h("sampleRate.support, " + i12);
            }
        }
        return false;
    }

    public final boolean f(r1.p pVar) {
        if (this.f4302i) {
            return this.f4298e;
        }
        Pair pairB = u1.c.b(pVar);
        return pairB != null && ((Integer) pairB.first).intValue() == 42;
    }

    public final boolean g(int i10, int i11, double d10) {
        Boolean bool;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4297d;
        if (codecCapabilities == null) {
            h("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            h("sizeAndRate.vCaps");
            return false;
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 29) {
            int iA = (i12 < 29 || ((bool = qf.c.f13190a) != null && bool.booleanValue())) ? 0 : r.a(videoCapabilities, i10, i11, d10);
            if (iA == 2) {
                return true;
            }
            if (iA == 1) {
                StringBuilder sbO = ta.q.o(i10, i11, "sizeAndRate.cover, ", "x", "@");
                sbO.append(d10);
                h(sbO.toString());
                return false;
            }
        }
        if (!a(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11) {
                String str = this.f4294a;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && a(videoCapabilities, i11, i10, d10)) {
                    StringBuilder sbO2 = ta.q.o(i10, i11, "sizeAndRate.rotated, ", "x", "@");
                    sbO2.append(d10);
                    u1.a.e("AssumedSupport [" + sbO2.toString() + "] [" + str + ", " + this.f4295b + "] [" + f0.f15206a + "]");
                }
            }
            StringBuilder sbO3 = ta.q.o(i10, i11, "sizeAndRate.support, ", "x", "@");
            sbO3.append(d10);
            h(sbO3.toString());
            return false;
        }
        return true;
    }

    public final void h(String str) {
        StringBuilder sbD = da.b.d("NoSupport [", str, "] [");
        sbD.append(this.f4294a);
        sbD.append(", ");
        sbD.append(this.f4295b);
        sbD.append("] [");
        sbD.append(f0.f15206a);
        sbD.append("]");
        u1.a.e(sbD.toString());
    }

    public final String toString() {
        return this.f4294a;
    }
}
