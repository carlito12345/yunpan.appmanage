package androidx.media3.exoplayer.video;

import a2.g1;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hierynomus.smbfs.SmbPath;
import f2.c1;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.PriorityQueue;
import net.engio.mbassy.listener.MessageHandler;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;
import r1.a1;
import r1.b1;
import r1.o0;
import r1.q0;
import u7.y0;
import ua.i8;
import y1.d1;

/* loaded from: classes.dex */
public final class m extends d2.u {

    /* renamed from: s2, reason: collision with root package name */
    public static final int[] f1920s2 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: t2, reason: collision with root package name */
    public static boolean f1921t2;

    /* renamed from: u2, reason: collision with root package name */
    public static boolean f1922u2;
    public final boolean A1;
    public final a2.j0 B1;
    public final int C1;
    public final boolean D1;
    public final z E1;
    public final y F1;
    public final g1 G1;
    public final long H1;
    public final a0 I1;
    public final PriorityQueue J1;
    public k K1;
    public boolean L1;
    public boolean M1;
    public j0 N1;
    public boolean O1;
    public int P1;
    public List Q1;
    public Surface R1;
    public o S1;
    public u1.r T1;
    public boolean U1;
    public int V1;
    public int W1;
    public long X1;
    public int Y1;
    public int Z1;

    /* renamed from: a2, reason: collision with root package name */
    public int f1923a2;

    /* renamed from: b2, reason: collision with root package name */
    public d1 f1924b2;

    /* renamed from: c2, reason: collision with root package name */
    public long f1925c2;

    /* renamed from: d2, reason: collision with root package name */
    public boolean f1926d2;

    /* renamed from: e2, reason: collision with root package name */
    public long f1927e2;

    /* renamed from: f2, reason: collision with root package name */
    public int f1928f2;

    /* renamed from: g2, reason: collision with root package name */
    public long f1929g2;

    /* renamed from: h2, reason: collision with root package name */
    public b1 f1930h2;

    /* renamed from: i2, reason: collision with root package name */
    public b1 f1931i2;

    /* renamed from: j2, reason: collision with root package name */
    public int f1932j2;

    /* renamed from: k2, reason: collision with root package name */
    public boolean f1933k2;

    /* renamed from: l2, reason: collision with root package name */
    public int f1934l2;

    /* renamed from: m2, reason: collision with root package name */
    public l f1935m2;

    /* renamed from: n2, reason: collision with root package name */
    public x f1936n2;

    /* renamed from: o2, reason: collision with root package name */
    public long f1937o2;
    public long p2;

    /* renamed from: q2, reason: collision with root package name */
    public boolean f1938q2;

    /* renamed from: r2, reason: collision with root package name */
    public int f1939r2;

    /* renamed from: z1, reason: collision with root package name */
    public final Context f1940z1;

    public m(j jVar) {
        super(jVar.f1908a.getApplicationContext(), 2, jVar.f1910c, 30.0f);
        Context applicationContext = jVar.f1908a.getApplicationContext();
        this.f1940z1 = applicationContext;
        this.C1 = jVar.f1914g;
        this.N1 = null;
        this.B1 = new a2.j0(jVar.f1912e, jVar.f1913f, 1);
        this.A1 = this.N1 == null;
        this.E1 = new z(applicationContext, this, jVar.f1911d);
        this.F1 = new y();
        this.D1 = "NVIDIA".equals(Build.MANUFACTURER);
        this.T1 = u1.r.f15269c;
        this.V1 = 1;
        this.W1 = 0;
        this.f1930h2 = b1.f13418d;
        this.f1934l2 = 0;
        this.f1931i2 = null;
        this.f1932j2 = -1000;
        this.f1937o2 = -9223372036854775807L;
        this.p2 = -9223372036854775807L;
        this.G1 = new g1(4);
        this.J1 = new PriorityQueue();
        this.H1 = -15000L;
        this.I1 = new a0();
        this.f1924b2 = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008f A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean C0(String str) {
        char c7;
        char c10;
        char c11 = 26;
        boolean z = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (m.class) {
            try {
                if (!f1921t2) {
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 <= 28) {
                        String str2 = Build.DEVICE;
                        str2.getClass();
                        switch (str2.hashCode()) {
                            case -1339091551:
                                if (!str2.equals("dangal")) {
                                    c10 = 65535;
                                    break;
                                } else {
                                    c10 = 0;
                                    break;
                                }
                            case -1220081023:
                                if (str2.equals("dangalFHD")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case -1220066608:
                                if (str2.equals("dangalUHD")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case -1012436106:
                                if (str2.equals("oneday")) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case -760312546:
                                if (str2.equals("aquaman")) {
                                    c10 = 4;
                                    break;
                                }
                                break;
                            case -64886864:
                                if (str2.equals("magnolia")) {
                                    c10 = 5;
                                    break;
                                }
                                break;
                            case 3415681:
                                if (str2.equals("once")) {
                                    c10 = 6;
                                    break;
                                }
                                break;
                            case 825323514:
                                if (str2.equals("machuca")) {
                                    c10 = 7;
                                    break;
                                }
                                break;
                        }
                        switch (c10) {
                            default:
                                if (i10 > 27 || !"HWEML".equals(Build.DEVICE)) {
                                    String str3 = Build.MODEL;
                                    str3.getClass();
                                    switch (str3.hashCode()) {
                                        case -349662828:
                                            if (!str3.equals("AFTJMST12")) {
                                                c7 = 65535;
                                                break;
                                            } else {
                                                c7 = 0;
                                                break;
                                            }
                                        case -321033677:
                                            if (str3.equals("AFTKMST12")) {
                                                c7 = 1;
                                                break;
                                            }
                                            break;
                                        case 2006354:
                                            if (str3.equals("AFTA")) {
                                                c7 = 2;
                                                break;
                                            }
                                            break;
                                        case 2006367:
                                            if (str3.equals("AFTN")) {
                                                c7 = 3;
                                                break;
                                            }
                                            break;
                                        case 2006371:
                                            if (str3.equals("AFTR")) {
                                                c7 = 4;
                                                break;
                                            }
                                            break;
                                        case 1785421873:
                                            if (str3.equals("AFTEU011")) {
                                                c7 = 5;
                                                break;
                                            }
                                            break;
                                        case 1785421876:
                                            if (str3.equals("AFTEU014")) {
                                                c7 = 6;
                                                break;
                                            }
                                            break;
                                        case 1798172390:
                                            if (str3.equals("AFTSO001")) {
                                                c7 = 7;
                                                break;
                                            }
                                            break;
                                        case 2119412532:
                                            if (str3.equals("AFTEUFF014")) {
                                                c7 = '\b';
                                                break;
                                            }
                                            break;
                                    }
                                    switch (c7) {
                                        default:
                                            if (i10 <= 26) {
                                                String str4 = Build.DEVICE;
                                                str4.getClass();
                                                switch (str4.hashCode()) {
                                                    case -2144781245:
                                                        if (!str4.equals("GIONEE_SWW1609")) {
                                                            c11 = 65535;
                                                            break;
                                                        } else {
                                                            c11 = 0;
                                                            break;
                                                        }
                                                    case -2144781185:
                                                        if (str4.equals("GIONEE_SWW1627")) {
                                                            c11 = 1;
                                                            break;
                                                        }
                                                        break;
                                                    case -2144781160:
                                                        if (str4.equals("GIONEE_SWW1631")) {
                                                            c11 = 2;
                                                            break;
                                                        }
                                                        break;
                                                    case -2097309513:
                                                        if (str4.equals("K50a40")) {
                                                            c11 = 3;
                                                            break;
                                                        }
                                                        break;
                                                    case -2022874474:
                                                        if (str4.equals("CP8676_I02")) {
                                                            c11 = 4;
                                                            break;
                                                        }
                                                        break;
                                                    case -1978993182:
                                                        if (str4.equals("NX541J")) {
                                                            c11 = 5;
                                                            break;
                                                        }
                                                        break;
                                                    case -1978990237:
                                                        if (str4.equals("NX573J")) {
                                                            c11 = 6;
                                                            break;
                                                        }
                                                        break;
                                                    case -1936688988:
                                                        if (str4.equals("PGN528")) {
                                                            c11 = 7;
                                                            break;
                                                        }
                                                        break;
                                                    case -1936688066:
                                                        if (str4.equals("PGN610")) {
                                                            c11 = '\b';
                                                            break;
                                                        }
                                                        break;
                                                    case -1936688065:
                                                        if (str4.equals("PGN611")) {
                                                            c11 = '\t';
                                                            break;
                                                        }
                                                        break;
                                                    case -1931988508:
                                                        if (str4.equals("AquaPowerM")) {
                                                            c11 = '\n';
                                                            break;
                                                        }
                                                        break;
                                                    case -1885099851:
                                                        if (str4.equals("RAIJIN")) {
                                                            c11 = 11;
                                                            break;
                                                        }
                                                        break;
                                                    case -1696512866:
                                                        if (str4.equals("XT1663")) {
                                                            c11 = '\f';
                                                            break;
                                                        }
                                                        break;
                                                    case -1680025915:
                                                        if (str4.equals("ComioS1")) {
                                                            c11 = '\r';
                                                            break;
                                                        }
                                                        break;
                                                    case -1615810839:
                                                        if (str4.equals("Phantom6")) {
                                                            c11 = 14;
                                                            break;
                                                        }
                                                        break;
                                                    case -1600724499:
                                                        if (str4.equals("pacificrim")) {
                                                            c11 = 15;
                                                            break;
                                                        }
                                                        break;
                                                    case -1554255044:
                                                        if (str4.equals("vernee_M5")) {
                                                            c11 = 16;
                                                            break;
                                                        }
                                                        break;
                                                    case -1481772737:
                                                        if (str4.equals("panell_dl")) {
                                                            c11 = 17;
                                                            break;
                                                        }
                                                        break;
                                                    case -1481772730:
                                                        if (str4.equals("panell_ds")) {
                                                            c11 = 18;
                                                            break;
                                                        }
                                                        break;
                                                    case -1481772729:
                                                        if (str4.equals("panell_dt")) {
                                                            c11 = 19;
                                                            break;
                                                        }
                                                        break;
                                                    case -1320080169:
                                                        if (str4.equals("GiONEE_GBL7319")) {
                                                            c11 = 20;
                                                            break;
                                                        }
                                                        break;
                                                    case -1217592143:
                                                        if (str4.equals("BRAVIA_ATV2")) {
                                                            c11 = 21;
                                                            break;
                                                        }
                                                        break;
                                                    case -1180384755:
                                                        if (str4.equals("iris60")) {
                                                            c11 = 22;
                                                            break;
                                                        }
                                                        break;
                                                    case -1139198265:
                                                        if (str4.equals("Slate_Pro")) {
                                                            c11 = 23;
                                                            break;
                                                        }
                                                        break;
                                                    case -1052835013:
                                                        if (str4.equals("namath")) {
                                                            c11 = 24;
                                                            break;
                                                        }
                                                        break;
                                                    case -993250464:
                                                        if (str4.equals("A10-70F")) {
                                                            c11 = 25;
                                                            break;
                                                        }
                                                        break;
                                                    case -993250458:
                                                        if (!str4.equals("A10-70L")) {
                                                        }
                                                        break;
                                                    case -965403638:
                                                        if (str4.equals("s905x018")) {
                                                            c11 = 27;
                                                            break;
                                                        }
                                                        break;
                                                    case -958336948:
                                                        if (str4.equals("ELUGA_Ray_X")) {
                                                            c11 = 28;
                                                            break;
                                                        }
                                                        break;
                                                    case -879245230:
                                                        if (str4.equals("tcl_eu")) {
                                                            c11 = 29;
                                                            break;
                                                        }
                                                        break;
                                                    case -842500323:
                                                        if (str4.equals("nicklaus_f")) {
                                                            c11 = 30;
                                                            break;
                                                        }
                                                        break;
                                                    case -821392978:
                                                        if (str4.equals("A7000-a")) {
                                                            c11 = 31;
                                                            break;
                                                        }
                                                        break;
                                                    case -797483286:
                                                        if (str4.equals("SVP-DTV15")) {
                                                            c11 = ' ';
                                                            break;
                                                        }
                                                        break;
                                                    case -794946968:
                                                        if (str4.equals("watson")) {
                                                            c11 = '!';
                                                            break;
                                                        }
                                                        break;
                                                    case -788334647:
                                                        if (str4.equals("whyred")) {
                                                            c11 = '\"';
                                                            break;
                                                        }
                                                        break;
                                                    case -782144577:
                                                        if (str4.equals("OnePlus5T")) {
                                                            c11 = '#';
                                                            break;
                                                        }
                                                        break;
                                                    case -575125681:
                                                        if (str4.equals("GiONEE_CBL7513")) {
                                                            c11 = '$';
                                                            break;
                                                        }
                                                        break;
                                                    case -521118391:
                                                        if (str4.equals("GIONEE_GBL7360")) {
                                                            c11 = '%';
                                                            break;
                                                        }
                                                        break;
                                                    case -430914369:
                                                        if (str4.equals("Pixi4-7_3G")) {
                                                            c11 = '&';
                                                            break;
                                                        }
                                                        break;
                                                    case -290434366:
                                                        if (str4.equals("taido_row")) {
                                                            c11 = '\'';
                                                            break;
                                                        }
                                                        break;
                                                    case -282781963:
                                                        if (str4.equals("BLACK-1X")) {
                                                            c11 = '(';
                                                            break;
                                                        }
                                                        break;
                                                    case -277133239:
                                                        if (str4.equals("Z12_PRO")) {
                                                            c11 = ')';
                                                            break;
                                                        }
                                                        break;
                                                    case -173639913:
                                                        if (str4.equals("ELUGA_A3_Pro")) {
                                                            c11 = '*';
                                                            break;
                                                        }
                                                        break;
                                                    case -56598463:
                                                        if (str4.equals("woods_fn")) {
                                                            c11 = '+';
                                                            break;
                                                        }
                                                        break;
                                                    case 2126:
                                                        if (str4.equals("C1")) {
                                                            c11 = ',';
                                                            break;
                                                        }
                                                        break;
                                                    case 2564:
                                                        if (str4.equals("Q5")) {
                                                            c11 = '-';
                                                            break;
                                                        }
                                                        break;
                                                    case 2715:
                                                        if (str4.equals("V1")) {
                                                            c11 = '.';
                                                            break;
                                                        }
                                                        break;
                                                    case 2719:
                                                        if (str4.equals("V5")) {
                                                            c11 = '/';
                                                            break;
                                                        }
                                                        break;
                                                    case 3091:
                                                        if (str4.equals("b5")) {
                                                            c11 = '0';
                                                            break;
                                                        }
                                                        break;
                                                    case 3483:
                                                        if (str4.equals("mh")) {
                                                            c11 = '1';
                                                            break;
                                                        }
                                                        break;
                                                    case 73405:
                                                        if (str4.equals("JGZ")) {
                                                            c11 = '2';
                                                            break;
                                                        }
                                                        break;
                                                    case 75537:
                                                        if (str4.equals("M04")) {
                                                            c11 = '3';
                                                            break;
                                                        }
                                                        break;
                                                    case 75739:
                                                        if (str4.equals("M5c")) {
                                                            c11 = '4';
                                                            break;
                                                        }
                                                        break;
                                                    case 76779:
                                                        if (str4.equals("MX6")) {
                                                            c11 = '5';
                                                            break;
                                                        }
                                                        break;
                                                    case 78669:
                                                        if (str4.equals("P85")) {
                                                            c11 = '6';
                                                            break;
                                                        }
                                                        break;
                                                    case 79305:
                                                        if (str4.equals("PLE")) {
                                                            c11 = '7';
                                                            break;
                                                        }
                                                        break;
                                                    case 80618:
                                                        if (str4.equals("QX1")) {
                                                            c11 = '8';
                                                            break;
                                                        }
                                                        break;
                                                    case 88274:
                                                        if (str4.equals("Z80")) {
                                                            c11 = '9';
                                                            break;
                                                        }
                                                        break;
                                                    case 98846:
                                                        if (str4.equals("cv1")) {
                                                            c11 = ':';
                                                            break;
                                                        }
                                                        break;
                                                    case 98848:
                                                        if (str4.equals("cv3")) {
                                                            c11 = ';';
                                                            break;
                                                        }
                                                        break;
                                                    case 99329:
                                                        if (str4.equals("deb")) {
                                                            c11 = '<';
                                                            break;
                                                        }
                                                        break;
                                                    case 101481:
                                                        if (str4.equals("flo")) {
                                                            c11 = '=';
                                                            break;
                                                        }
                                                        break;
                                                    case 1513190:
                                                        if (str4.equals("1601")) {
                                                            c11 = '>';
                                                            break;
                                                        }
                                                        break;
                                                    case 1514184:
                                                        if (str4.equals("1713")) {
                                                            c11 = '?';
                                                            break;
                                                        }
                                                        break;
                                                    case 1514185:
                                                        if (str4.equals("1714")) {
                                                            c11 = '@';
                                                            break;
                                                        }
                                                        break;
                                                    case 2133089:
                                                        if (str4.equals("F01H")) {
                                                            c11 = 'A';
                                                            break;
                                                        }
                                                        break;
                                                    case 2133091:
                                                        if (str4.equals("F01J")) {
                                                            c11 = 'B';
                                                            break;
                                                        }
                                                        break;
                                                    case 2133120:
                                                        if (str4.equals("F02H")) {
                                                            c11 = 'C';
                                                            break;
                                                        }
                                                        break;
                                                    case 2133151:
                                                        if (str4.equals("F03H")) {
                                                            c11 = 'D';
                                                            break;
                                                        }
                                                        break;
                                                    case 2133182:
                                                        if (str4.equals("F04H")) {
                                                            c11 = 'E';
                                                            break;
                                                        }
                                                        break;
                                                    case 2133184:
                                                        if (str4.equals("F04J")) {
                                                            c11 = 'F';
                                                            break;
                                                        }
                                                        break;
                                                    case 2436959:
                                                        if (str4.equals("P681")) {
                                                            c11 = 'G';
                                                            break;
                                                        }
                                                        break;
                                                    case 2463773:
                                                        if (str4.equals("Q350")) {
                                                            c11 = 'H';
                                                            break;
                                                        }
                                                        break;
                                                    case 2464648:
                                                        if (str4.equals("Q427")) {
                                                            c11 = 'I';
                                                            break;
                                                        }
                                                        break;
                                                    case 2689555:
                                                        if (str4.equals("XE2X")) {
                                                            c11 = 'J';
                                                            break;
                                                        }
                                                        break;
                                                    case 3154429:
                                                        if (str4.equals("fugu")) {
                                                            c11 = 'K';
                                                            break;
                                                        }
                                                        break;
                                                    case 3284551:
                                                        if (str4.equals("kate")) {
                                                            c11 = Matrix.MATRIX_TYPE_RANDOM_LT;
                                                            break;
                                                        }
                                                        break;
                                                    case 3351335:
                                                        if (str4.equals("mido")) {
                                                            c11 = 'M';
                                                            break;
                                                        }
                                                        break;
                                                    case 3386211:
                                                        if (str4.equals("p212")) {
                                                            c11 = 'N';
                                                            break;
                                                        }
                                                        break;
                                                    case 41325051:
                                                        if (str4.equals("MEIZU_M5")) {
                                                            c11 = 'O';
                                                            break;
                                                        }
                                                        break;
                                                    case 51349633:
                                                        if (str4.equals("601LV")) {
                                                            c11 = 'P';
                                                            break;
                                                        }
                                                        break;
                                                    case 51350594:
                                                        if (str4.equals("602LV")) {
                                                            c11 = 'Q';
                                                            break;
                                                        }
                                                        break;
                                                    case 55178625:
                                                        if (str4.equals("Aura_Note_2")) {
                                                            c11 = Matrix.MATRIX_TYPE_RANDOM_REGULAR;
                                                            break;
                                                        }
                                                        break;
                                                    case 61542055:
                                                        if (str4.equals("A1601")) {
                                                            c11 = 'S';
                                                            break;
                                                        }
                                                        break;
                                                    case 65355429:
                                                        if (str4.equals("E5643")) {
                                                            c11 = 'T';
                                                            break;
                                                        }
                                                        break;
                                                    case 66214468:
                                                        if (str4.equals("F3111")) {
                                                            c11 = Matrix.MATRIX_TYPE_RANDOM_UT;
                                                            break;
                                                        }
                                                        break;
                                                    case 66214470:
                                                        if (str4.equals("F3113")) {
                                                            c11 = 'V';
                                                            break;
                                                        }
                                                        break;
                                                    case 66214473:
                                                        if (str4.equals("F3116")) {
                                                            c11 = 'W';
                                                            break;
                                                        }
                                                        break;
                                                    case 66215429:
                                                        if (str4.equals("F3211")) {
                                                            c11 = 'X';
                                                            break;
                                                        }
                                                        break;
                                                    case 66215431:
                                                        if (str4.equals("F3213")) {
                                                            c11 = 'Y';
                                                            break;
                                                        }
                                                        break;
                                                    case 66215433:
                                                        if (str4.equals("F3215")) {
                                                            c11 = Matrix.MATRIX_TYPE_ZERO;
                                                            break;
                                                        }
                                                        break;
                                                    case 66216390:
                                                        if (str4.equals("F3311")) {
                                                            c11 = '[';
                                                            break;
                                                        }
                                                        break;
                                                    case 76402249:
                                                        if (str4.equals("PRO7S")) {
                                                            c11 = SmbPath.SEPARATOR;
                                                            break;
                                                        }
                                                        break;
                                                    case 76404105:
                                                        if (str4.equals("Q4260")) {
                                                            c11 = ']';
                                                            break;
                                                        }
                                                        break;
                                                    case 76404911:
                                                        if (str4.equals("Q4310")) {
                                                            c11 = '^';
                                                            break;
                                                        }
                                                        break;
                                                    case 80963634:
                                                        if (str4.equals("V23GB")) {
                                                            c11 = '_';
                                                            break;
                                                        }
                                                        break;
                                                    case 82882791:
                                                        if (str4.equals("X3_HK")) {
                                                            c11 = '`';
                                                            break;
                                                        }
                                                        break;
                                                    case 98715550:
                                                        if (str4.equals("i9031")) {
                                                            c11 = 'a';
                                                            break;
                                                        }
                                                        break;
                                                    case 101370885:
                                                        if (str4.equals("l5460")) {
                                                            c11 = 'b';
                                                            break;
                                                        }
                                                        break;
                                                    case 102844228:
                                                        if (str4.equals("le_x6")) {
                                                            c11 = 'c';
                                                            break;
                                                        }
                                                        break;
                                                    case 165221241:
                                                        if (str4.equals("A2016a40")) {
                                                            c11 = 'd';
                                                            break;
                                                        }
                                                        break;
                                                    case 182191441:
                                                        if (str4.equals("CPY83_I00")) {
                                                            c11 = 'e';
                                                            break;
                                                        }
                                                        break;
                                                    case 245388979:
                                                        if (str4.equals("marino_f")) {
                                                            c11 = 'f';
                                                            break;
                                                        }
                                                        break;
                                                    case 287431619:
                                                        if (str4.equals("griffin")) {
                                                            c11 = 'g';
                                                            break;
                                                        }
                                                        break;
                                                    case 307593612:
                                                        if (str4.equals("A7010a48")) {
                                                            c11 = 'h';
                                                            break;
                                                        }
                                                        break;
                                                    case 308517133:
                                                        if (str4.equals("A7020a48")) {
                                                            c11 = 'i';
                                                            break;
                                                        }
                                                        break;
                                                    case 316215098:
                                                        if (str4.equals("TB3-730F")) {
                                                            c11 = 'j';
                                                            break;
                                                        }
                                                        break;
                                                    case 316215116:
                                                        if (str4.equals("TB3-730X")) {
                                                            c11 = 'k';
                                                            break;
                                                        }
                                                        break;
                                                    case 316246811:
                                                        if (str4.equals("TB3-850F")) {
                                                            c11 = 'l';
                                                            break;
                                                        }
                                                        break;
                                                    case 316246818:
                                                        if (str4.equals("TB3-850M")) {
                                                            c11 = 'm';
                                                            break;
                                                        }
                                                        break;
                                                    case 407160593:
                                                        if (str4.equals("Pixi5-10_4G")) {
                                                            c11 = 'n';
                                                            break;
                                                        }
                                                        break;
                                                    case 507412548:
                                                        if (str4.equals("QM16XE_U")) {
                                                            c11 = 'o';
                                                            break;
                                                        }
                                                        break;
                                                    case 793982701:
                                                        if (str4.equals("GIONEE_WBL5708")) {
                                                            c11 = 'p';
                                                            break;
                                                        }
                                                        break;
                                                    case 794038622:
                                                        if (str4.equals("GIONEE_WBL7365")) {
                                                            c11 = 'q';
                                                            break;
                                                        }
                                                        break;
                                                    case 794040393:
                                                        if (str4.equals("GIONEE_WBL7519")) {
                                                            c11 = 'r';
                                                            break;
                                                        }
                                                        break;
                                                    case 835649806:
                                                        if (str4.equals("manning")) {
                                                            c11 = 's';
                                                            break;
                                                        }
                                                        break;
                                                    case 917340916:
                                                        if (str4.equals("A7000plus")) {
                                                            c11 = 't';
                                                            break;
                                                        }
                                                        break;
                                                    case 958008161:
                                                        if (str4.equals("j2xlteins")) {
                                                            c11 = 'u';
                                                            break;
                                                        }
                                                        break;
                                                    case 1060579533:
                                                        if (str4.equals("panell_d")) {
                                                            c11 = 'v';
                                                            break;
                                                        }
                                                        break;
                                                    case 1150207623:
                                                        if (str4.equals("LS-5017")) {
                                                            c11 = 'w';
                                                            break;
                                                        }
                                                        break;
                                                    case 1176899427:
                                                        if (str4.equals("itel_S41")) {
                                                            c11 = 'x';
                                                            break;
                                                        }
                                                        break;
                                                    case 1280332038:
                                                        if (str4.equals("hwALE-H")) {
                                                            c11 = 'y';
                                                            break;
                                                        }
                                                        break;
                                                    case 1306947716:
                                                        if (str4.equals("EverStar_S")) {
                                                            c11 = 'z';
                                                            break;
                                                        }
                                                        break;
                                                    case 1349174697:
                                                        if (str4.equals("htc_e56ml_dtul")) {
                                                            c11 = '{';
                                                            break;
                                                        }
                                                        break;
                                                    case 1522194893:
                                                        if (str4.equals("woods_f")) {
                                                            c11 = '|';
                                                            break;
                                                        }
                                                        break;
                                                    case 1691543273:
                                                        if (str4.equals("CPH1609")) {
                                                            c11 = '}';
                                                            break;
                                                        }
                                                        break;
                                                    case 1691544261:
                                                        if (str4.equals("CPH1715")) {
                                                            c11 = '~';
                                                            break;
                                                        }
                                                        break;
                                                    case 1709443163:
                                                        if (str4.equals("iball8735_9806")) {
                                                            c11 = 127;
                                                            break;
                                                        }
                                                        break;
                                                    case 1865889110:
                                                        if (str4.equals("santoni")) {
                                                            c11 = 128;
                                                            break;
                                                        }
                                                        break;
                                                    case 1906253259:
                                                        if (str4.equals("PB2-670M")) {
                                                            c11 = 129;
                                                            break;
                                                        }
                                                        break;
                                                    case 1977196784:
                                                        if (str4.equals("Infinix-X572")) {
                                                            c11 = 130;
                                                            break;
                                                        }
                                                        break;
                                                    case 2006372676:
                                                        if (str4.equals("BRAVIA_ATV3_4K")) {
                                                            c11 = 131;
                                                            break;
                                                        }
                                                        break;
                                                    case 2019281702:
                                                        if (str4.equals("DM-01K")) {
                                                            c11 = 132;
                                                            break;
                                                        }
                                                        break;
                                                    case 2029784656:
                                                        if (str4.equals("HWBLN-H")) {
                                                            c11 = 133;
                                                            break;
                                                        }
                                                        break;
                                                    case 2030379515:
                                                        if (str4.equals("HWCAM-H")) {
                                                            c11 = 134;
                                                            break;
                                                        }
                                                        break;
                                                    case 2033393791:
                                                        if (str4.equals("ASUS_X00AD_2")) {
                                                            c11 = 135;
                                                            break;
                                                        }
                                                        break;
                                                    case 2047190025:
                                                        if (str4.equals("ELUGA_Note")) {
                                                            c11 = 136;
                                                            break;
                                                        }
                                                        break;
                                                    case 2047252157:
                                                        if (str4.equals("ELUGA_Prim")) {
                                                            c11 = 137;
                                                            break;
                                                        }
                                                        break;
                                                    case 2048319463:
                                                        if (str4.equals("HWVNS-H")) {
                                                            c11 = 138;
                                                            break;
                                                        }
                                                        break;
                                                    case 2048855701:
                                                        if (str4.equals("HWWAS-H")) {
                                                            c11 = 139;
                                                            break;
                                                        }
                                                        break;
                                                }
                                                switch (c11) {
                                                    default:
                                                        if (str3.equals("JSN-L21")) {
                                                        }
                                                        break;
                                                    case 0:
                                                    case 1:
                                                    case 2:
                                                    case 3:
                                                    case 4:
                                                    case 5:
                                                    case 6:
                                                    case 7:
                                                    case '\b':
                                                    case '\t':
                                                    case '\n':
                                                    case 11:
                                                    case '\f':
                                                    case '\r':
                                                    case 14:
                                                    case 15:
                                                    case 16:
                                                    case 17:
                                                    case 18:
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                    case 23:
                                                    case 24:
                                                    case 25:
                                                    case 26:
                                                    case 27:
                                                    case 28:
                                                    case 29:
                                                    case 30:
                                                    case 31:
                                                    case ' ':
                                                    case '!':
                                                    case '\"':
                                                    case '#':
                                                    case '$':
                                                    case '%':
                                                    case '&':
                                                    case '\'':
                                                    case '(':
                                                    case ')':
                                                    case '*':
                                                    case '+':
                                                    case ',':
                                                    case '-':
                                                    case '.':
                                                    case '/':
                                                    case '0':
                                                    case '1':
                                                    case '2':
                                                    case '3':
                                                    case '4':
                                                    case '5':
                                                    case '6':
                                                    case '7':
                                                    case '8':
                                                    case '9':
                                                    case ':':
                                                    case ';':
                                                    case '<':
                                                    case '=':
                                                    case '>':
                                                    case '?':
                                                    case '@':
                                                    case 'A':
                                                    case 'B':
                                                    case 'C':
                                                    case 'D':
                                                    case 'E':
                                                    case 'F':
                                                    case 'G':
                                                    case 'H':
                                                    case 'I':
                                                    case 'J':
                                                    case 'K':
                                                    case 'L':
                                                    case 'M':
                                                    case 'N':
                                                    case 'O':
                                                    case 'P':
                                                    case 'Q':
                                                    case 'R':
                                                    case 'S':
                                                    case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                                    case 'U':
                                                    case 'V':
                                                    case 'W':
                                                    case 'X':
                                                    case 'Y':
                                                    case 'Z':
                                                    case '[':
                                                    case '\\':
                                                    case ']':
                                                    case '^':
                                                    case '_':
                                                    case '`':
                                                    case 'a':
                                                    case 'b':
                                                    case 'c':
                                                    case 'd':
                                                    case 'e':
                                                    case 'f':
                                                    case 'g':
                                                    case 'h':
                                                    case 'i':
                                                    case 'j':
                                                    case 'k':
                                                    case 'l':
                                                    case 'm':
                                                    case 'n':
                                                    case 'o':
                                                    case 'p':
                                                    case 'q':
                                                    case 'r':
                                                    case 's':
                                                    case 't':
                                                    case 'u':
                                                    case 'v':
                                                    case 'w':
                                                    case 'x':
                                                    case 'y':
                                                    case 'z':
                                                    case '{':
                                                    case '|':
                                                    case '}':
                                                    case '~':
                                                    case 127:
                                                    case 128:
                                                    case 129:
                                                    case 130:
                                                    case 131:
                                                    case 132:
                                                    case 133:
                                                    case 134:
                                                    case 135:
                                                    case 136:
                                                    case 137:
                                                    case 138:
                                                    case 139:
                                                        z = true;
                                                        break;
                                                }
                                            }
                                            break;
                                        case 0:
                                        case 1:
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case '\b':
                                            break;
                                    }
                                }
                                break;
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                break;
                        }
                        f1922u2 = z;
                        f1921t2 = true;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f1922u2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int D0(d2.q qVar, r1.p pVar) {
        int i10;
        char c7 = 2;
        int i11 = pVar.f13529v;
        if (i11 == -1 || (i10 = pVar.f13530w) == -1) {
            return -1;
        }
        String str = pVar.f13523o;
        str.getClass();
        if ("video/dolby-vision".equals(str)) {
            Pair pairB = u1.c.b(pVar);
            if (pairB == null) {
                str = "video/hevc";
            } else {
                int iIntValue = ((Integer) pairB.first).intValue();
                if (iIntValue == 512 || iIntValue == 1 || iIntValue == 2) {
                    str = "video/avc";
                } else if (iIntValue == 1024) {
                    str = "video/av01";
                }
            }
        }
        switch (str.hashCode()) {
            case -1664118616:
                if (!str.equals("video/3gpp")) {
                    c7 = 65535;
                    break;
                } else {
                    c7 = 0;
                    break;
                }
            case -1662735862:
                if (str.equals("video/av01")) {
                    c7 = 1;
                    break;
                }
                break;
            case -1662541442:
                if (!str.equals("video/hevc")) {
                }
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c7 = 3;
                    break;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c7 = 4;
                    break;
                }
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c7 = 5;
                    break;
                }
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c7 = 6;
                    break;
                }
                break;
        }
        switch (c7) {
            case 0:
            case 1:
            case 3:
            case 5:
                return ((i11 * i10) * 3) / 4;
            case 2:
                return Math.max(PKIFailureInfo.badSenderNonce, ((i11 * i10) * 3) / 4);
            case 4:
                String str2 = Build.MODEL;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(Build.MANUFACTURER) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && qVar.f4299f)))) {
                    return -1;
                }
                return ((u1.f0.e(i10, 16) * u1.f0.e(i11, 16)) * 768) / 4;
            case 6:
                return ((i11 * i10) * 3) / 8;
            default:
                return -1;
        }
    }

    public static List E0(Context context, d2.l lVar, r1.p pVar, boolean z, boolean z4) {
        List listE;
        String str = pVar.f13523o;
        if (str == null) {
            return y0.f15549e;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !s1.g.p(context)) {
            String strC = d2.c0.c(pVar);
            if (strC == null) {
                listE = y0.f15549e;
            } else {
                lVar.getClass();
                listE = d2.c0.e(strC, z, z4);
            }
            if (!listE.isEmpty()) {
                return listE;
            }
        }
        return d2.c0.g(lVar, pVar, z, z4);
    }

    public static int F0(d2.q qVar, r1.p pVar) {
        if (pVar.f13524p == -1) {
            return D0(qVar, pVar);
        }
        List list = pVar.r;
        int size = list.size();
        int length = 0;
        for (int i10 = 0; i10 < size; i10++) {
            length += ((byte[]) list.get(i10)).length;
        }
        return pVar.f13524p + length;
    }

    @Override // d2.u, y1.a
    public final void A(float f10, float f11) {
        super.A(f10, f11);
        j0 j0Var = this.N1;
        if (j0Var != null) {
            j0Var.m(f10);
        } else {
            z zVar = this.E1;
            zVar.getClass();
            a9.o.k(f10 > 0.0f);
            if (f10 != zVar.f1995k) {
                zVar.f1995k = f10;
                zVar.f1986b.onPlaybackSpeed(f10);
            }
        }
        a0 a0Var = this.I1;
        if (a0Var != null) {
            a0Var.c(f10);
        }
    }

    @Override // y1.a
    public final boolean D(long j10) {
        if (this.f4325i1 == -9223372036854775807L || j10 < this.f1925c2) {
            return false;
        }
        long j11 = this.f4333q1;
        return j11 == -9223372036854775807L || j10 > j11;
    }

    @Override // d2.u
    public final y1.d G(d2.q qVar, r1.p pVar, r1.p pVar2, boolean z) {
        int i10;
        y1.d dVarB = qVar.b(pVar, pVar2);
        k kVar = this.K1;
        kVar.getClass();
        int i11 = pVar2.f13529v;
        int i12 = kVar.f1915a;
        int i13 = dVarB.f18612e;
        if (i11 > i12 || pVar2.f13530w > kVar.f1916b) {
            i13 |= 256;
        }
        if (F0(qVar, pVar2) > kVar.f1917c) {
            i13 |= 64;
        }
        if (this.W1 != Integer.MIN_VALUE && (i10 = Build.VERSION.SDK_INT) < 31 && (i10 != 30 || Build.MODEL.startsWith("MiTV"))) {
            float f10 = pVar.z;
            if (f10 != -1.0f) {
                float f11 = pVar2.z;
                if (f11 != -1.0f && (!qVar.f4299f || !z)) {
                    if (Math.abs((Math.max(f11, f10) / Math.min(f11, f10)) - Math.round(r15)) > 0.01f) {
                        i13 |= 65536;
                    }
                }
            }
        }
        int i14 = i13;
        return new y1.d(qVar.f4294a, pVar, pVar2, i14 != 0 ? 0 : dVarB.f18611d, i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Surface G0(d2.q qVar) {
        boolean z;
        n nVar;
        j0 j0Var = this.N1;
        if (j0Var != null) {
            return j0Var.c();
        }
        Surface surface = this.R1;
        if (surface != null) {
            return surface;
        }
        if (Build.VERSION.SDK_INT >= 35 && qVar.f4301h) {
            return null;
        }
        a9.o.t(O0(qVar));
        o oVar = this.S1;
        if (oVar != null && oVar.f1948a != qVar.f4299f && oVar != null) {
            oVar.release();
            this.S1 = null;
        }
        if (this.S1 == null) {
            Context context = this.f1940z1;
            boolean z4 = qVar.f4299f;
            boolean z10 = false;
            if (z4) {
                if (!o.b(context)) {
                    z = false;
                }
                a9.o.t(z);
                nVar = new n();
                int i10 = !z4 ? o.f1946d : 0;
                nVar.start();
                Handler handler = new Handler(nVar.getLooper(), nVar);
                nVar.f1942b = handler;
                nVar.f1941a = new u1.g(handler);
                synchronized (nVar) {
                    nVar.f1942b.obtainMessage(1, i10, 0).sendToTarget();
                    while (nVar.f1945e == null && nVar.f1944d == null && nVar.f1943c == null) {
                        try {
                            nVar.wait();
                        } catch (InterruptedException unused) {
                            z10 = true;
                        }
                    }
                }
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                RuntimeException runtimeException = nVar.f1944d;
                if (runtimeException != null) {
                    throw runtimeException;
                }
                Error error = nVar.f1943c;
                if (error != null) {
                    throw error;
                }
                o oVar2 = nVar.f1945e;
                oVar2.getClass();
                this.S1 = oVar2;
            } else {
                int i11 = o.f1946d;
            }
            z = true;
            a9.o.t(z);
            nVar = new n();
            if (!z4) {
            }
            nVar.start();
            Handler handler2 = new Handler(nVar.getLooper(), nVar);
            nVar.f1942b = handler2;
            nVar.f1941a = new u1.g(handler2);
            synchronized (nVar) {
            }
        }
        return this.S1;
    }

    @Override // d2.u
    public final d2.p H(IllegalStateException illegalStateException, d2.q qVar) {
        return new g(illegalStateException, qVar, this.R1);
    }

    public final boolean H0(d2.q qVar) {
        Surface surface;
        return this.N1 != null || ((surface = this.R1) != null && surface.isValid()) || ((Build.VERSION.SDK_INT >= 35 && qVar.f4301h) || O0(qVar));
    }

    public final boolean I0(x1.g gVar) {
        if (k() || gVar.c(PKIFailureInfo.duplicateCertReq)) {
            return true;
        }
        long j10 = this.p2;
        return j10 == -9223372036854775807L || j10 - (gVar.f18089g - this.f4332p1.f4312c) <= 100000;
    }

    public final void J0() {
        if (this.Y1 > 0) {
            this.f18558g.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = jElapsedRealtime - this.X1;
            int i10 = this.Y1;
            a2.j0 j0Var = this.B1;
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new e0(j0Var, i10, j10));
            }
            this.Y1 = 0;
            this.X1 = jElapsedRealtime;
        }
    }

    public final void K0() {
        d2.n nVar;
        if (this.f1933k2 && (nVar = this.R) != null) {
            this.f1935m2 = new l(this, nVar);
            if (Build.VERSION.SDK_INT >= 33) {
                Bundle bundle = new Bundle();
                bundle.putInt("tunnel-peek", 1);
                nVar.e(bundle);
            }
        }
    }

    public final void L0(d2.n nVar, int i10, long j10) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        nVar.o(i10, j10);
        Trace.endSection();
        this.f4331o1.f18591e++;
        this.Z1 = 0;
        if (this.N1 == null) {
            b1 b1Var = this.f1930h2;
            boolean zEquals = b1Var.equals(b1.f13418d);
            a2.j0 j0Var = this.B1;
            if (!zEquals && !b1Var.equals(this.f1931i2)) {
                this.f1931i2 = b1Var;
                j0Var.c(b1Var);
            }
            z zVar = this.E1;
            boolean z = zVar.f1989e != 3;
            zVar.f1989e = 3;
            zVar.l.getClass();
            zVar.f1991g = u1.f0.G(SystemClock.elapsedRealtime());
            if (!z || (surface = this.R1) == null) {
                return;
            }
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new f0(j0Var, surface, SystemClock.elapsedRealtime()));
            }
            this.U1 = true;
        }
    }

    public final void M0(Object obj) {
        Handler handler;
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        Surface surface2 = this.R1;
        a2.j0 j0Var = this.B1;
        if (surface2 == surface) {
            if (surface != null) {
                b1 b1Var = this.f1931i2;
                if (b1Var != null) {
                    j0Var.c(b1Var);
                }
                Surface surface3 = this.R1;
                if (surface3 == null || !this.U1 || (handler = j0Var.f195b) == null) {
                    return;
                }
                handler.post(new f0(j0Var, surface3, SystemClock.elapsedRealtime()));
                return;
            }
            return;
        }
        this.R1 = surface;
        j0 j0Var2 = this.N1;
        z zVar = this.E1;
        if (j0Var2 == null) {
            zVar.e(surface);
        }
        this.U1 = false;
        int i10 = this.f18559h;
        d2.n nVar = this.R;
        if (nVar != null && this.N1 == null) {
            d2.q qVar = this.f4323h0;
            qVar.getClass();
            if (!H0(qVar) || this.L1) {
                m0();
                W();
            } else {
                Surface surfaceG0 = G0(qVar);
                if (surfaceG0 != null) {
                    nVar.E(surfaceG0);
                } else {
                    if (Build.VERSION.SDK_INT < 35) {
                        throw new IllegalStateException();
                    }
                    nVar.n();
                }
            }
        }
        if (surface != null) {
            b1 b1Var2 = this.f1931i2;
            if (b1Var2 != null) {
                j0Var.c(b1Var2);
            }
        } else {
            this.f1931i2 = null;
            j0 j0Var3 = this.N1;
            if (j0Var3 != null) {
                j0Var3.n();
            }
        }
        if (i10 == 2) {
            j0 j0Var4 = this.N1;
            if (j0Var4 != null) {
                j0Var4.s(true);
            } else {
                zVar.c(true);
            }
        }
        K0();
    }

    @Override // d2.u
    public final int N(x1.g gVar) {
        if (Build.VERSION.SDK_INT < 34) {
            return 0;
        }
        d1 d1Var = this.f1924b2;
        return (((d1Var == null || !d1Var.f18627e) && !this.f1933k2) || gVar.f18089g >= this.l || I0(gVar)) ? 0 : 32;
    }

    public final boolean N0(long j10, long j11, boolean z, boolean z4) {
        if (this.N1 != null && this.A1) {
            j11 -= -this.f1937o2;
        }
        if (j10 >= -500000 || z) {
            return false;
        }
        c1 c1Var = this.f18560i;
        c1Var.getClass();
        int iM = c1Var.m(j11 - this.f18562k);
        if (iM == 0) {
            return false;
        }
        this.f1925c2 = j11;
        PriorityQueue priorityQueue = this.J1;
        if (z4) {
            y1.c cVar = this.f4331o1;
            int i10 = cVar.f18590d + iM;
            cVar.f18590d = i10;
            cVar.f18592f += this.f1923a2;
            cVar.f18590d = priorityQueue.size() + i10;
        } else {
            this.f4331o1.f18596j++;
            Q0(priorityQueue.size() + iM, this.f1923a2);
        }
        if (this.R != null) {
            if (w0()) {
                m0();
                W();
            } else if (u0()) {
                L();
            } else {
                this.f4338t1 = true;
            }
        }
        j0 j0Var = this.N1;
        if (j0Var != null) {
            j0Var.p(false);
        }
        return true;
    }

    @Override // d2.u
    public final float O(float f10, r1.p pVar, r1.p[] pVarArr) {
        d2.q qVar;
        float fMax = -1.0f;
        for (r1.p pVar2 : pVarArr) {
            float f11 = pVar2.z;
            if (f11 != -1.0f) {
                fMax = Math.max(fMax, f11);
            }
        }
        float f12 = fMax == -1.0f ? -1.0f : fMax * f10;
        if (this.f1924b2 == null || (qVar = this.f4323h0) == null) {
            return f12;
        }
        int i10 = pVar.f13529v;
        float f13 = -3.4028235E38f;
        if (qVar.f4302i) {
            float f14 = qVar.l;
            int i11 = pVar.f13530w;
            if (f14 != -3.4028235E38f && qVar.f4303j == i10 && qVar.f4304k == i11) {
                f13 = f14;
            } else {
                float f15 = 1024.0f;
                if (!qVar.g(i10, i11, 1024.0f)) {
                    f13 = 0.0f;
                    while (true) {
                        float f16 = f15 - f13;
                        if (Math.abs(f16) <= 5.0f) {
                            break;
                        }
                        float f17 = (f16 / 2.0f) + f13;
                        if (qVar.g(i10, i11, f17)) {
                            f13 = f17;
                        } else {
                            f15 = f17;
                        }
                    }
                } else {
                    f13 = 1024.0f;
                }
                qVar.l = f13;
                qVar.f4303j = i10;
                qVar.f4304k = i11;
            }
        }
        return f12 != -1.0f ? Math.max(f12, f13) : f13;
    }

    public final boolean O0(d2.q qVar) {
        return (this.f1933k2 || C0(qVar.f4294a) || (qVar.f4299f && !o.b(this.f1940z1))) ? false : true;
    }

    @Override // d2.u
    public final ArrayList P(d2.l lVar, r1.p pVar, boolean z) {
        boolean z4 = this.f1933k2;
        Context context = this.f1940z1;
        List listE0 = E0(context, lVar, pVar, z, z4);
        HashMap map = d2.c0.f4247a;
        ArrayList arrayList = new ArrayList(listE0);
        Collections.sort(arrayList, new d2.v(new d2.w(context, 0, pVar)));
        return arrayList;
    }

    public final void P0(d2.n nVar, int i10) {
        Trace.beginSection("skipVideoBuffer");
        nVar.h(i10);
        Trace.endSection();
        this.f4331o1.f18592f++;
    }

    public final void Q0(int i10, int i11) {
        y1.c cVar = this.f4331o1;
        cVar.f18594h += i10;
        int i12 = i10 + i11;
        cVar.f18593g += i12;
        this.Y1 += i12;
        int i13 = this.Z1 + i12;
        this.Z1 = i13;
        cVar.f18595i = Math.max(i13, cVar.f18595i);
        int i14 = this.C1;
        if (i14 <= 0 || this.Y1 < i14) {
            return;
        }
        J0();
    }

    public final void R0(f2.c0 c0Var) {
        q0 q0Var = this.f18566q;
        if (q0Var.p()) {
            this.p2 = -9223372036854775807L;
            return;
        }
        int iB = q0Var.b(c0Var.f5236a);
        if (iB == -1) {
            this.p2 = -9223372036854775807L;
        } else {
            this.p2 = q0Var.f(iB, new o0(), false).f13506d;
        }
    }

    @Override // d2.u
    public final ba.i S(d2.q qVar, r1.p pVar, MediaCrypto mediaCrypto, float f10) {
        int i10;
        r1.g gVar;
        int i11;
        k kVar;
        Point point;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        boolean z;
        int i12;
        int i13;
        Pair pairB;
        int iD0;
        String str = qVar.f4296c;
        r1.p[] pVarArr = this.f18561j;
        pVarArr.getClass();
        int iMax = pVar.f13529v;
        int iF0 = F0(qVar, pVar);
        int length = pVarArr.length;
        float f11 = pVar.z;
        int i14 = pVar.f13529v;
        r1.g gVar2 = pVar.E;
        int i15 = pVar.f13530w;
        if (length == 1) {
            if (iF0 != -1 && (iD0 = D0(qVar, pVar)) != -1) {
                iF0 = Math.min((int) (iF0 * 1.5f), iD0);
            }
            kVar = new k(iMax, i15, iF0);
            i10 = i14;
            gVar = gVar2;
            i11 = i15;
        } else {
            int length2 = pVarArr.length;
            int iMax2 = i15;
            int i16 = 0;
            boolean z4 = false;
            while (i16 < length2) {
                r1.p pVar2 = pVarArr[i16];
                r1.p[] pVarArr2 = pVarArr;
                if (gVar2 != null && pVar2.E == null) {
                    r1.o oVar = new r1.o(pVar2);
                    oVar.D = gVar2;
                    pVar2 = new r1.p(oVar);
                }
                if (qVar.b(pVar, pVar2).f18611d != 0) {
                    int i17 = pVar2.f13530w;
                    i13 = length2;
                    int i18 = pVar2.f13529v;
                    z4 |= i18 == -1 || i17 == -1;
                    iMax = Math.max(iMax, i18);
                    iMax2 = Math.max(iMax2, i17);
                    iF0 = Math.max(iF0, F0(qVar, pVar2));
                } else {
                    i13 = length2;
                }
                i16++;
                pVarArr = pVarArr2;
                length2 = i13;
            }
            if (z4) {
                u1.a.p("Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                boolean z10 = i15 > i14;
                int i19 = z10 ? i15 : i14;
                int i20 = z10 ? i14 : i15;
                gVar = gVar2;
                float f12 = i20 / i19;
                int[] iArr = f1920s2;
                i10 = i14;
                i11 = i15;
                int i21 = 0;
                while (i21 < 9) {
                    int i22 = iArr[i21];
                    int[] iArr2 = iArr;
                    int i23 = (int) (i22 * f12);
                    if (i22 > i19 && i23 > i20) {
                        int i24 = i19;
                        int i25 = z10 ? i23 : i22;
                        if (!z10) {
                            i22 = i23;
                        }
                        MediaCodecInfo.CodecCapabilities codecCapabilities = qVar.f4297d;
                        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                            z = z10;
                            i12 = i20;
                            point = null;
                        } else {
                            z = z10;
                            int widthAlignment = videoCapabilities.getWidthAlignment();
                            int heightAlignment = videoCapabilities.getHeightAlignment();
                            i12 = i20;
                            point = new Point(u1.f0.e(i25, widthAlignment) * widthAlignment, u1.f0.e(i22, heightAlignment) * heightAlignment);
                        }
                        if (point != null && qVar.g(point.x, point.y, f11)) {
                            break;
                        }
                        i21++;
                        iArr = iArr2;
                        i19 = i24;
                        z10 = z;
                        i20 = i12;
                    } else {
                        break;
                    }
                }
                point = null;
                if (point != null) {
                    iMax = Math.max(iMax, point.x);
                    iMax2 = Math.max(iMax2, point.y);
                    r1.o oVar2 = new r1.o(pVar);
                    oVar2.f13498u = iMax;
                    oVar2.f13499v = iMax2;
                    iF0 = Math.max(iF0, D0(qVar, new r1.p(oVar2)));
                    u1.a.p("Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                }
            } else {
                i10 = i14;
                gVar = gVar2;
                i11 = i15;
            }
            kVar = new k(iMax, iMax2, iF0);
        }
        this.K1 = kVar;
        int i26 = this.f1933k2 ? this.f1934l2 : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i10);
        mediaFormat.setInteger("height", i11);
        u1.a.o(mediaFormat, pVar.r);
        if (f11 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f11);
        }
        u1.a.n(mediaFormat, "rotation-degrees", pVar.A);
        if (gVar != null) {
            r1.g gVar3 = gVar;
            u1.a.n(mediaFormat, "color-transfer", gVar3.f13444c);
            u1.a.n(mediaFormat, "color-standard", gVar3.f13442a);
            u1.a.n(mediaFormat, "color-range", gVar3.f13443b);
            byte[] bArr = gVar3.f13445d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(pVar.f13523o) && (pairB = u1.c.b(pVar)) != null) {
            u1.a.n(mediaFormat, "profile", ((Integer) pairB.first).intValue());
        }
        mediaFormat.setInteger("max-width", kVar.f1915a);
        mediaFormat.setInteger("max-height", kVar.f1916b);
        u1.a.n(mediaFormat, "max-input-size", kVar.f1917c);
        mediaFormat.setInteger(MessageHandler.Properties.Priority, 0);
        if (f10 != -1.0f) {
            mediaFormat.setFloat("operating-rate", f10);
        }
        if (this.D1) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i26 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i26);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.f1932j2));
        }
        E(mediaFormat);
        Surface surfaceG0 = G0(qVar);
        if (this.N1 != null && !u1.f0.E(this.f1940z1)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new ba.i(qVar, mediaFormat, pVar, surfaceG0, mediaCrypto, null);
    }

    public final void S0(long j10) {
        y1.c cVar = this.f4331o1;
        cVar.f18597k += j10;
        cVar.l++;
        this.f1927e2 += j10;
        this.f1928f2++;
    }

    @Override // d2.u
    public final void T(x1.g gVar) {
        if (this.M1) {
            ByteBuffer byteBuffer = gVar.f18090h;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s8 = byteBuffer.getShort();
                short s10 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s8 == 60 && s10 == 1 && b11 == 4) {
                    if (b12 == 0 || b12 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        d2.n nVar = this.R;
                        nVar.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        nVar.e(bundle);
                    }
                }
            }
        }
    }

    @Override // d2.u
    public final boolean Y(r1.p pVar) throws y1.k {
        j0 j0Var = this.N1;
        if (j0Var == null || j0Var.v()) {
            return true;
        }
        try {
            return this.N1.l(pVar);
        } catch (i0 e7) {
            throw f(e7, pVar, false, 7000);
        }
    }

    @Override // d2.u
    public final void Z(Exception exc) {
        u1.a.g("Video codec error", exc);
        a2.j0 j0Var = this.B1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a2.c0(j0Var, 8, exc));
        }
    }

    @Override // d2.u
    public final void a0(long j10, long j11, String str) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        a2.j0 j0Var = this.B1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a2.b0(j0Var, str, j10, j11, 1));
        }
        this.L1 = C0(str);
        d2.q qVar = this.f4323h0;
        qVar.getClass();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(qVar.f4295b)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = qVar.f4297d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            int length = codecProfileLevelArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (codecProfileLevelArr[i10].profile == 16384) {
                    z = true;
                    break;
                }
                i10++;
            }
        }
        this.M1 = z;
        K0();
    }

    @Override // d2.u
    public final void b0(y1.b bVar) {
        a2.j0 j0Var = this.B1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a2.c0(j0Var, 6, bVar));
        }
    }

    @Override // d2.u
    public final void c0(String str) {
        a2.j0 j0Var = this.B1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a2.c0(j0Var, 5, str));
        }
    }

    @Override // d2.u, y1.a, y1.x0
    public final void d(int i10, Object obj) {
        if (i10 == 1) {
            M0(obj);
        }
        if (i10 == 7) {
            obj.getClass();
            x xVar = (x) obj;
            this.f1936n2 = xVar;
            j0 j0Var = this.N1;
            if (j0Var != null) {
                j0Var.i(xVar);
                return;
            }
            return;
        }
        if (i10 == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.f1934l2 != iIntValue) {
                this.f1934l2 = iIntValue;
                if (this.f1933k2) {
                    m0();
                    return;
                }
                return;
            }
            return;
        }
        if (i10 == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.V1 = iIntValue2;
            d2.n nVar = this.R;
            if (nVar != null) {
                nVar.y(iIntValue2);
                return;
            }
            return;
        }
        if (i10 == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.W1 = iIntValue3;
            j0 j0Var2 = this.N1;
            if (j0Var2 != null) {
                j0Var2.k(iIntValue3);
                return;
            } else {
                this.E1.f1986b.setChangeFrameRateStrategy(iIntValue3);
                return;
            }
        }
        if (i10 == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(a1.f13394a)) {
                j0 j0Var3 = this.N1;
                if (j0Var3 == null || !j0Var3.v()) {
                    return;
                }
                this.N1.u();
                return;
            }
            this.Q1 = list;
            j0 j0Var4 = this.N1;
            if (j0Var4 != null) {
                j0Var4.q(list);
                return;
            }
            return;
        }
        if (i10 == 14) {
            obj.getClass();
            u1.r rVar = (u1.r) obj;
            if (rVar.f15270a == 0 || rVar.f15271b == 0) {
                return;
            }
            this.T1 = rVar;
            j0 j0Var5 = this.N1;
            if (j0Var5 != null) {
                Surface surface = this.R1;
                surface.getClass();
                j0Var5.w(surface, rVar);
                return;
            }
            return;
        }
        switch (i10) {
            case 16:
                obj.getClass();
                this.f1932j2 = ((Integer) obj).intValue();
                d2.n nVar2 = this.R;
                if (nVar2 != null && Build.VERSION.SDK_INT >= 35) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("importance", Math.max(0, -this.f1932j2));
                    nVar2.e(bundle);
                    break;
                }
                break;
            case 17:
                Surface surface2 = this.R1;
                M0(null);
                obj.getClass();
                ((m) obj).d(1, surface2);
                break;
            case 18:
                d1 d1Var = this.f1924b2;
                boolean z = d1Var != null && d1Var.f18624b;
                d1 d1Var2 = (d1) obj;
                this.f1924b2 = d1Var2;
                if (z != (d1Var2 != null && d1Var2.f18624b)) {
                    z0(this.S);
                    break;
                }
                break;
            default:
                super.d(i10, obj);
                break;
        }
    }

    @Override // d2.u
    public final y1.d d0(i8 i8Var) {
        y1.d dVarD0 = super.d0(i8Var);
        r1.p pVar = (r1.p) i8Var.f15742c;
        pVar.getClass();
        a2.j0 j0Var = this.B1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a2.e0(j0Var, pVar, dVarD0, 3));
        }
        a0 a0Var = this.I1;
        if (a0Var != null) {
            a0Var.b();
        }
        return dVarD0;
    }

    @Override // d2.u
    public final void e0(r1.p pVar, MediaFormat mediaFormat) {
        int integer;
        int i10;
        d2.n nVar = this.R;
        if (nVar != null) {
            nVar.y(this.V1);
        }
        if (this.f1933k2) {
            i10 = pVar.f13529v;
            integer = pVar.f13530w;
        } else {
            mediaFormat.getClass();
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            int integer2 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
            i10 = integer2;
        }
        float f10 = pVar.B;
        int i11 = pVar.A;
        if (i11 == 90 || i11 == 270) {
            f10 = 1.0f / f10;
            int i12 = integer;
            integer = i10;
            i10 = i12;
        }
        this.f1930h2 = new b1(i10, f10, integer);
        j0 j0Var = this.N1;
        if (j0Var == null || !this.f1938q2) {
            this.E1.f1986b.onFormatChanged(pVar.z);
        } else {
            r1.o oVar = new r1.o(pVar);
            oVar.f13498u = i10;
            oVar.f13499v = integer;
            oVar.A = f10;
            r1.p pVar2 = new r1.p(oVar);
            int i13 = this.P1;
            List list = this.Q1;
            if (list == null) {
                u7.e0 e0Var = u7.g0.f15471b;
                list = y0.f15549e;
            }
            j0Var.o(pVar2, this.f4332p1.f4311b, i13, list);
            this.P1 = 2;
        }
        this.f1938q2 = false;
    }

    @Override // y1.a
    public final void g() {
        j0 j0Var = this.N1;
        if (j0Var == null) {
            z zVar = this.E1;
            if (zVar.f1989e == 0) {
                zVar.f1989e = 1;
                return;
            }
            return;
        }
        int i10 = this.P1;
        if (i10 == 0 || i10 == 1) {
            this.P1 = 0;
        } else {
            j0Var.x();
        }
    }

    @Override // d2.u
    public final void g0(long j10) {
        super.g0(j10);
        if (this.f1933k2) {
            return;
        }
        this.f1923a2--;
    }

    @Override // d2.u
    public final void h0() {
        j0 j0Var = this.N1;
        if (j0Var != null) {
            j0Var.j();
            if (this.f1937o2 == -9223372036854775807L) {
                this.f1937o2 = this.f4332p1.f4311b;
            }
            this.N1.h(-this.f1937o2);
        } else {
            this.E1.d(2);
        }
        this.f1938q2 = true;
        K0();
    }

    @Override // d2.u
    public final void i0(x1.g gVar) {
        ByteBuffer byteBuffer;
        g1 g1Var = this.G1;
        if (g1Var != null) {
            d2.q qVar = this.f4323h0;
            qVar.getClass();
            if (qVar.f4295b.equals("video/av01") && gVar.c(1) && (byteBuffer = gVar.f18087e) != null) {
                int iPosition = byteBuffer.position();
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit, iPosition + 500));
                ByteBuffer byteBuffer2 = (ByteBuffer) g1Var.f175b;
                byteBuffer2.clear();
                byteBuffer2.put(byteBuffer);
                byteBuffer2.flip();
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
            }
        }
        this.f1939r2 = 0;
        int iN = N(gVar);
        if ((Build.VERSION.SDK_INT < 34 || (iN & 32) == 0) && !this.f1933k2) {
            this.f1923a2++;
        }
    }

    @Override // y1.a
    public final String j() {
        return "MediaCodecVideoRenderer";
    }

    @Override // d2.u
    public final boolean k0(long j10, long j11, d2.n nVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z, boolean z4, r1.p pVar) {
        nVar.getClass();
        long j13 = j12 - this.f4332p1.f4312c;
        int i13 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.J1;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j12) {
                break;
            }
            i13++;
            priorityQueue.poll();
        }
        Q0(i13, 0);
        j0 j0Var = this.N1;
        if (j0Var != null) {
            if (!z || z4) {
                return j0Var.e(j12, new h(this, nVar, i10, j13));
            }
            P0(nVar, i10);
            return true;
        }
        int iA = this.E1.a(j12, j10, j11, this.f4332p1.f4311b, z, z4, this.F1);
        y yVar = this.F1;
        a0 a0Var = this.I1;
        if (a0Var != null && iA != 5 && iA != 4) {
            a0Var.a(j12, yVar.f1983b);
        }
        if (iA == 0) {
            this.f18558g.getClass();
            long jNanoTime = System.nanoTime();
            x xVar = this.f1936n2;
            if (xVar != null) {
                xVar.c(j13, jNanoTime, pVar, this.T);
            }
            L0(nVar, i10, jNanoTime);
            S0(yVar.f1983b);
            return true;
        }
        if (iA == 1) {
            long j14 = yVar.f1984c;
            long j15 = yVar.f1983b;
            if (j14 == this.f1929g2) {
                P0(nVar, i10);
            } else {
                x xVar2 = this.f1936n2;
                if (xVar2 != null) {
                    xVar2.c(j13, j14, pVar, this.T);
                }
                L0(nVar, i10, j14);
            }
            S0(j15);
            this.f1929g2 = j14;
            return true;
        }
        if (iA == 2) {
            Trace.beginSection("dropVideoBuffer");
            nVar.h(i10);
            Trace.endSection();
            Q0(0, 1);
            S0(yVar.f1983b);
            return true;
        }
        if (iA == 3) {
            P0(nVar, i10);
            S0(yVar.f1983b);
            return true;
        }
        if (iA == 4 || iA == 5) {
            return false;
        }
        throw new IllegalStateException(String.valueOf(iA));
    }

    @Override // y1.a
    public final boolean l() {
        j0 j0Var;
        return this.f4327k1 && ((j0Var = this.N1) == null || j0Var.b());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    @Override // y1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m() {
        boolean zIsReady;
        boolean z = false;
        if (this.G != null) {
            if (k()) {
                zIsReady = this.f18564n;
            } else {
                c1 c1Var = this.f18560i;
                c1Var.getClass();
                zIsReady = c1Var.isReady();
            }
            if (zIsReady) {
                z = true;
            } else {
                if (!(this.V0 >= 0)) {
                    if (this.T0 != -9223372036854775807L) {
                        this.f18558g.getClass();
                        if (SystemClock.elapsedRealtime() < this.T0) {
                        }
                    }
                }
            }
        }
        j0 j0Var = this.N1;
        if (j0Var != null) {
            return j0Var.t(z);
        }
        if (z && (this.R == null || this.f1933k2)) {
            return true;
        }
        return this.E1.b(z);
    }

    @Override // d2.u, y1.a
    public final void n() {
        a2.j0 j0Var = this.B1;
        this.f1931i2 = null;
        this.p2 = -9223372036854775807L;
        K0();
        this.U1 = false;
        this.f1935m2 = null;
        this.f1926d2 = true;
        try {
            super.n();
            y1.c cVar = this.f4331o1;
            j0Var.getClass();
            synchronized (cVar) {
            }
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new g0(j0Var, cVar, 1));
            }
            j0Var.c(b1.f13418d);
        } catch (Throwable th2) {
            j0Var.a(this.f4331o1);
            j0Var.c(b1.f13418d);
            throw th2;
        }
    }

    @Override // d2.u
    public final void n0() {
        j0 j0Var = this.N1;
        if (j0Var != null) {
            j0Var.j();
        } else {
            long j10 = this.f4332p1.f4315f;
        }
    }

    @Override // y1.a
    public final void o(boolean z, boolean z4) {
        j0 j0Var;
        this.f4331o1 = new y1.c();
        y1.b1 b1Var = this.f18555d;
        b1Var.getClass();
        boolean z10 = b1Var.f18586b;
        a9.o.t((z10 && this.f1934l2 == 0) ? false : true);
        if (this.f1933k2 != z10) {
            this.f1933k2 = z10;
            m0();
        }
        y1.c cVar = this.f4331o1;
        a2.j0 j0Var2 = this.B1;
        Handler handler = j0Var2.f195b;
        if (handler != null) {
            handler.post(new g0(j0Var2, cVar, 0));
        }
        boolean z11 = this.O1;
        z zVar = this.E1;
        if (!z11) {
            if (this.Q1 != null && this.N1 == null) {
                p pVar = new p(this.f1940z1, zVar);
                pVar.f1954d = true;
                long j10 = this.H1;
                pVar.f1957g = j10 != -9223372036854775807L ? -j10 : -9223372036854775807L;
                u1.z zVar2 = this.f18558g;
                zVar2.getClass();
                pVar.f1955e = zVar2;
                a9.o.t(!pVar.f1956f);
                if (pVar.f1953c == null) {
                    pVar.f1953c = new t();
                }
                v vVar = new v(pVar);
                pVar.f1956f = true;
                if (1 >= vVar.f1981p) {
                    vVar.f1981p = 1;
                }
                SparseArray sparseArray = vVar.f1969c;
                if (u1.f0.i(0, sparseArray)) {
                    j0Var = (j0) sparseArray.get(0);
                } else {
                    q qVar = new q(vVar, vVar.f1967a);
                    vVar.f1973g.add(qVar);
                    sparseArray.put(0, qVar);
                    j0Var = qVar;
                }
                this.N1 = j0Var;
            }
            this.O1 = true;
        }
        j0 j0Var3 = this.N1;
        if (j0Var3 == null) {
            u1.z zVar3 = this.f18558g;
            zVar3.getClass();
            zVar.l = zVar3;
            zVar.d(!z4 ? 1 : 0);
            return;
        }
        j0Var3.d(new a1.i(7, this));
        x xVar = this.f1936n2;
        if (xVar != null) {
            this.N1.i(xVar);
        }
        if (this.R1 != null && !this.T1.equals(u1.r.f15269c)) {
            this.N1.w(this.R1, this.T1);
        }
        this.N1.k(this.W1);
        this.N1.m(this.O);
        List list = this.Q1;
        if (list != null) {
            this.N1.q(list);
        }
        this.P1 = !z4 ? 1 : 0;
        this.f4335s1 = true;
    }

    @Override // d2.u, y1.a
    public final void p(long j10, boolean z, boolean z4) {
        j0 j0Var = this.N1;
        if (j0Var != null && !z) {
            j0Var.p(true);
        }
        if (z4) {
            this.f1925c2 = j10;
        }
        super.p(j10, z, z4);
        j0 j0Var2 = this.N1;
        z zVar = this.E1;
        if (j0Var2 == null) {
            zVar.f1986b.onPositionReset();
            zVar.f1992h = -9223372036854775807L;
            zVar.f1990f = -9223372036854775807L;
            zVar.f1989e = Math.min(zVar.f1989e, 1);
            zVar.f1993i = -9223372036854775807L;
            zVar.f1997n = false;
        }
        a0 a0Var = this.I1;
        if (a0Var != null) {
            a0Var.b();
        }
        if (z) {
            j0 j0Var3 = this.N1;
            if (j0Var3 != null) {
                j0Var3.s(false);
            } else {
                zVar.c(false);
            }
        }
        K0();
        this.Z1 = 0;
    }

    @Override // d2.u
    public final void p0() {
        super.p0();
        this.J1.clear();
        this.f1923a2 = 0;
        this.f1939r2 = 0;
        this.f1926d2 = false;
        g1 g1Var = this.G1;
        if (g1Var != null) {
            g1Var.f176c = null;
            ByteBuffer byteBuffer = (ByteBuffer) g1Var.f175b;
            byteBuffer.position(byteBuffer.limit());
        }
    }

    @Override // y1.a
    public final void q() {
        j0 j0Var = this.N1;
        if (j0Var == null || !this.A1) {
            return;
        }
        j0Var.a();
    }

    @Override // y1.a
    public final void r() {
        try {
            try {
                this.Y0 = false;
                o0();
                m0();
                a1.i iVar = this.K;
                if (iVar != null) {
                    iVar.C(null);
                }
                this.K = null;
            } catch (Throwable th2) {
                a1.i iVar2 = this.K;
                if (iVar2 != null) {
                    iVar2.C(null);
                }
                this.K = null;
                throw th2;
            }
        } finally {
            this.O1 = false;
            this.f1937o2 = -9223372036854775807L;
            o oVar = this.S1;
            if (oVar != null) {
                oVar.release();
                this.S1 = null;
            }
        }
    }

    @Override // y1.a
    public final void s() {
        this.Y1 = 0;
        this.f18558g.getClass();
        this.X1 = SystemClock.elapsedRealtime();
        this.f1927e2 = 0L;
        this.f1928f2 = 0;
        j0 j0Var = this.N1;
        if (j0Var != null) {
            j0Var.g();
            return;
        }
        z zVar = this.E1;
        zVar.f1988d = true;
        zVar.l.getClass();
        zVar.f1991g = u1.f0.G(SystemClock.elapsedRealtime());
        zVar.f1986b.onStarted();
    }

    @Override // y1.a
    public final void t() {
        J0();
        int i10 = this.f1928f2;
        if (i10 != 0) {
            long j10 = this.f1927e2;
            a2.j0 j0Var = this.B1;
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new e0(j0Var, j10, i10));
            }
            this.f1927e2 = 0L;
            this.f1928f2 = 0;
        }
        j0 j0Var2 = this.N1;
        if (j0Var2 != null) {
            j0Var2.f();
        } else {
            z zVar = this.E1;
            zVar.f1988d = false;
            zVar.f1993i = -9223372036854775807L;
            zVar.f1986b.onStopped();
        }
        a0 a0Var = this.I1;
        if (a0Var != null) {
            a0Var.b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0145  */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean t0(x1.g gVar) {
        boolean z;
        ByteBuffer byteBuffer;
        v1.r rVar;
        ag.h hVar;
        long j10;
        boolean z4 = false;
        if (I0(gVar)) {
            return false;
        }
        long j11 = gVar.f18089g;
        boolean z10 = j11 < this.l;
        a0 a0Var = this.I1;
        if (a0Var != null) {
            long j12 = a0Var.f1851a;
            if (j12 == -9223372036854775807L) {
                j10 = -9223372036854775807L;
            } else {
                double d10 = a0Var.f1852b;
                double d11 = j11 - j12;
                double d12 = a0Var.f1853c;
                Double.isNaN(d11);
                Double.isNaN(d10);
                j10 = (long) ((d11 * d12) + d10);
            }
            z = j10 != -9223372036854775807L && j10 < this.H1;
        }
        if ((!z10 && !z) || gVar.c(268435456)) {
            return false;
        }
        if (!gVar.c(67108864)) {
            g1 g1Var = this.G1;
            if (g1Var != null) {
                d2.q qVar = this.f4323h0;
                qVar.getClass();
                if (qVar.f4295b.equals("video/av01") && (byteBuffer = gVar.f18087e) != null) {
                    boolean z11 = z10 || this.f1939r2 <= 0;
                    ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                    byteBufferAsReadOnlyBuffer.flip();
                    ByteBuffer byteBuffer2 = (ByteBuffer) g1Var.f175b;
                    if (byteBuffer2.hasRemaining()) {
                        g1Var.a0(v1.o.o(byteBuffer2));
                        byteBuffer2.position(byteBuffer2.limit());
                    }
                    ArrayList arrayListO = v1.o.o(byteBufferAsReadOnlyBuffer);
                    g1Var.a0(arrayListO);
                    int size = arrayListO.size() - 1;
                    int i10 = 0;
                    while (size >= 0) {
                        v1.q qVar2 = (v1.q) arrayListO.get(size);
                        int i11 = qVar2.f16390a;
                        if (i11 != 2 && i11 != 15) {
                            if ((i11 == 3 && !z11) || ((i11 != 6 && i11 != 3) || (rVar = (v1.r) g1Var.f176c) == null)) {
                                break;
                            }
                            try {
                                hVar = new ag.h(rVar, qVar2);
                            } catch (v1.p unused) {
                                hVar = null;
                            }
                            if (hVar == null || hVar.f680a) {
                                break;
                            }
                        }
                        if (((v1.q) arrayListO.get(size)).f16390a == 6 || ((v1.q) arrayListO.get(size)).f16390a == 3) {
                            i10++;
                        }
                        size--;
                    }
                    int iLimit = (i10 > 1 || size + 1 >= 8) ? byteBufferAsReadOnlyBuffer.limit() : size >= 0 ? ((v1.q) arrayListO.get(size)).f16391b.limit() : byteBufferAsReadOnlyBuffer.position();
                    if (iLimit == 0) {
                        gVar.g();
                    } else if (iLimit != byteBufferAsReadOnlyBuffer.limit()) {
                        k kVar = this.K1;
                        kVar.getClass();
                        if (kVar.f1917c + iLimit < byteBufferAsReadOnlyBuffer.capacity() && !gVar.c(1073741824)) {
                            ByteBuffer byteBuffer3 = gVar.f18087e;
                            byteBuffer3.getClass();
                            byteBuffer3.position(iLimit);
                        }
                    }
                }
            }
            if (z4) {
                if (z10) {
                    this.f4331o1.f18590d++;
                } else {
                    this.J1.add(Long.valueOf(gVar.f18089g));
                    this.f1939r2++;
                }
            }
            return z4;
        }
        gVar.g();
        z4 = true;
        if (z4) {
        }
        return z4;
    }

    @Override // d2.u, y1.a
    public final void u(r1.p[] pVarArr, long j10, long j11, f2.c0 c0Var) {
        super.u(pVarArr, j10, j11, c0Var);
        R0(c0Var);
        a0 a0Var = this.I1;
        if (a0Var != null) {
            a0Var.b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean u0() {
        boolean z;
        r1.p pVar = this.S;
        long j10 = this.p2;
        if (j10 != -9223372036854775807L) {
            z = this.f4339u1 + (1 + j10) > Long.MAX_VALUE - (this.f4332p1.f4312c + j10);
        }
        d1 d1Var = this.f1924b2;
        return d1Var == null || !d1Var.f18625c || this.f1926d2 || this.f1933k2 || (pVar != null && pVar.f13525q > 0) || z || this.f4332p1.f4315f != -9223372036854775807L;
    }

    @Override // y1.a
    public final void v() {
        f2.c0 c0Var = this.r;
        if (c0Var != null) {
            R0(c0Var);
        }
    }

    @Override // d2.u
    public final boolean v0(d2.q qVar) {
        return H0(qVar);
    }

    @Override // d2.u
    public final boolean w0() {
        d2.q qVar = this.f4323h0;
        if (this.N1 != null && qVar != null) {
            String str = qVar.f4294a;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.w0();
    }

    @Override // d2.u, y1.a
    public final void x(long j10, long j11) throws y1.k {
        j0 j0Var = this.N1;
        if (j0Var != null) {
            try {
                j0Var.r(j10, j11);
            } catch (i0 e7) {
                throw f(e7, e7.f1907a, false, 7001);
            }
        }
        super.x(j10, j11);
    }

    @Override // d2.u
    public final int y0(d2.l lVar, r1.p pVar) {
        boolean z;
        int i10 = 0;
        if (!r1.e0.k(pVar.f13523o)) {
            return ta.q.a(0, 0, 0, 0);
        }
        boolean z4 = pVar.f13526s != null;
        Context context = this.f1940z1;
        List listE0 = E0(context, lVar, pVar, z4, false);
        if (z4 && listE0.isEmpty()) {
            listE0 = E0(context, lVar, pVar, false, false);
        }
        if (listE0.isEmpty()) {
            return ta.q.a(1, 0, 0, 0);
        }
        int i11 = pVar.P;
        if (i11 != 0 && i11 != 2) {
            return ta.q.a(2, 0, 0, 0);
        }
        d2.q qVar = (d2.q) listE0.get(0);
        boolean zE = qVar.e(context, pVar);
        if (zE) {
            z = true;
        } else {
            for (int i12 = 1; i12 < listE0.size(); i12++) {
                d2.q qVar2 = (d2.q) listE0.get(i12);
                if (qVar2.e(context, pVar)) {
                    qVar = qVar2;
                    z = false;
                    zE = true;
                    break;
                }
            }
            z = true;
        }
        int i13 = zE ? 4 : 3;
        int i14 = qVar.f(pVar) ? 16 : 8;
        int i15 = qVar.f4300g ? 64 : 0;
        int i16 = z ? 128 : 0;
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(pVar.f13523o) && !s1.g.p(context)) {
            i16 = 256;
        }
        if (zE) {
            List listE02 = E0(context, lVar, pVar, z4, true);
            if (!listE02.isEmpty()) {
                HashMap map = d2.c0.f4247a;
                ArrayList arrayList = new ArrayList(listE02);
                Collections.sort(arrayList, new d2.v(new d2.w(context, i10, pVar)));
                d2.q qVar3 = (d2.q) arrayList.get(0);
                if (qVar3.e(context, pVar) && qVar3.f(pVar)) {
                    i10 = 32;
                }
            }
        }
        return i13 | i14 | i10 | i15 | i16;
    }
}
