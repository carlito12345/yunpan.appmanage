package org.bouncycastle.crypto.engines;

import com.android.apksig.internal.apk.v4.V4Signature;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.p001os.SocConst;
import java.lang.reflect.Array;
import l2.z;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes3.dex */
public class RijndaelEngine implements BlockCipher {
    private static final int MAXKC = 64;
    private static final int MAXROUNDS = 14;
    private long A0;
    private long A1;
    private long A2;
    private long A3;
    private int BC;
    private long BC_MASK;
    private int ROUNDS;
    private int blockBits;
    private boolean forEncryption;
    private byte[] shifts0SC;
    private byte[] shifts1SC;
    private long[][] workingKey;
    private static final byte[] logtable = {0, 0, 25, 1, SocConst.Upgrade.CUPID_DATA, 2, 26, -58, 75, -57, 27, 104, 51, -18, -33, 3, 100, 4, -32, 14, 52, -115, -127, -17, 76, 113, 8, -56, -8, 105, 28, -63, NoConst.ESCAPE_0X7D, -62, 29, -75, -7, -71, 39, 106, 77, -28, -90, 114, -102, -55, 9, 120, 101, 47, -118, 5, SocConst.Upgrade.CPU_CMD, 15, -31, 36, SocConst.Upgrade.FLASH_DATA, -16, -126, 69, 53, -109, -38, -114, -106, -113, -37, -67, 54, -48, -50, -108, 19, 92, -46, -15, 64, 70, -125, 56, 102, -35, -3, 48, -65, 6, -117, 98, -77, 37, -30, -104, 34, -120, -111, 16, NoConst.ESCAPE_0X7E, 110, 72, -61, -93, -74, 30, 66, 58, 107, 40, 84, -6, -123, 61, -70, 43, 121, 10, 21, -101, -97, 94, -54, 78, -44, -84, -27, -13, 115, -89, 87, -81, 88, -88, 80, -12, -22, -42, 116, 79, -82, -23, -43, -25, -26, -83, -24, 44, -41, 117, 122, -21, 22, 11, -11, 89, -53, 95, -80, -100, -87, 81, -96, Byte.MAX_VALUE, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, -10, 111, 23, -60, 73, -20, -40, 67, 31, 45, -92, 118, 123, -73, -52, -69, 62, 90, -5, 96, -79, -122, 59, 82, -95, 108, -86, 85, 41, -99, -105, -78, -121, -112, 97, -66, -36, -4, PSSSigner.TRAILER_IMPLICIT, -107, -49, -51, 55, 63, 91, -47, 83, 57, -124, 60, 65, -94, 109, 71, 20, 42, -98, 93, 86, -14, -45, -85, 68, SocConst.Upgrade.FLASH_CMD, -110, -39, 35, HebrewProber.SPACE, 46, -119, -76, 124, -72, 38, 119, -103, -29, -91, 103, 74, -19, -34, -59, SocConst.Upgrade.CUPID_CMD, -2, 24, 13, 99, -116, Byte.MIN_VALUE, -64, -9, 112, 7};
    private static final byte[] aLogtable = {0, 3, 5, 15, SocConst.Upgrade.FLASH_CMD, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, 30, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, SocConst.Upgrade.CUPID_CMD, 83, -11, 4, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 20, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, 24, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, Byte.MAX_VALUE, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, 11, 29, 39, 105, -69, -42, 97, -93, -2, 25, 43, NoConst.ESCAPE_0X7D, -121, -110, -83, -20, 47, 113, -109, -82, -23, HebrewProber.SPACE, 96, -96, -5, 22, 58, 78, -46, 109, -73, -62, 93, -25, SocConst.Upgrade.CUPID_DATA, 86, -6, 21, 63, 65, -61, 94, -30, 61, 71, -55, 64, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, 42, NoConst.ESCAPE_0X7E, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, -114, -119, Byte.MIN_VALUE, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, 31, SocConst.Upgrade.CPU_CMD, 99, -91, -12, 7, 9, 27, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, 14, SocConst.Upgrade.FLASH_DATA, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, 23, 57, 75, -35, 124, -124, -105, -94, -3, 28, 36, 108, -76, -57, 82, -10, 1, 3, 5, 15, SocConst.Upgrade.FLASH_CMD, 51, 85, -1, 26, 46, 114, -106, -95, -8, 19, 53, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, 30, 34, 102, -86, -27, 52, 92, -28, 55, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, SocConst.Upgrade.CUPID_CMD, 83, -11, 4, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 20, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, -32, 59, 77, -41, 98, -90, -15, 8, 24, 40, 120, -120, -125, -98, -71, -48, 107, -67, -36, Byte.MAX_VALUE, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, 48, 80, -16, 11, 29, 39, 105, -69, -42, 97, -93, -2, 25, 43, NoConst.ESCAPE_0X7D, -121, -110, -83, -20, 47, 113, -109, -82, -23, HebrewProber.SPACE, 96, -96, -5, 22, 58, 78, -46, 109, -73, -62, 93, -25, SocConst.Upgrade.CUPID_DATA, 86, -6, 21, 63, 65, -61, 94, -30, 61, 71, -55, 64, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, 42, NoConst.ESCAPE_0X7E, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, -114, -119, Byte.MIN_VALUE, -101, -74, -63, 88, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, 31, SocConst.Upgrade.CPU_CMD, 99, -91, -12, 7, 9, 27, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, 14, SocConst.Upgrade.FLASH_DATA, 54, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, 23, 57, 75, -35, 124, -124, -105, -94, -3, 28, 36, 108, -76, -57, 82, -10, 1};
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, NoConst.ESCAPE_0X7D, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, 63, -9, -52, 52, -91, -27, -15, 113, -40, SocConst.Upgrade.CUPID_CMD, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, SocConst.Upgrade.FLASH_DATA, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, HebrewProber.SPACE, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, SocConst.Upgrade.CPU_CMD, 16, -1, -13, -46, -51, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 19, -20, 95, -105, 68, 23, -60, -89, NoConst.ESCAPE_0X7E, 61, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, SocConst.Upgrade.CUPID_DATA, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, SocConst.Upgrade.FLASH_CMD, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, SocConst.Upgrade.CUPID_DATA, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, 30, -113, -54, 63, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, SocConst.Upgrade.FLASH_CMD, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, HebrewProber.SPACE, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, SocConst.Upgrade.CUPID_CMD, -79, SocConst.Upgrade.FLASH_DATA, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, NoConst.ESCAPE_0X7E, -70, 119, -42, 38, -31, 105, 20, 99, 85, SocConst.Upgrade.CPU_CMD, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, NoConst.ESCAPE_0X7D};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, CarSettingID.Recv.IFC_HMA_AVAIL, CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST, 77, CarSettingID.Recv.GSM_DRIVE_MODE, 47, 94, 188, 99, CarSettingID.Recv.IGM_OUTPUT_UNDER_VOLT, 151, 53, 106, CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN, 179, 125, 250, 239, CarSettingID.Recv.IGM_WORK_STATE, 145};
    static byte[][] shifts0 = {new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, HebrewProber.SPACE}, new byte[]{0, 8, 24, HebrewProber.SPACE}};
    static byte[][] shifts1 = {new byte[]{0, 24, 16, 8}, new byte[]{0, HebrewProber.SPACE, 24, 16}, new byte[]{0, 40, HebrewProber.SPACE, 24}, new byte[]{0, 48, 40, 24}, new byte[]{0, 56, 40, HebrewProber.SPACE}};

    public RijndaelEngine() {
        this(128);
    }

    private void InvMixColumn() {
        long jMul0xe = 0;
        long jMul0xe2 = 0;
        long jMul0xe3 = 0;
        long jMul0xe4 = 0;
        for (int i10 = 0; i10 < this.BC; i10 += 8) {
            int i11 = (int) ((this.A0 >> i10) & 255);
            int i12 = (int) ((this.A1 >> i10) & 255);
            int i13 = (int) ((this.A2 >> i10) & 255);
            long j10 = jMul0xe4;
            int i14 = (int) ((this.A3 >> i10) & 255);
            int i15 = -1;
            int i16 = i11 != 0 ? logtable[i11 & 255] & 255 : -1;
            int i17 = i12 != 0 ? logtable[i12 & 255] & 255 : -1;
            int i18 = i13 != 0 ? logtable[i13 & 255] & 255 : -1;
            if (i14 != 0) {
                i15 = logtable[i14 & 255] & 255;
            }
            jMul0xe |= ((((mul0xe(i16) ^ mul0xb(i17)) ^ mul0xd(i18)) ^ mul0x9(i15)) & 255) << i10;
            jMul0xe2 |= ((((mul0xe(i17) ^ mul0xb(i18)) ^ mul0xd(i15)) ^ mul0x9(i16)) & 255) << i10;
            jMul0xe3 |= ((((mul0xe(i18) ^ mul0xb(i15)) ^ mul0xd(i16)) ^ mul0x9(i17)) & 255) << i10;
            jMul0xe4 = j10 | (((((mul0xe(i15) ^ mul0xb(i16)) ^ mul0xd(i17)) ^ mul0x9(i18)) & 255) << i10);
        }
        this.A0 = jMul0xe;
        this.A1 = jMul0xe2;
        this.A2 = jMul0xe3;
        this.A3 = jMul0xe4;
    }

    private void KeyAddition(long[] jArr) {
        this.A0 ^= jArr[0];
        this.A1 ^= jArr[1];
        this.A2 ^= jArr[2];
        this.A3 ^= jArr[3];
    }

    private void MixColumn() {
        long jMul0x2 = 0;
        long jMul0x22 = 0;
        long jMul0x23 = 0;
        long jMul0x24 = 0;
        for (int i10 = 0; i10 < this.BC; i10 += 8) {
            int i11 = (int) ((this.A0 >> i10) & 255);
            int i12 = (int) ((this.A1 >> i10) & 255);
            int i13 = (int) ((this.A2 >> i10) & 255);
            int i14 = (int) ((this.A3 >> i10) & 255);
            jMul0x2 |= ((((mul0x2(i11) ^ mul0x3(i12)) ^ i13) ^ i14) & 255) << i10;
            jMul0x22 |= ((((mul0x2(i12) ^ mul0x3(i13)) ^ i14) ^ i11) & 255) << i10;
            jMul0x23 |= ((((mul0x2(i13) ^ mul0x3(i14)) ^ i11) ^ i12) & 255) << i10;
            jMul0x24 |= ((((mul0x2(i14) ^ mul0x3(i11)) ^ i12) ^ i13) & 255) << i10;
        }
        this.A0 = jMul0x2;
        this.A1 = jMul0x22;
        this.A2 = jMul0x23;
        this.A3 = jMul0x24;
    }

    private void ShiftRow(byte[] bArr) {
        this.A1 = shift(this.A1, bArr[1]);
        this.A2 = shift(this.A2, bArr[2]);
        this.A3 = shift(this.A3, bArr[3]);
    }

    private void Substitution(byte[] bArr) {
        this.A0 = applyS(this.A0, bArr);
        this.A1 = applyS(this.A1, bArr);
        this.A2 = applyS(this.A2, bArr);
        this.A3 = applyS(this.A3, bArr);
    }

    private long applyS(long j10, byte[] bArr) {
        long j11 = 0;
        for (int i10 = 0; i10 < this.BC; i10 += 8) {
            j11 |= (bArr[(int) ((j10 >> i10) & 255)] & 255) << i10;
        }
        return j11;
    }

    private void decryptBlock(long[][] jArr) {
        KeyAddition(jArr[this.ROUNDS]);
        Substitution(Si);
        ShiftRow(this.shifts1SC);
        for (int i10 = this.ROUNDS - 1; i10 > 0; i10--) {
            KeyAddition(jArr[i10]);
            InvMixColumn();
            Substitution(Si);
            ShiftRow(this.shifts1SC);
        }
        KeyAddition(jArr[0]);
    }

    private void encryptBlock(long[][] jArr) {
        KeyAddition(jArr[0]);
        for (int i10 = 1; i10 < this.ROUNDS; i10++) {
            Substitution(S);
            ShiftRow(this.shifts0SC);
            MixColumn();
            KeyAddition(jArr[i10]);
        }
        Substitution(S);
        ShiftRow(this.shifts0SC);
        KeyAddition(jArr[this.ROUNDS]);
    }

    private long[][] generateWorkingKey(byte[] bArr) {
        int i10;
        int i11;
        int i12 = 8;
        int length = bArr.length * 8;
        int i13 = 1;
        int i14 = 4;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 64);
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 15, 4);
        if (length == 128) {
            i10 = 4;
        } else if (length == 160) {
            i10 = 5;
        } else if (length == 192) {
            i10 = 6;
        } else if (length == 224) {
            i10 = 7;
        } else {
            if (length != 256) {
                throw new IllegalArgumentException("Key length not 128/160/192/224/256 bits.");
            }
            i10 = 8;
        }
        this.ROUNDS = length >= this.blockBits ? i10 + 6 : (this.BC / 8) + 6;
        int i15 = 0;
        int i16 = 0;
        while (i15 < bArr.length) {
            bArr2[i15 % 4][i15 / 4] = bArr[i16];
            i15++;
            i16++;
        }
        int i17 = 0;
        int i18 = 0;
        while (i17 < i10 && i18 < (this.BC / 8) * (this.ROUNDS + 1)) {
            int i19 = 0;
            while (i19 < i14) {
                int i20 = this.BC;
                long[] jArr2 = jArr[i18 / (i20 / 8)];
                jArr2[i19] = ((bArr2[i19][i17] & 255) << ((i18 * 8) % i20)) | jArr2[i19];
                i19++;
                i14 = 4;
            }
            i17++;
            i18++;
            i14 = 4;
        }
        int i21 = 0;
        while (i18 < (this.BC / i12) * (this.ROUNDS + i13)) {
            int i22 = 0;
            for (int i23 = 4; i22 < i23; i23 = 4) {
                byte[] bArr3 = bArr2[i22];
                i22++;
                bArr3[0] = (byte) (S[bArr2[i22 % 4][i10 - 1] & 255] ^ bArr3[0]);
            }
            byte[] bArr4 = bArr2[0];
            int i24 = i21 + 1;
            bArr4[0] = (byte) (rcon[i21] ^ bArr4[0]);
            if (i10 <= 6) {
                for (int i25 = 1; i25 < i10; i25++) {
                    int i26 = 0;
                    for (int i27 = 4; i26 < i27; i27 = 4) {
                        byte[] bArr5 = bArr2[i26];
                        bArr5[i25] = (byte) (bArr5[i25] ^ bArr5[i25 - 1]);
                        i26++;
                    }
                }
            } else {
                int i28 = 4;
                int i29 = 1;
                while (true) {
                    i11 = 0;
                    if (i29 >= i28) {
                        break;
                    }
                    while (i11 < i28) {
                        byte[] bArr6 = bArr2[i11];
                        bArr6[i29] = (byte) (bArr6[i29] ^ bArr6[i29 - 1]);
                        i11++;
                        i28 = 4;
                    }
                    i29++;
                    i28 = 4;
                }
                while (i11 < i28) {
                    byte[] bArr7 = bArr2[i11];
                    bArr7[i28] = (byte) (bArr7[i28] ^ S[bArr7[3] & 255]);
                    i11++;
                }
                int i30 = 5;
                while (i30 < i10) {
                    int i31 = 0;
                    while (i31 < i28) {
                        byte[] bArr8 = bArr2[i31];
                        bArr8[i30] = (byte) (bArr8[i30] ^ bArr8[i30 - 1]);
                        i31++;
                        i28 = 4;
                    }
                    i30++;
                    i28 = 4;
                }
            }
            int i32 = 0;
            while (i32 < i10 && i18 < (this.BC / i12) * (this.ROUNDS + i13)) {
                for (int i33 = 0; i33 < 4; i33++) {
                    int i34 = this.BC;
                    long[] jArr3 = jArr[i18 / (i34 / 8)];
                    jArr3[i33] = ((bArr2[i33][i32] & 255) << ((i18 * 8) % i34)) | jArr3[i33];
                }
                i32++;
                i18++;
                i12 = 8;
                i13 = 1;
            }
            i21 = i24;
            i12 = 8;
            i13 = 1;
        }
        return jArr;
    }

    private byte mul0x2(int i10) {
        if (i10 != 0) {
            return aLogtable[(logtable[i10] & 255) + 25];
        }
        return (byte) 0;
    }

    private byte mul0x3(int i10) {
        if (i10 != 0) {
            return aLogtable[(logtable[i10] & 255) + 1];
        }
        return (byte) 0;
    }

    private byte mul0x9(int i10) {
        if (i10 >= 0) {
            return aLogtable[i10 + CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT];
        }
        return (byte) 0;
    }

    private byte mul0xb(int i10) {
        if (i10 >= 0) {
            return aLogtable[i10 + 104];
        }
        return (byte) 0;
    }

    private byte mul0xd(int i10) {
        if (i10 >= 0) {
            return aLogtable[i10 + 238];
        }
        return (byte) 0;
    }

    private byte mul0xe(int i10) {
        if (i10 >= 0) {
            return aLogtable[i10 + CarSettingID.Recv.PAA_DVR_TRIGGER];
        }
        return (byte) 0;
    }

    private void packBlock(byte[] bArr, int i10) {
        for (int i11 = 0; i11 != this.BC; i11 += 8) {
            bArr[i10] = (byte) (this.A0 >> i11);
            bArr[i10 + 1] = (byte) (this.A1 >> i11);
            int i12 = i10 + 3;
            bArr[i10 + 2] = (byte) (this.A2 >> i11);
            i10 += 4;
            bArr[i12] = (byte) (this.A3 >> i11);
        }
    }

    private long shift(long j10, int i10) {
        return ((j10 << (this.BC - i10)) | (j10 >>> i10)) & this.BC_MASK;
    }

    private void unpackBlock(byte[] bArr, int i10) {
        this.A0 = bArr[i10] & 255;
        this.A1 = bArr[i10 + 1] & 255;
        int i11 = i10 + 3;
        this.A2 = bArr[i10 + 2] & 255;
        int i12 = i10 + 4;
        this.A3 = bArr[i11] & 255;
        for (int i13 = 8; i13 != this.BC; i13 += 8) {
            this.A0 |= (bArr[i12] & 255) << i13;
            this.A1 |= (bArr[i12 + 1] & 255) << i13;
            int i14 = i12 + 3;
            this.A2 |= (bArr[i12 + 2] & 255) << i13;
            i12 += 4;
            this.A3 |= (bArr[i14] & 255) << i13;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Rijndael";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(z.l("invalid parameter passed to Rijndael init - ", cipherParameters));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = generateWorkingKey(key);
        this.forEncryption = z;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i10, byte[] bArr2, int i11) {
        if (this.workingKey == null) {
            throw new IllegalStateException("Rijndael engine not initialised");
        }
        int i12 = this.BC;
        if ((i12 / 2) + i10 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if ((i12 / 2) + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        boolean z = this.forEncryption;
        unpackBlock(bArr, i10);
        long[][] jArr = this.workingKey;
        if (z) {
            encryptBlock(jArr);
        } else {
            decryptBlock(jArr);
        }
        packBlock(bArr2, i11);
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    public RijndaelEngine(int i10) {
        if (i10 == 128) {
            this.BC = 32;
            this.BC_MASK = 4294967295L;
            this.shifts0SC = shifts0[0];
            this.shifts1SC = shifts1[0];
        } else if (i10 == 160) {
            this.BC = 40;
            this.BC_MASK = 1099511627775L;
            this.shifts0SC = shifts0[1];
            this.shifts1SC = shifts1[1];
        } else if (i10 == 192) {
            this.BC = 48;
            this.BC_MASK = 281474976710655L;
            this.shifts0SC = shifts0[2];
            this.shifts1SC = shifts1[2];
        } else if (i10 == 224) {
            this.BC = 56;
            this.BC_MASK = 72057594037927935L;
            this.shifts0SC = shifts0[3];
            this.shifts1SC = shifts1[3];
        } else {
            if (i10 != 256) {
                throw new IllegalArgumentException("unknown blocksize to Rijndael");
            }
            this.BC = 64;
            this.BC_MASK = -1L;
            this.shifts0SC = shifts0[4];
            this.shifts1SC = shifts1[4];
        }
        this.blockBits = i10;
    }
}
