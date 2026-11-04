package j3;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import h5.m;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.mozilla.universalchardet.prober.HebrewProber;
import u1.q;

/* loaded from: classes.dex */
public final class c extends i {

    /* renamed from: i, reason: collision with root package name */
    public final int f9678i;

    /* renamed from: j, reason: collision with root package name */
    public final int f9679j;

    /* renamed from: k, reason: collision with root package name */
    public final int f9680k;

    /* renamed from: o, reason: collision with root package name */
    public List f9683o;

    /* renamed from: p, reason: collision with root package name */
    public List f9684p;

    /* renamed from: q, reason: collision with root package name */
    public int f9685q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f9686s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f9687t;

    /* renamed from: u, reason: collision with root package name */
    public byte f9688u;

    /* renamed from: v, reason: collision with root package name */
    public byte f9689v;

    /* renamed from: x, reason: collision with root package name */
    public boolean f9691x;

    /* renamed from: y, reason: collision with root package name */
    public long f9692y;
    public static final int[] z = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] A = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] B = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    public static final int[] C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, CarSettingID.Recv.LF_DOOR_STATUS, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, CarSettingID.Recv.SUNROOF_STATUS, 247, CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN, 241, 9632};
    public static final int[] D = {CarSettingID.Recv.ETC_BL_EENABLE_CFGST, 176, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_YEAR, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_DAY, 8482, CarSettingID.Recv.DRIVER_MODE_MUSIC_MODE, CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR, 9834, 224, 32, CarSettingID.Recv.TAILGATE_STATUS, 226, 234, 238, 244, 251};
    public static final int[] E = {CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MINUTE, CarSettingID.Recv.IGM_INPUT_OVER_VOLT, 211, 218, CarSettingID.Recv.IFC_TCPSESSIONID, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_SECOND, CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT, 200, CarSettingID.Recv.IGM_OVER_TEMP, CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE, 235, CarSettingID.Recv.IGM_OUTPUT_SCB, CarSettingID.Recv.IFC_TLR_AVAIL, 239, CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN, 217, 249, 219, CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST, CarSettingID.Recv.GW_TRANSPORTATION_MODE};
    public static final int[] F = {CarSettingID.Recv.THEME_MODE_DAY_AND_NIGHT, CarSettingID.Recv.IPB_CST_STATUS, 205, CarSettingID.Recv.IGM_OUTPUT_OVER_CUR, CarSettingID.Recv.RR_DOOR_STATUS, CarSettingID.Recv.IFC_SGW_AVAIL, CarSettingID.Recv.RF_WIN_POSITION, CarSettingID.Recv.IFC_TCP_AVAIL, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, CarSettingID.Recv.IFC_TCP_ST, 246, CarSettingID.Recv.PAA_DVR_TRIGGER, CarSettingID.Recv.BCM_AUTO_SRWIN_CLOSE_CFGST, 164, 9474, CarSettingID.Recv.IGM_WORK_STATE, CarSettingID.Recv.MAX_OPENNING_TAILGATE, CarSettingID.Recv.IFC_HMA_AVAIL, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: h, reason: collision with root package name */
    public final q f9677h = new q();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f9681m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public b f9682n = new b(0, 4);

    /* renamed from: w, reason: collision with root package name */
    public int f9690w = 0;
    public final long l = 16000000;

    public c(String str, int i10) {
        this.f9678i = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i10 == 1) {
            this.f9680k = 0;
            this.f9679j = 0;
        } else if (i10 == 2) {
            this.f9680k = 1;
            this.f9679j = 0;
        } else if (i10 == 3) {
            this.f9680k = 0;
            this.f9679j = 1;
        } else if (i10 != 4) {
            u1.a.p("Invalid channel. Defaulting to CC1.");
            this.f9680k = 0;
            this.f9679j = 0;
        } else {
            this.f9680k = 1;
            this.f9679j = 1;
        }
        m(0);
        l();
        this.f9691x = true;
        this.f9692y = -9223372036854775807L;
    }

    @Override // j3.i, x1.d
    public final void flush() {
        super.flush();
        this.f9683o = null;
        this.f9684p = null;
        m(0);
        this.r = 4;
        this.f9682n.f9676h = 4;
        l();
        this.f9686s = false;
        this.f9687t = false;
        this.f9688u = (byte) 0;
        this.f9689v = (byte) 0;
        this.f9690w = 0;
        this.f9691x = true;
        this.f9692y = -9223372036854775807L;
    }

    @Override // j3.i
    public final m g() {
        List list = this.f9683o;
        this.f9684p = list;
        list.getClass();
        return new m(23, list);
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a6 A[FALL_THROUGH] */
    @Override // j3.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(h hVar) {
        ByteBuffer byteBuffer = hVar.f18087e;
        byteBuffer.getClass();
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        q qVar = this.f9677h;
        qVar.M(iLimit, bArrArray);
        boolean z4 = false;
        while (true) {
            int iA = qVar.a();
            int i10 = this.f9678i;
            if (iA < i10) {
                if (z4) {
                    int i11 = this.f9685q;
                    if (i11 == 1 || i11 == 3) {
                        this.f9683o = k();
                        this.f9692y = this.f9738e;
                        return;
                    }
                    return;
                }
                return;
            }
            int iB = i10 == 2 ? -4 : qVar.B();
            int iB2 = qVar.B();
            int iB3 = qVar.B();
            if ((iB & 2) == 0 && (iB & 1) == this.f9679j) {
                byte b10 = (byte) (iB2 & 127);
                byte b11 = (byte) (iB3 & 127);
                if (b10 != 0 || b11 != 0) {
                    boolean z10 = this.f9686s;
                    if ((iB & 4) == 4) {
                        boolean[] zArr = G;
                        boolean z11 = zArr[iB2] && zArr[iB3];
                        this.f9686s = z11;
                        if (!z11 || (b10 & 240) != 16) {
                            this.f9687t = false;
                            if (!z11) {
                                if (1 <= b10 && b10 <= 15) {
                                    this.f9691x = false;
                                } else if ((b10 & 246) == 20) {
                                    if (b11 != 32 && b11 != 47) {
                                        switch (b11) {
                                            default:
                                                switch (b11) {
                                                    case 42:
                                                    case 43:
                                                        this.f9691x = false;
                                                        break;
                                                }
                                            case 37:
                                            case 38:
                                            case 39:
                                                break;
                                        }
                                    } else {
                                        this.f9691x = true;
                                    }
                                }
                                if (this.f9691x) {
                                    int i12 = b10 & 224;
                                    if (i12 == 0) {
                                        this.f9690w = (b10 >> 3) & 1;
                                    }
                                    if (this.f9690w == this.f9680k) {
                                        if (i12 == 0) {
                                            int i13 = b10 & 247;
                                            if (i13 == 17 && (b11 & 240) == 48) {
                                                this.f9682n.a((char) D[b11 & 15]);
                                            } else {
                                                int i14 = b10 & 246;
                                                if (i14 == 18 && (b11 & 224) == 32) {
                                                    this.f9682n.b();
                                                    this.f9682n.a((char) ((b10 & 1) == 0 ? E[b11 & 31] : F[b11 & 31]));
                                                } else if (i13 == 17 && (b11 & 240) == 32) {
                                                    this.f9682n.a(' ');
                                                    boolean z12 = (b11 & 1) == 1;
                                                    b bVar = this.f9682n;
                                                    bVar.f9669a.add(new a((b11 >> 1) & 7, bVar.f9671c.length(), z12));
                                                } else if ((b10 & 240) == 16 && (b11 & 192) == 64) {
                                                    int i15 = z[b10 & 7];
                                                    if ((b11 & HebrewProber.SPACE) != 0) {
                                                        i15++;
                                                    }
                                                    b bVar2 = this.f9682n;
                                                    if (i15 != bVar2.f9672d) {
                                                        if (this.f9685q != 1 && !bVar2.e()) {
                                                            b bVar3 = new b(this.f9685q, this.r);
                                                            this.f9682n = bVar3;
                                                            this.f9681m.add(bVar3);
                                                        }
                                                        this.f9682n.f9672d = i15;
                                                    }
                                                    boolean z13 = (b11 & 16) == 16;
                                                    boolean z14 = (b11 & 1) == 1;
                                                    int i16 = (b11 >> 1) & 7;
                                                    b bVar4 = this.f9682n;
                                                    bVar4.f9669a.add(new a(z13 ? 8 : i16, bVar4.f9671c.length(), z14));
                                                    if (z13) {
                                                        this.f9682n.f9673e = A[i16];
                                                    }
                                                } else if (i13 == 23 && b11 >= 33 && b11 <= 35) {
                                                    this.f9682n.f9674f = b11 - 32;
                                                } else if (i14 == 20 && (b11 & 240) == 32) {
                                                    if (b11 == 32) {
                                                        m(2);
                                                    } else if (b11 != 41) {
                                                        switch (b11) {
                                                            case 37:
                                                                m(1);
                                                                this.r = 2;
                                                                this.f9682n.f9676h = 2;
                                                                break;
                                                            case 38:
                                                                m(1);
                                                                this.r = 3;
                                                                this.f9682n.f9676h = 3;
                                                                break;
                                                            case 39:
                                                                m(1);
                                                                this.r = 4;
                                                                this.f9682n.f9676h = 4;
                                                                break;
                                                            default:
                                                                int i17 = this.f9685q;
                                                                if (i17 != 0) {
                                                                    if (b11 == 33) {
                                                                        this.f9682n.b();
                                                                        break;
                                                                    } else {
                                                                        switch (b11) {
                                                                            case 44:
                                                                                this.f9683o = Collections.emptyList();
                                                                                int i18 = this.f9685q;
                                                                                if (i18 == 1 || i18 == 3) {
                                                                                    l();
                                                                                    break;
                                                                                }
                                                                            case 45:
                                                                                if (i17 == 1 && !this.f9682n.e()) {
                                                                                    b bVar5 = this.f9682n;
                                                                                    ArrayList arrayList = bVar5.f9670b;
                                                                                    arrayList.add(bVar5.d());
                                                                                    bVar5.f9671c.setLength(0);
                                                                                    bVar5.f9669a.clear();
                                                                                    int iMin = Math.min(bVar5.f9676h, bVar5.f9672d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                l();
                                                                                break;
                                                                            case 47:
                                                                                this.f9683o = k();
                                                                                l();
                                                                                break;
                                                                        }
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        m(3);
                                                    }
                                                }
                                            }
                                        } else {
                                            b bVar6 = this.f9682n;
                                            int[] iArr = C;
                                            bVar6.a((char) iArr[(b10 & Byte.MAX_VALUE) - 32]);
                                            if ((b11 & 224) != 0) {
                                                this.f9682n.a((char) iArr[(b11 & Byte.MAX_VALUE) - 32]);
                                            }
                                        }
                                        z4 = true;
                                    }
                                }
                            } else if (z10) {
                                l();
                                z4 = true;
                            }
                        } else if (this.f9687t && this.f9688u == b10 && this.f9689v == b11) {
                            this.f9687t = false;
                        } else {
                            this.f9687t = true;
                            this.f9688u = b10;
                            this.f9689v = b11;
                            if (!z11) {
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // j3.i, x1.d
    /* renamed from: i */
    public final i3.c e() {
        i3.c cVar;
        i3.c cVarE = super.e();
        if (cVarE != null) {
            return cVarE;
        }
        long j10 = this.l;
        if (j10 == -9223372036854775807L) {
            return null;
        }
        long j11 = this.f9692y;
        if (j11 == -9223372036854775807L || this.f9738e - j11 < j10 || (cVar = (i3.c) this.f9735b.pollFirst()) == null) {
            return null;
        }
        this.f9683o = Collections.emptyList();
        this.f9692y = -9223372036854775807L;
        m mVarG = g();
        long j12 = this.f9738e;
        cVar.f18092c = j12;
        cVar.f8491e = mVarG;
        cVar.f8492f = j12;
        return cVar;
    }

    @Override // j3.i
    public final boolean j() {
        return this.f9683o != this.f9684p;
    }

    public final ArrayList k() {
        ArrayList arrayList = this.f9681m;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        int iMin = 2;
        for (int i10 = 0; i10 < size; i10++) {
            t1.b bVarC = ((b) arrayList.get(i10)).c(Integer.MIN_VALUE);
            arrayList2.add(bVarC);
            if (bVarC != null) {
                iMin = Math.min(iMin, bVarC.f14672i);
            }
        }
        ArrayList arrayList3 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            t1.b bVarC2 = (t1.b) arrayList2.get(i11);
            if (bVarC2 != null) {
                if (bVarC2.f14672i != iMin) {
                    bVarC2 = ((b) arrayList.get(i11)).c(iMin);
                    bVarC2.getClass();
                }
                arrayList3.add(bVarC2);
            }
        }
        return arrayList3;
    }

    public final void l() {
        b bVar = this.f9682n;
        bVar.f9675g = this.f9685q;
        bVar.f9669a.clear();
        bVar.f9670b.clear();
        bVar.f9671c.setLength(0);
        bVar.f9672d = 15;
        bVar.f9673e = 0;
        bVar.f9674f = 0;
        ArrayList arrayList = this.f9681m;
        arrayList.clear();
        arrayList.add(this.f9682n);
    }

    public final void m(int i10) {
        int i11 = this.f9685q;
        if (i11 == i10) {
            return;
        }
        this.f9685q = i10;
        if (i10 != 3) {
            l();
            if (i11 == 3 || i10 == 1 || i10 == 0) {
                this.f9683o = Collections.emptyList();
                return;
            }
            return;
        }
        int i12 = 0;
        while (true) {
            ArrayList arrayList = this.f9681m;
            if (i12 >= arrayList.size()) {
                return;
            }
            ((b) arrayList.get(i12)).f9675g = i10;
            i12++;
        }
    }

    @Override // j3.i, x1.d
    public final void a() {
    }
}
