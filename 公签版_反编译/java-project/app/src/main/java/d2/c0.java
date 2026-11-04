package d2;

import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import r1.e0;
import u7.d0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public abstract class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f4247a = new HashMap();

    public static void a(String str, ArrayList arrayList) {
        if ("audio/raw".equals(str)) {
            if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && arrayList.size() == 1 && ((q) arrayList.get(0)).f4294a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayList.add(q.i("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
            }
            Collections.sort(arrayList, new v(new l()));
        }
        if (Build.VERSION.SDK_INT >= 32 || arrayList.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((q) arrayList.get(0)).f4294a)) {
            return;
        }
        arrayList.add((q) arrayList.remove(0));
    }

    public static MediaCodecInfo.CodecProfileLevel b(int i10, int i11) {
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = i10;
        codecProfileLevel.level = i11;
        return codecProfileLevel;
    }

    public static String c(r1.p pVar) {
        Pair pairB;
        if ("audio/eac3-joc".equals(pVar.f13523o)) {
            return "audio/eac3";
        }
        String str = pVar.f13523o;
        if ("video/dolby-vision".equals(str) && (pairB = u1.c.b(pVar)) != null) {
            int iIntValue = ((Integer) pairB.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return "video/hevc";
            }
            if (iIntValue == 512) {
                return "video/avc";
            }
            if (iIntValue == 1024) {
                r1.g gVar = pVar.E;
                if (gVar != null && gVar.f13444c == 6 && gVar.f13443b == 1) {
                    return null;
                }
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(str)) {
            return "video/hevc";
        }
        return null;
    }

    public static String d(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static synchronized List e(String str, boolean z, boolean z4) {
        try {
            x xVar = new x(str, z, z4);
            HashMap map = f4247a;
            List list = (List) map.get(xVar);
            if (list != null) {
                return list;
            }
            ArrayList arrayListF = f(xVar, new a0(z, z4, str.equals("video/mv-hevc")));
            if (z && arrayListF.isEmpty() && Build.VERSION.SDK_INT == 23) {
                arrayListF = f(xVar, new gf.g(19));
                if (!arrayListF.isEmpty()) {
                    u1.a.p("MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((q) arrayListF.get(0)).f4294a);
                }
            }
            a(str, arrayListF);
            g0 g0VarM = g0.m(arrayListF);
            map.put(xVar, g0VarM);
            return g0VarM;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList f(x xVar, z zVar) throws Exception {
        String strD;
        String str;
        String str2;
        int i10;
        boolean z;
        boolean zIsVendor;
        x xVar2 = xVar;
        z zVar2 = zVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str3 = xVar2.f4351a;
            int iR = zVar.r();
            boolean zW = zVar.w();
            int i11 = 0;
            while (i11 < iR) {
                MediaCodecInfo mediaCodecInfoD = zVar2.d(i11);
                int i12 = Build.VERSION.SDK_INT;
                if (i12 < 29 || !mediaCodecInfoD.isAlias()) {
                    String name = mediaCodecInfoD.getName();
                    if (h(mediaCodecInfoD, name, zW, str3) && (strD = d(mediaCodecInfoD, name, str3)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoD.getCapabilitiesForType(strD);
                            boolean zI = zVar2.i("tunneled-playback", strD, capabilitiesForType);
                            boolean zC = zVar2.c(capabilitiesForType, "tunneled-playback");
                            boolean z4 = xVar2.f4353c;
                            if ((z4 || !zC) && (!z4 || zI)) {
                                boolean zI2 = zVar2.i("secure-playback", strD, capabilitiesForType);
                                boolean zC2 = zVar2.c(capabilitiesForType, "secure-playback");
                                boolean z10 = xVar2.f4352b;
                                if ((z10 || !zC2) && (!z10 || zI2)) {
                                    boolean zIsHardwareAccelerated = i12 >= 29 ? mediaCodecInfoD.isHardwareAccelerated() : !i(mediaCodecInfoD, str3);
                                    boolean zI3 = i(mediaCodecInfoD, str3);
                                    if (i12 >= 29) {
                                        zIsVendor = mediaCodecInfoD.isVendor();
                                    } else {
                                        String strB0 = qf.c.b0(mediaCodecInfoD.getName());
                                        zIsVendor = (strB0.startsWith("omx.google.") || strB0.startsWith("c2.android.") || strB0.startsWith("c2.google.")) ? false : true;
                                    }
                                    if (!(zW && z10 == zI2) && (zW || z10)) {
                                        str = strD;
                                        i10 = i11;
                                        z = zW;
                                        if (!z && zI2) {
                                            StringBuilder sb2 = new StringBuilder();
                                            try {
                                                sb2.append(name);
                                                sb2.append(".secure");
                                                str2 = name;
                                                try {
                                                    arrayList.add(q.i(sb2.toString(), str3, str, capabilitiesForType, zIsHardwareAccelerated, zI3, zIsVendor, true));
                                                    return arrayList;
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    if (Build.VERSION.SDK_INT == 23 || arrayList.isEmpty()) {
                                                        u1.a.f("Failed to query codec " + str2 + " (" + str + ")");
                                                        throw e;
                                                    }
                                                    u1.a.f("Skipping codec " + str2 + " (failed to query capabilities)");
                                                    i11 = i10 + 1;
                                                    xVar2 = xVar;
                                                    zVar2 = zVar;
                                                    zW = z;
                                                }
                                            } catch (Exception e10) {
                                                e = e10;
                                                str2 = name;
                                            }
                                        }
                                    } else {
                                        str = strD;
                                        i10 = i11;
                                        z = zW;
                                        try {
                                            arrayList.add(q.i(name, str3, strD, capabilitiesForType, zIsHardwareAccelerated, zI3, zIsVendor, false));
                                        } catch (Exception e11) {
                                            e = e11;
                                            str2 = name;
                                            if (Build.VERSION.SDK_INT == 23) {
                                            }
                                            u1.a.f("Failed to query codec " + str2 + " (" + str + ")");
                                            throw e;
                                        }
                                    }
                                } else {
                                    i10 = i11;
                                    z = zW;
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                            str = strD;
                            str2 = name;
                            i10 = i11;
                            z = zW;
                        }
                    }
                }
                i11 = i10 + 1;
                xVar2 = xVar;
                zVar2 = zVar;
                zW = z;
            }
            return arrayList;
        } catch (Exception e13) {
            throw new y(e13);
        }
    }

    public static y0 g(l lVar, r1.p pVar, boolean z, boolean z4) {
        String str = pVar.f13523o;
        lVar.getClass();
        List listE = e(str, z, z4);
        String strC = c(pVar);
        Iterable iterableE = strC == null ? y0.f15549e : e(strC, z, z4);
        d0 d0Var = new d0();
        d0Var.d(listE);
        d0Var.d(iterableE);
        return d0Var.g();
    }

    public static boolean h(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Build.MANUFACTURER))) {
            String str3 = Build.DEVICE;
            if (str3.startsWith("zeroflte") || str3.startsWith("zerolte") || str3.startsWith("zenlte") || "SC-05G".equals(str3) || "marinelteatt".equals(str3) || "404SC".equals(str3) || "SC-04G".equals(str3) || "SCV31".equals(str3)) {
                return false;
            }
        }
        return (i10 == 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static boolean i(MediaCodecInfo mediaCodecInfo, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (e0.h(str)) {
            return true;
        }
        String strB0 = qf.c.b0(mediaCodecInfo.getName());
        if (strB0.startsWith("arc.")) {
            return false;
        }
        if (strB0.startsWith("omx.google.") || strB0.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strB0.startsWith("omx.sec.") && strB0.contains(".sw.")) || strB0.equals("omx.qcom.video.decoder.hevcswvdec") || strB0.startsWith("c2.android.") || strB0.startsWith("c2.google.")) {
            return true;
        }
        return (strB0.startsWith("omx.") || strB0.startsWith("c2.")) ? false : true;
    }
}
