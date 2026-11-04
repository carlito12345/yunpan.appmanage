package org.bouncycastle.crypto.digests;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public final class WhirlpoolDigest implements ExtendedDigest, Memoable {
    private static final int BITCOUNT_ARRAY_SIZE = 32;
    private static final int BYTE_LENGTH = 64;
    private static final int DIGEST_LENGTH_BYTES = 64;
    private static final short[] EIGHT;
    private static final int REDUCTION_POLYNOMIAL = 285;
    private static final int ROUNDS = 10;
    private long[] _K;
    private long[] _L;
    private short[] _bitCount;
    private long[] _block;
    private byte[] _buffer;
    private int _bufferPos;
    private long[] _hash;
    private final long[] _rc;
    private long[] _state;
    private final CryptoServicePurpose purpose;
    private static final int[] SBOX = {24, 35, CarSettingID.Recv.IGM_OUTPUT_UNDER_VOLT, CarSettingID.Recv.TAILGATE_STATUS, 135, CarSettingID.Recv.GSM_SPORT_PLUSUN_LOCK_ST, 1, 79, 54, CarSettingID.Recv.PEPS_POWER_OFF_ENABLE, CarSettingID.Recv.IFC_SGW_AVAIL, 245, 121, 111, 145, 82, 96, 188, 155, 142, CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR, 12, 123, 53, 29, 224, CarSettingID.Recv.IFC_TSR_AVAIL, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_SECOND, 46, 75, 254, 87, 21, 119, 55, CarSettingID.Recv.MAX_OPENNING_TAILGATE, 159, 240, 74, 218, 88, CarSettingID.Recv.IGM_INPUT_OVER_VOLT, 41, 10, CarSettingID.Recv.ADAS_HWAHF_VOICE_INFO, CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ, 107, 133, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_YEAR, 93, 16, 244, CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, CarSettingID.Recv.IFC_HMA_AVAIL, 251, 238, 124, 102, CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST, 23, 71, CarSettingID.Recv.BCS_TCS_OFF, CarSettingID.Recv.IGM_OVER_TEMP, 45, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_DAY, 7, CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, 90, 131, 51, 99, 2, CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST, 113, 200, 25, 73, 217, CarSettingID.Recv.RF_WIN_POSITION, CarSettingID.Recv.IPB_CST_STATUS, 91, 136, CarSettingID.Recv.GSM_DRIVE_MODE, 38, 50, 176, CarSettingID.Recv.LF_DOOR_STATUS, 15, CarSettingID.Recv.IFC_TCP_AVAIL, 128, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MONTH, 205, 52, 72, 255, 122, 144, 95, 32, 104, 26, CarSettingID.Recv.ETC_BL_EENABLE_CFGST, 180, 84, 147, 34, 100, 241, 115, 18, 64, 8, CarSettingID.Recv.THEME_MODE_DAY_AND_NIGHT, CarSettingID.Recv.RR_DOOR_STATUS, 219, 161, 141, 61, 151, 0, CarSettingID.Recv.IFC_TLR_AVAIL, 43, 118, 130, CarSettingID.Recv.IFC_TCP_ST, 27, CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, CarSettingID.Recv.PCS_EVENT_RECORDST, 106, 80, 69, 243, 48, 239, 63, 85, CarSettingID.Recv.DRIVER_MODE_MUSIC_MODE, 234, 101, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_TIMES, 47, 192, CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST, 28, 253, 77, 146, 117, 6, 138, CarSettingID.Recv.BCM_RAINSTORM_MODE_REQ, CarSettingID.Recv.FRONT_HATCH_SWITCH, 14, 31, 98, CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN, 168, 150, 249, CarSettingID.Recv.IGM_WORK_STATE, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN, CarSettingID.Recv.BCM_AUTO_SRWIN_CLOSE_CFGST, 226, 97, 179, 33, CarSettingID.Recv.EMS_AVDC_ACTIVE, 30, 67, CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT, 252, 4, 81, CarSettingID.Recv.EMS_BRK_REGEN_MOD, 109, 13, 250, CarSettingID.Recv.PAA_DVR_TRIGGER, 126, 36, 59, CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST, CarSettingID.Recv.IGM_OUTPUT_SCB, 17, 143, 78, CarSettingID.Recv.PCS_TURN_FOLLOW_SET_ST, 235, 60, 129, 148, 247, CarSettingID.Recv.RLS_RAIN_FALL_LEVEL, 19, 44, 211, CarSettingID.Recv.SUNROOF_STATUS, 110, 196, 3, 86, 68, 127, 169, 42, CarSettingID.Recv.GW_TRANSPORTATION_MODE, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MINUTE, 83, CarSettingID.Recv.IFC_TCPSESSIONID, 11, CarSettingID.Recv.EMS_PEDAL_LEVEL, 108, 49, 116, 246, 70, CarSettingID.Recv.ETC_SYS_CFGST, 137, 20, 225, 22, 58, 105, 9, 112, CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST, CarSettingID.Recv.IFC_TLR_ST, 237, CarSettingID.Recv.IGM_OUTPUT_OVER_CUR, 66, 152, 164, 40, 92, 248, 134};
    private static final long[] C0 = new long[256];
    private static final long[] C1 = new long[256];
    private static final long[] C2 = new long[256];
    private static final long[] C3 = new long[256];
    private static final long[] C4 = new long[256];
    private static final long[] C5 = new long[256];
    private static final long[] C6 = new long[256];
    private static final long[] C7 = new long[256];

    static {
        short[] sArr = new short[32];
        EIGHT = sArr;
        sArr[31] = 8;
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = SBOX[i10];
            int iMulX = mulX(i11);
            int iMulX2 = mulX(iMulX);
            int i12 = iMulX2 ^ i11;
            int iMulX3 = mulX(iMulX2);
            int i13 = iMulX3 ^ i11;
            C0[i10] = packIntoLong(i11, i11, iMulX2, i11, iMulX3, i12, iMulX, i13);
            C1[i10] = packIntoLong(i13, i11, i11, iMulX2, i11, iMulX3, i12, iMulX);
            C2[i10] = packIntoLong(iMulX, i13, i11, i11, iMulX2, i11, iMulX3, i12);
            C3[i10] = packIntoLong(i12, iMulX, i13, i11, i11, iMulX2, i11, iMulX3);
            C4[i10] = packIntoLong(iMulX3, i12, iMulX, i13, i11, i11, iMulX2, i11);
            C5[i10] = packIntoLong(i11, iMulX3, i12, iMulX, i13, i11, i11, iMulX2);
            C6[i10] = packIntoLong(iMulX2, i11, iMulX3, i12, iMulX, i13, i11, i11);
            C7[i10] = packIntoLong(i11, iMulX2, i11, iMulX3, i12, iMulX, i13, i11);
        }
    }

    public WhirlpoolDigest() {
        this(CryptoServicePurpose.ANY);
    }

    private byte[] copyBitLength() {
        byte[] bArr = new byte[32];
        for (int i10 = 0; i10 < 32; i10++) {
            bArr[i10] = (byte) (this._bitCount[i10] & 255);
        }
        return bArr;
    }

    private void finish() {
        byte[] bArrCopyBitLength = copyBitLength();
        byte[] bArr = this._buffer;
        int i10 = this._bufferPos;
        bArr[i10] = (byte) (bArr[i10] | 128);
        int i11 = i10 + 1;
        this._bufferPos = i11;
        if (i11 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        if (this._bufferPos > 32) {
            while (this._bufferPos != 0) {
                update((byte) 0);
            }
        }
        while (this._bufferPos <= 32) {
            update((byte) 0);
        }
        System.arraycopy(bArrCopyBitLength, 0, this._buffer, 32, bArrCopyBitLength.length);
        processFilledBuffer(this._buffer, 0);
    }

    private void increment() {
        int i10 = 0;
        for (int length = this._bitCount.length - 1; length >= 0; length--) {
            short[] sArr = this._bitCount;
            int i11 = (sArr[length] & 255) + EIGHT[length] + i10;
            i10 = i11 >>> 8;
            sArr[length] = (short) (i11 & 255);
        }
    }

    private static int mulX(int i10) {
        return ((-(i10 >>> 7)) & REDUCTION_POLYNOMIAL) ^ (i10 << 1);
    }

    private static long packIntoLong(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        return (((((((i11 << 48) ^ (i10 << 56)) ^ (i12 << 40)) ^ (i13 << 32)) ^ (i14 << 24)) ^ (i15 << 16)) ^ (i16 << 8)) ^ i17;
    }

    private void processFilledBuffer(byte[] bArr, int i10) {
        Pack.bigEndianToLong(this._buffer, 0, this._block);
        processBlock();
        this._bufferPos = 0;
        Arrays.fill(this._buffer, (byte) 0);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new WhirlpoolDigest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i10) {
        finish();
        Pack.longToBigEndian(this._hash, bArr, i10);
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    public void processBlock() {
        long[] jArr;
        for (int i10 = 0; i10 < 8; i10++) {
            long[] jArr2 = this._state;
            long j10 = this._block[i10];
            long[] jArr3 = this._K;
            long j11 = this._hash[i10];
            jArr3[i10] = j11;
            jArr2[i10] = j10 ^ j11;
        }
        int i11 = 1;
        while (i11 <= 10) {
            int i12 = 0;
            while (i12 < 8) {
                long[] jArr4 = this._L;
                jArr4[i12] = 0;
                long[] jArr5 = C0;
                long[] jArr6 = this._K;
                long j12 = jArr5[((int) (jArr6[i12 & 7] >>> 56)) & 255];
                jArr4[i12] = j12;
                long j13 = C1[((int) (jArr6[(i12 - 1) & 7] >>> 48)) & 255] ^ j12;
                jArr4[i12] = j13;
                long j14 = j13 ^ C2[((int) (jArr6[(i12 - 2) & 7] >>> 40)) & 255];
                jArr4[i12] = j14;
                long j15 = j14 ^ C3[((int) (jArr6[(i12 - 3) & 7] >>> 32)) & 255];
                jArr4[i12] = j15;
                long j16 = j15 ^ C4[((int) (jArr6[(i12 - 4) & 7] >>> 24)) & 255];
                jArr4[i12] = j16;
                long j17 = j16 ^ C5[((int) (jArr6[(i12 - 5) & 7] >>> 16)) & 255];
                jArr4[i12] = j17;
                long j18 = j17 ^ C6[((int) (jArr6[(i12 - 6) & 7] >>> 8)) & 255];
                jArr4[i12] = j18;
                jArr4[i12] = j18 ^ C7[((int) jArr6[(i12 - 7) & 7]) & 255];
                i12++;
                i11 = i11;
            }
            int i13 = i11;
            long[] jArr7 = this._L;
            long[] jArr8 = this._K;
            System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
            long[] jArr9 = this._K;
            jArr9[0] = jArr9[0] ^ this._rc[i13];
            int i14 = 0;
            while (true) {
                jArr = this._L;
                if (i14 < 8) {
                    long j19 = this._K[i14];
                    jArr[i14] = j19;
                    long[] jArr10 = C0;
                    long[] jArr11 = this._state;
                    long j20 = jArr10[((int) (jArr11[i14 & 7] >>> 56)) & 255] ^ j19;
                    jArr[i14] = j20;
                    long j21 = j20 ^ C1[((int) (jArr11[(i14 - 1) & 7] >>> 48)) & 255];
                    jArr[i14] = j21;
                    long j22 = j21 ^ C2[((int) (jArr11[(i14 - 2) & 7] >>> 40)) & 255];
                    jArr[i14] = j22;
                    long j23 = j22 ^ C3[((int) (jArr11[(i14 - 3) & 7] >>> 32)) & 255];
                    jArr[i14] = j23;
                    long j24 = j23 ^ C4[((int) (jArr11[(i14 - 4) & 7] >>> 24)) & 255];
                    jArr[i14] = j24;
                    long j25 = j24 ^ C5[((int) (jArr11[(i14 - 5) & 7] >>> 16)) & 255];
                    jArr[i14] = j25;
                    long j26 = j25 ^ C6[((int) (jArr11[(i14 - 6) & 7] >>> 8)) & 255];
                    jArr[i14] = j26;
                    jArr[i14] = j26 ^ C7[((int) jArr11[(i14 - 7) & 7]) & 255];
                    i14++;
                }
            }
            long[] jArr12 = this._state;
            System.arraycopy(jArr, 0, jArr12, 0, jArr12.length);
            i11 = i13 + 1;
        }
        for (int i15 = 0; i15 < 8; i15++) {
            long[] jArr13 = this._hash;
            jArr13[i15] = jArr13[i15] ^ (this._state[i15] ^ this._block[i15]);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this._bufferPos = 0;
        Arrays.fill(this._bitCount, (short) 0);
        Arrays.fill(this._buffer, (byte) 0);
        Arrays.fill(this._hash, 0L);
        Arrays.fill(this._K, 0L);
        Arrays.fill(this._L, 0L);
        Arrays.fill(this._block, 0L);
        Arrays.fill(this._state, 0L);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this._buffer;
        int i10 = this._bufferPos;
        bArr[i10] = b10;
        int i11 = i10 + 1;
        this._bufferPos = i11;
        if (i11 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        increment();
    }

    public WhirlpoolDigest(CryptoServicePurpose cryptoServicePurpose) {
        long[] jArr = new long[11];
        this._rc = jArr;
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        jArr[0] = 0;
        for (int i10 = 1; i10 <= 10; i10++) {
            int i11 = (i10 - 1) * 8;
            this._rc[i10] = (((((((C0[i11] & (-72057594037927936L)) ^ (C1[i11 + 1] & 71776119061217280L)) ^ (C2[i11 + 2] & 280375465082880L)) ^ (C3[i11 + 3] & 1095216660480L)) ^ (C4[i11 + 4] & 4278190080L)) ^ (C5[i11 + 5] & 16711680)) ^ (C6[i11 + 6] & 65280)) ^ (C7[i11 + 7] & 255);
        }
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize(), cryptoServicePurpose));
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        WhirlpoolDigest whirlpoolDigest = (WhirlpoolDigest) memoable;
        long[] jArr = whirlpoolDigest._rc;
        long[] jArr2 = this._rc;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        byte[] bArr = whirlpoolDigest._buffer;
        byte[] bArr2 = this._buffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this._bufferPos = whirlpoolDigest._bufferPos;
        short[] sArr = whirlpoolDigest._bitCount;
        short[] sArr2 = this._bitCount;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr3 = whirlpoolDigest._hash;
        long[] jArr4 = this._hash;
        System.arraycopy(jArr3, 0, jArr4, 0, jArr4.length);
        long[] jArr5 = whirlpoolDigest._K;
        long[] jArr6 = this._K;
        System.arraycopy(jArr5, 0, jArr6, 0, jArr6.length);
        long[] jArr7 = whirlpoolDigest._L;
        long[] jArr8 = this._L;
        System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
        long[] jArr9 = whirlpoolDigest._block;
        long[] jArr10 = this._block;
        System.arraycopy(jArr9, 0, jArr10, 0, jArr10.length);
        long[] jArr11 = whirlpoolDigest._state;
        long[] jArr12 = this._state;
        System.arraycopy(jArr11, 0, jArr12, 0, jArr12.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
    }

    public WhirlpoolDigest(WhirlpoolDigest whirlpoolDigest) {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        CryptoServicePurpose cryptoServicePurpose = whirlpoolDigest.purpose;
        this.purpose = cryptoServicePurpose;
        reset(whirlpoolDigest);
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize(), cryptoServicePurpose));
    }
}
