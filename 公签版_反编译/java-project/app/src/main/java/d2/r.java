package d2;

import android.media.MediaCodecInfo;
import android.os.Build;
import java.util.List;
import r1.e0;
import u7.y0;

/* loaded from: classes.dex */
public abstract class r {
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        boolean z;
        int i12;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
            return 0;
        }
        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(i10, i11, (int) d10);
        int i13 = 0;
        while (true) {
            z = true;
            if (i13 >= supportedPerformancePoints.size()) {
                i12 = 1;
                break;
            }
            if (a2.c.f(supportedPerformancePoints.get(i13)).covers(performancePoint)) {
                i12 = 2;
                break;
            }
            i13++;
        }
        if (i12 == 1 && qf.c.f13190a == null) {
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 37) {
                z = false;
                qf.c.f13190a = Boolean.valueOf(z);
                if (!z) {
                    return 0;
                }
            } else {
                int iB = b(true);
                if (i14 < 35 ? !(b(false) != 2 || iB == 1) : iB != 1) {
                }
                qf.c.f13190a = Boolean.valueOf(z);
                if (!z) {
                }
            }
        }
        return i12;
    }

    public static int b(boolean z) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
        try {
            r1.o oVar = new r1.o();
            oVar.f13492n = e0.l("video/avc");
            r1.p pVar = new r1.p(oVar);
            if (pVar.f13523o != null) {
                y0 y0VarG = c0.g(l.f4292b, pVar, z, false);
                for (int i10 = 0; i10 < y0VarG.f15551d; i10++) {
                    if (((q) y0VarG.get(i10)).f4297d != null && (videoCapabilities = ((q) y0VarG.get(i10)).f4297d.getVideoCapabilities()) != null && (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(1280, 720, 60);
                        for (int i11 = 0; i11 < supportedPerformancePoints.size(); i11++) {
                            if (a2.c.f(supportedPerformancePoints.get(i11)).covers(performancePoint)) {
                                return 2;
                            }
                        }
                        return 1;
                    }
                }
            }
        } catch (y unused) {
        }
        return 0;
    }
}
