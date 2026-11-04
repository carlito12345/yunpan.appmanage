package org.bouncycastle.pqc.crypto.hqc;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import org.bouncycastle.pqc.crypto.KEMParameters;

/* loaded from: classes3.dex */
public class HQCParameters implements KEMParameters {
    static final int GF_MUL_ORDER = 255;
    static final int PARAM_M = 8;
    public static final HQCParameters hqc128 = new HQCParameters("hqc-128", 17669, 46, 384, 16, 31, 15, 66, 75, 75, 16767881, 4, new int[]{89, 69, CarSettingID.Recv.EMS_BRK_REGEN_MOD, 116, 176, 117, 111, 75, 73, CarSettingID.Recv.LF_DOOR_STATUS, CarSettingID.Recv.RF_WIN_POSITION, CarSettingID.Recv.LF_DOOR_STATUS, 65, CarSettingID.Recv.IFC_SGW_AVAIL, 21, 139, 103, CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, 67, 118, 105, CarSettingID.Recv.IFC_SGW_AVAIL, CarSettingID.Recv.ETC_BL_EENABLE_CFGST, 110, 74, 69, 228, 82, 255, CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, 1});
    public static final HQCParameters hqc192 = new HQCParameters("hqc-192", 35851, 56, 640, 24, 33, 16, 100, 114, 114, 16742417, 5, new int[]{45, CarSettingID.Recv.IFC_HMA_AVAIL, 239, 24, 253, 104, 27, 40, 107, 50, CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR, CarSettingID.Recv.IFC_SGW_AVAIL, CarSettingID.Recv.IPB_CST_STATUS, 134, 224, CarSettingID.Recv.BCS_TCS_OFF, 119, 13, CarSettingID.Recv.BCS_TCS_OFF, 1, 238, 164, 82, 43, 15, CarSettingID.Recv.TAILGATE_STATUS, 246, 142, 50, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_YEAR, 29, CarSettingID.Recv.TAILGATE_STATUS, 1});
    public static final HQCParameters hqc256 = new HQCParameters("hqc-256", 57637, 90, 640, 32, 59, 29, 131, 149, 149, 16772367, 5, new int[]{49, 167, 49, 39, 200, 121, 124, 91, 240, 63, 148, 71, 150, 123, 87, 101, 32, CarSettingID.Recv.IFC_TSR_AVAIL, 159, 71, CarSettingID.Recv.IGM_INPUT_OVER_VOLT, 115, 97, CarSettingID.Recv.IFC_SGW_AVAIL, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_TIMES, CarSettingID.Recv.PCS_TURN_FOLLOW_SET_ST, 141, 217, 123, 12, 31, 243, 180, 219, 152, 239, 99, 141, 4, 246, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_DAY, 144, 8, CarSettingID.Recv.TAILGATE_STATUS, 47, 27, 141, CarSettingID.Recv.BCM_RAINSTORM_MODE_REQ, 130, 64, 124, 47, 39, 188, CarSettingID.Recv.IFC_HMA_AVAIL, 48, CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT, CarSettingID.Recv.GW_TRANSPORTATION_MODE, 1});
    private int delta;
    private int fft;

    /* renamed from: g, reason: collision with root package name */
    private int f12322g;
    private int[] generatorPoly;
    private HQCEngine hqcEngine;

    /* renamed from: k, reason: collision with root package name */
    private int f12323k;

    /* renamed from: n, reason: collision with root package name */
    private int f12324n;

    /* renamed from: n1, reason: collision with root package name */
    private int f12325n1;

    /* renamed from: n2, reason: collision with root package name */
    private int f12326n2;
    private final String name;
    private int utilRejectionThreshold;

    /* renamed from: w, reason: collision with root package name */
    private int f12327w;

    /* renamed from: we, reason: collision with root package name */
    private int f12328we;
    private int wr;

    private HQCParameters(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int[] iArr) {
        this.name = str;
        this.f12324n = i10;
        this.f12325n1 = i11;
        this.f12326n2 = i12;
        this.f12323k = i13;
        this.delta = i15;
        this.f12327w = i16;
        this.wr = i17;
        this.f12328we = i18;
        this.generatorPoly = iArr;
        this.f12322g = i14;
        this.utilRejectionThreshold = i19;
        this.fft = i20;
        this.hqcEngine = new HQCEngine(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, iArr);
    }

    public int getDelta() {
        return this.delta;
    }

    public HQCEngine getEngine() {
        return this.hqcEngine;
    }

    public int getK() {
        return this.f12323k;
    }

    public int getN() {
        return this.f12324n;
    }

    public int getN1() {
        return this.f12325n1;
    }

    public int getN1N2_BYTES() {
        return ((this.f12325n1 * this.f12326n2) + 7) / 8;
    }

    public int getN2() {
        return this.f12326n2;
    }

    public int getN_BYTES() {
        return (this.f12324n + 7) / 8;
    }

    public String getName() {
        return this.name;
    }

    public int getSALT_SIZE_BYTES() {
        return 16;
    }

    public int getSHA512_BYTES() {
        return 64;
    }

    public int getSessionKeySize() {
        return 256;
    }

    public int getW() {
        return this.f12327w;
    }

    public int getWe() {
        return this.f12328we;
    }

    public int getWr() {
        return this.wr;
    }
}
