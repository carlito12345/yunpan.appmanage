package org.bouncycastle.crypto.engines;

import com.android.apksig.internal.apk.v4.V4Signature;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.p001os.SocConst;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.digests.RomulusDigest;
import org.bouncycastle.crypto.engines.AEADBaseEngine;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes3.dex */
public class RomulusEngine extends AEADBaseEngine {
    private static final int AD_BLK_LEN_HALF = 16;
    private final byte[] CNT;
    private Instance instance;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f11971k;
    private byte[] npub;
    private static final byte[] sbox_8 = {101, 76, 106, 66, 75, 99, 67, 107, 85, 117, 90, 122, 83, 115, 91, 123, 53, -116, 58, -127, -119, 51, Byte.MIN_VALUE, 59, -107, 37, -104, 42, -112, 35, -103, 43, -27, -52, -24, -63, -55, -32, -64, -23, -43, -11, -40, -8, -48, -16, -39, -7, -91, 28, -88, SocConst.Upgrade.FLASH_DATA, 27, -96, 19, -87, 5, -75, 10, -72, 3, -80, 11, -71, SocConst.Upgrade.CUPID_DATA, -120, 60, -123, -115, 52, -124, 61, -111, 34, -100, 44, -108, 36, -99, 45, 98, 74, 108, 69, 77, 100, 68, 109, 82, 114, 92, 124, 84, 116, 93, NoConst.ESCAPE_0X7D, -95, 26, -84, 21, 29, -92, 20, -83, 2, -79, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, PSSSigner.TRAILER_IMPLICIT, 4, -76, 13, -67, -31, -56, -20, -59, -51, -28, -60, -19, -47, -15, -36, -4, -44, -12, -35, -3, 54, -114, 56, -126, -117, 48, -125, 57, -106, 38, -102, 40, -109, HebrewProber.SPACE, -101, 41, 102, 78, 104, 65, 73, 96, 64, 105, 86, 118, 88, 120, 80, 112, 89, 121, -90, 30, -86, SocConst.Upgrade.FLASH_CMD, 25, -93, 16, -85, 6, -74, 8, -70, 0, -77, 9, -69, -26, -50, -22, -62, -53, -29, -61, -21, -42, -10, -38, -6, -45, -13, -37, -5, SocConst.Upgrade.CUPID_CMD, -118, 62, -122, -113, 55, -121, 63, -110, SocConst.Upgrade.CPU_CMD, -98, 46, -105, 39, -97, 47, 97, 72, 110, 70, 79, 103, 71, 111, 81, 113, 94, NoConst.ESCAPE_0X7E, 87, 119, 95, Byte.MAX_VALUE, -94, 24, -82, 22, 31, -89, 23, -81, 1, -78, 14, -66, 7, -73, 15, -65, -30, -54, -18, -58, -49, -25, -57, -17, -46, -14, -34, -2, -41, -9, -33, -1};
    private static final byte[] TWEAKEY_P = {9, 15, 8, 13, 10, 14, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 11, 0, 1, 2, 3, 4, 5, 6, 7};
    private static final byte[] RC = {1, 3, 7, 15, 31, 62, 61, 59, 55, 47, 30, 60, 57, 51, 39, 14, 29, 58, 53, 43, 22, 44, 24, 48, SocConst.Upgrade.CPU_CMD, 2, 5, 11, 23, 46, 28, 56, SocConst.Upgrade.CUPID_CMD, 35, 6, 13, 27, 54, 45, 26};

    public interface Instance {
        void processBufferAAD(byte[] bArr, int i10);

        void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11);

        void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11);

        void processFinalAAD();

        void processFinalBlock(byte[] bArr, int i10);

        void reset();
    }

    public class RomulusM implements Instance {
        private int offset;
        private final byte[] mac_s = new byte[16];
        private final byte[] mac_CNT = new byte[7];

        /* renamed from: s, reason: collision with root package name */
        private final byte[] f11972s = new byte[16];
        private boolean twist = true;

        public RomulusM() {
        }

        public int ad_encryption(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, int i11, byte[] bArr4) {
            byte[] bArr5 = new byte[16];
            byte[] bArr6 = new byte[16];
            int iMin = Math.min(i11, 16);
            int i12 = i11 - iMin;
            RomulusEngine.this.pad(bArr, i10, bArr6, 16, iMin);
            Bytes.xorTo(16, bArr6, bArr2);
            int i13 = i10 + iMin;
            this.offset = i13;
            RomulusEngine.this.lfsr_gf56(bArr4);
            if (i12 == 0) {
                return i12;
            }
            int iMin2 = Math.min(i12, 16);
            int i14 = i12 - iMin2;
            RomulusEngine.this.pad(bArr, i13, bArr5, 16, iMin2);
            this.offset = i13 + iMin2;
            RomulusEngine.this.block_cipher(bArr2, bArr3, bArr5, 0, bArr4, (byte) 44);
            RomulusEngine.this.lfsr_gf56(bArr4);
            return i14;
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferAAD(byte[] bArr, int i10) {
            if (this.twist) {
                Bytes.xorTo(RomulusEngine.this.MAC_SIZE, bArr, i10, this.mac_s);
            } else {
                RomulusEngine romulusEngine = RomulusEngine.this;
                romulusEngine.block_cipher(this.mac_s, romulusEngine.f11971k, bArr, i10, this.mac_CNT, (byte) 40);
            }
            this.twist = !this.twist;
            RomulusEngine.this.lfsr_gf56(this.mac_CNT);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processFinalAAD() {
            if (RomulusEngine.this.aadOperator.getLen() == 0) {
                RomulusEngine.this.lfsr_gf56(this.mac_CNT);
            } else {
                RomulusEngine romulusEngine = RomulusEngine.this;
                int i10 = romulusEngine.m_aadPos;
                if (i10 != 0) {
                    Arrays.fill(romulusEngine.m_aad, i10, romulusEngine.BlockSize - 1, (byte) 0);
                    RomulusEngine romulusEngine2 = RomulusEngine.this;
                    byte[] bArr = romulusEngine2.m_aad;
                    int i11 = romulusEngine2.BlockSize;
                    bArr[i11 - 1] = (byte) (romulusEngine2.m_aadPos & 15);
                    if (this.twist) {
                        Bytes.xorTo(i11, bArr, this.mac_s);
                    } else {
                        romulusEngine2.block_cipher(this.mac_s, romulusEngine2.f11971k, RomulusEngine.this.m_aad, 0, this.mac_CNT, (byte) 40);
                    }
                    RomulusEngine.this.lfsr_gf56(this.mac_CNT);
                }
            }
            RomulusEngine romulusEngine3 = RomulusEngine.this;
            romulusEngine3.m_aadPos = 0;
            romulusEngine3.m_bufPos = romulusEngine3.dataOperator.getLen();
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x010a  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void processFinalBlock(byte[] bArr, int i10) {
            byte b10;
            int i11;
            int i12;
            int i13;
            RomulusEngine romulusEngine;
            int i14;
            int i15;
            RomulusEngine romulusEngine2;
            int i16;
            int iAd_encryption;
            int iAd_encryption2;
            int i17;
            int len = RomulusEngine.this.aadOperator.getLen();
            int len2 = RomulusEngine.this.dataOperator.getLen();
            RomulusEngine romulusEngine3 = RomulusEngine.this;
            int i18 = len2 - (romulusEngine3.forEncryption ? 0 : romulusEngine3.MAC_SIZE);
            byte[] bytes = ((AEADBaseEngine.StreamDataOperator) romulusEngine3.dataOperator).getBytes();
            int i19 = len & 31;
            if (i19 == 0 && len != 0) {
                i11 = 56;
            } else if (i19 < 16) {
                i11 = 50;
            } else if (i19 != 16) {
                i11 = 58;
            } else {
                b10 = 48;
                i12 = i18 & 31;
                if (i12 != 0 && i18 != 0) {
                    i13 = b10 ^ 4;
                } else {
                    if (i12 < 16) {
                        if (i12 != 16) {
                            i13 = b10 ^ 5;
                        }
                        byte b11 = b10;
                        romulusEngine = RomulusEngine.this;
                        int i20 = 0;
                        if (romulusEngine.forEncryption) {
                            if ((b11 & 8) == 0) {
                                byte[] bArr2 = new byte[16];
                                int iMin = Math.min(i18, 16);
                                RomulusEngine.this.pad(bytes, 0, bArr2, 16, iMin);
                                RomulusEngine romulusEngine4 = RomulusEngine.this;
                                romulusEngine4.block_cipher(this.mac_s, romulusEngine4.f11971k, bArr2, 0, this.mac_CNT, (byte) 44);
                                RomulusEngine.this.lfsr_gf56(this.mac_CNT);
                                iAd_encryption2 = i18 - iMin;
                                i17 = iMin;
                            } else {
                                if (i18 == 0) {
                                    romulusEngine.lfsr_gf56(this.mac_CNT);
                                }
                                iAd_encryption2 = i18;
                                i17 = 0;
                            }
                            while (iAd_encryption2 > 0) {
                                this.offset = i17;
                                iAd_encryption2 = ad_encryption(bytes, i17, this.mac_s, RomulusEngine.this.f11971k, iAd_encryption2, this.mac_CNT);
                                i17 = this.offset;
                                bytes = bytes;
                            }
                            RomulusEngine romulusEngine5 = RomulusEngine.this;
                            i14 = 16;
                            romulusEngine5.block_cipher(this.mac_s, romulusEngine5.f11971k, RomulusEngine.this.npub, 0, this.mac_CNT, b11);
                            RomulusEngine romulusEngine6 = RomulusEngine.this;
                            romulusEngine6.g8A(this.mac_s, romulusEngine6.mac, 0);
                            i20 = i17 - i18;
                            i15 = iAd_encryption2;
                        } else {
                            i14 = 16;
                            System.arraycopy(bytes, i18, romulusEngine.mac, 0, romulusEngine.MAC_SIZE);
                            i15 = i18;
                        }
                        RomulusEngine romulusEngine7 = RomulusEngine.this;
                        romulusEngine7.reset_lfsr_gf56(romulusEngine7.CNT);
                        System.arraycopy(RomulusEngine.this.mac, 0, this.f11972s, 0, i14);
                        if (i18 > 0) {
                            RomulusEngine romulusEngine8 = RomulusEngine.this;
                            romulusEngine8.block_cipher(this.f11972s, romulusEngine8.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 36);
                            int i21 = i10;
                            int i22 = i20;
                            while (i18 > i14) {
                                i18 -= 16;
                                RomulusEngine.this.rho(bytes, i22, bArr, i21, this.f11972s, 16);
                                i21 += 16;
                                i22 += 16;
                                RomulusEngine romulusEngine9 = RomulusEngine.this;
                                romulusEngine9.lfsr_gf56(romulusEngine9.CNT);
                                RomulusEngine romulusEngine10 = RomulusEngine.this;
                                romulusEngine10.block_cipher(this.f11972s, romulusEngine10.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 36);
                            }
                            RomulusEngine.this.rho(bytes, i22, bArr, i21, this.f11972s, i18);
                        }
                        romulusEngine2 = RomulusEngine.this;
                        if (romulusEngine2.forEncryption) {
                            return;
                        }
                        if ((b11 & 8) == 0) {
                            byte[] bArr3 = new byte[i14];
                            int iMin2 = Math.min(i15, i14);
                            RomulusEngine.this.pad(bArr, i10, bArr3, 16, iMin2);
                            RomulusEngine romulusEngine11 = RomulusEngine.this;
                            romulusEngine11.block_cipher(this.mac_s, romulusEngine11.f11971k, bArr3, 0, this.mac_CNT, (byte) 44);
                            RomulusEngine.this.lfsr_gf56(this.mac_CNT);
                            iAd_encryption = i15 - iMin2;
                            i16 = i10 + iMin2;
                        } else {
                            if (i18 == 0) {
                                romulusEngine2.lfsr_gf56(this.mac_CNT);
                            }
                            i16 = i10;
                            iAd_encryption = i15;
                        }
                        while (iAd_encryption > 0) {
                            this.offset = i16;
                            iAd_encryption = ad_encryption(bArr, i16, this.mac_s, RomulusEngine.this.f11971k, iAd_encryption, this.mac_CNT);
                            i16 = this.offset;
                            bytes = bytes;
                        }
                        RomulusEngine romulusEngine12 = RomulusEngine.this;
                        romulusEngine12.block_cipher(this.mac_s, romulusEngine12.f11971k, RomulusEngine.this.npub, 0, this.mac_CNT, b11);
                        RomulusEngine romulusEngine13 = RomulusEngine.this;
                        romulusEngine13.g8A(this.mac_s, romulusEngine13.mac, 0);
                        int len3 = RomulusEngine.this.dataOperator.getLen();
                        RomulusEngine romulusEngine14 = RomulusEngine.this;
                        int i23 = romulusEngine14.MAC_SIZE;
                        System.arraycopy(bytes, len3 - i23, romulusEngine14.m_buf, 0, i23);
                        RomulusEngine.this.m_bufPos = 0;
                        return;
                    }
                    i13 = b10 ^ 1;
                }
                b10 = (byte) i13;
                byte b112 = b10;
                romulusEngine = RomulusEngine.this;
                int i202 = 0;
                if (romulusEngine.forEncryption) {
                }
                RomulusEngine romulusEngine72 = RomulusEngine.this;
                romulusEngine72.reset_lfsr_gf56(romulusEngine72.CNT);
                System.arraycopy(RomulusEngine.this.mac, 0, this.f11972s, 0, i14);
                if (i18 > 0) {
                }
                romulusEngine2 = RomulusEngine.this;
                if (romulusEngine2.forEncryption) {
                }
            }
            b10 = (byte) i11;
            i12 = i18 & 31;
            if (i12 != 0) {
                if (i12 < 16) {
                }
                b10 = (byte) i13;
            }
            byte b1122 = b10;
            romulusEngine = RomulusEngine.this;
            int i2022 = 0;
            if (romulusEngine.forEncryption) {
            }
            RomulusEngine romulusEngine722 = RomulusEngine.this;
            romulusEngine722.reset_lfsr_gf56(romulusEngine722.CNT);
            System.arraycopy(RomulusEngine.this.mac, 0, this.f11972s, 0, i14);
            if (i18 > 0) {
            }
            romulusEngine2 = RomulusEngine.this;
            if (romulusEngine2.forEncryption) {
            }
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void reset() {
            Arrays.clear(this.f11972s);
            Arrays.clear(this.mac_s);
            RomulusEngine.this.reset_lfsr_gf56(this.mac_CNT);
            RomulusEngine romulusEngine = RomulusEngine.this;
            romulusEngine.reset_lfsr_gf56(romulusEngine.CNT);
            this.twist = true;
        }
    }

    public class RomulusN implements Instance {

        /* renamed from: s, reason: collision with root package name */
        private final byte[] f11973s = new byte[16];
        boolean twist;

        public RomulusN() {
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferAAD(byte[] bArr, int i10) {
            if (this.twist) {
                Bytes.xorTo(16, bArr, i10, this.f11973s);
            } else {
                RomulusEngine romulusEngine = RomulusEngine.this;
                romulusEngine.block_cipher(this.f11973s, romulusEngine.f11971k, bArr, i10, RomulusEngine.this.CNT, (byte) 8);
            }
            RomulusEngine romulusEngine2 = RomulusEngine.this;
            romulusEngine2.lfsr_gf56(romulusEngine2.CNT);
            this.twist = !this.twist;
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
            RomulusEngine.this.g8A(this.f11973s, bArr2, i11);
            for (int i12 = 0; i12 < 16; i12++) {
                int i13 = i12 + i11;
                byte b10 = (byte) (bArr2[i13] ^ bArr[i12 + i10]);
                bArr2[i13] = b10;
                byte[] bArr3 = this.f11973s;
                bArr3[i12] = (byte) (b10 ^ bArr3[i12]);
            }
            RomulusEngine romulusEngine = RomulusEngine.this;
            romulusEngine.lfsr_gf56(romulusEngine.CNT);
            RomulusEngine romulusEngine2 = RomulusEngine.this;
            romulusEngine2.block_cipher(this.f11973s, romulusEngine2.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 4);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
            RomulusEngine.this.g8A(this.f11973s, bArr2, i11);
            for (int i12 = 0; i12 < 16; i12++) {
                byte[] bArr3 = this.f11973s;
                int i13 = i12 + i10;
                bArr3[i12] = (byte) (bArr3[i12] ^ bArr[i13]);
                int i14 = i12 + i11;
                bArr2[i14] = (byte) (bArr2[i14] ^ bArr[i13]);
            }
            RomulusEngine romulusEngine = RomulusEngine.this;
            romulusEngine.lfsr_gf56(romulusEngine.CNT);
            RomulusEngine romulusEngine2 = RomulusEngine.this;
            romulusEngine2.block_cipher(this.f11973s, romulusEngine2.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 4);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processFinalAAD() {
            int i10 = RomulusEngine.this.m_aadPos;
            if (i10 != 0) {
                byte[] bArr = new byte[16];
                int iMin = Math.min(i10, 16);
                RomulusEngine romulusEngine = RomulusEngine.this;
                romulusEngine.pad(romulusEngine.m_aad, 0, bArr, 16, iMin);
                if (this.twist) {
                    Bytes.xorTo(16, bArr, this.f11973s);
                } else {
                    RomulusEngine romulusEngine2 = RomulusEngine.this;
                    romulusEngine2.block_cipher(this.f11973s, romulusEngine2.f11971k, bArr, 0, RomulusEngine.this.CNT, (byte) 8);
                }
                RomulusEngine romulusEngine3 = RomulusEngine.this;
                romulusEngine3.lfsr_gf56(romulusEngine3.CNT);
            }
            if (RomulusEngine.this.aadOperator.getLen() == 0) {
                RomulusEngine romulusEngine4 = RomulusEngine.this;
                romulusEngine4.lfsr_gf56(romulusEngine4.CNT);
                RomulusEngine romulusEngine5 = RomulusEngine.this;
                romulusEngine5.block_cipher(this.f11973s, romulusEngine5.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 26);
            } else {
                RomulusEngine romulusEngine6 = RomulusEngine.this;
                int i11 = romulusEngine6.m_aadPos & 15;
                byte[] bArr2 = this.f11973s;
                byte[] bArr3 = romulusEngine6.f11971k;
                if (i11 != 0) {
                    romulusEngine6.block_cipher(bArr2, bArr3, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 26);
                } else {
                    romulusEngine6.block_cipher(bArr2, bArr3, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 24);
                }
            }
            RomulusEngine romulusEngine7 = RomulusEngine.this;
            romulusEngine7.reset_lfsr_gf56(romulusEngine7.CNT);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processFinalBlock(byte[] bArr, int i10) {
            int len = RomulusEngine.this.dataOperator.getLen();
            RomulusEngine romulusEngine = RomulusEngine.this;
            if (len - (romulusEngine.forEncryption ? 0 : romulusEngine.MAC_SIZE) == 0) {
                romulusEngine.lfsr_gf56(romulusEngine.CNT);
                RomulusEngine romulusEngine2 = RomulusEngine.this;
                romulusEngine2.block_cipher(this.f11973s, romulusEngine2.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, (byte) 21);
            } else {
                int i11 = romulusEngine.m_bufPos;
                if (i11 != 0) {
                    int iMin = Math.min(i11, 16);
                    RomulusEngine romulusEngine3 = RomulusEngine.this;
                    romulusEngine3.rho(romulusEngine3.m_buf, 0, bArr, i10, this.f11973s, iMin);
                    RomulusEngine romulusEngine4 = RomulusEngine.this;
                    romulusEngine4.lfsr_gf56(romulusEngine4.CNT);
                    RomulusEngine romulusEngine5 = RomulusEngine.this;
                    romulusEngine5.block_cipher(this.f11973s, romulusEngine5.f11971k, RomulusEngine.this.npub, 0, RomulusEngine.this.CNT, RomulusEngine.this.m_bufPos == 16 ? (byte) 20 : (byte) 21);
                }
            }
            RomulusEngine romulusEngine6 = RomulusEngine.this;
            romulusEngine6.g8A(this.f11973s, romulusEngine6.mac, 0);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void reset() {
            Arrays.clear(this.f11973s);
            RomulusEngine romulusEngine = RomulusEngine.this;
            romulusEngine.reset_lfsr_gf56(romulusEngine.CNT);
            this.twist = true;
        }
    }

    public static class RomulusParameters {
        public static final int ROMULUS_M = 0;
        public static final int ROMULUS_N = 1;
        public static final int ROMULUS_T = 2;
        public static final RomulusParameters RomulusM = new RomulusParameters(0);
        public static final RomulusParameters RomulusN = new RomulusParameters(1);
        public static final RomulusParameters RomulusT = new RomulusParameters(2);
        private final int ord;

        public RomulusParameters(int i10) {
            this.ord = i10;
        }
    }

    public class RomulusT implements Instance {
        byte[] CNT_Z;
        byte[] LR;
        byte[] S;
        byte[] T;
        byte[] Z;

        /* renamed from: g, reason: collision with root package name */
        private final byte[] f11974g;

        /* renamed from: h, reason: collision with root package name */
        private final byte[] f11975h;

        private RomulusT() {
            this.f11975h = new byte[16];
            this.f11974g = new byte[16];
            this.Z = new byte[16];
            this.CNT_Z = new byte[7];
            this.LR = new byte[32];
            this.T = new byte[16];
            this.S = new byte[16];
        }

        private void processAfterAbsorbCiphertext() {
            RomulusEngine romulusEngine = RomulusEngine.this;
            int i10 = romulusEngine.m_aadPos;
            int i11 = romulusEngine.BlockSize;
            if (i10 == i11) {
                RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, romulusEngine.m_aad, 0);
                RomulusEngine.this.m_aadPos = 0;
            } else {
                romulusEngine.m_aadPos = i11;
            }
            RomulusEngine.this.lfsr_gf56(this.CNT_Z);
        }

        private void processBuffer(byte[] bArr, int i10, byte[] bArr2, int i11) {
            System.arraycopy(RomulusEngine.this.npub, 0, this.S, 0, 16);
            RomulusEngine romulusEngine = RomulusEngine.this;
            romulusEngine.block_cipher(this.S, this.Z, this.T, 0, romulusEngine.CNT, (byte) 64);
            Bytes.xor(16, this.S, bArr, i10, bArr2, i11);
            System.arraycopy(RomulusEngine.this.npub, 0, this.S, 0, 16);
            RomulusEngine romulusEngine2 = RomulusEngine.this;
            romulusEngine2.block_cipher(this.S, this.Z, this.T, 0, romulusEngine2.CNT, (byte) 65);
            System.arraycopy(this.S, 0, this.Z, 0, 16);
            RomulusEngine romulusEngine3 = RomulusEngine.this;
            romulusEngine3.lfsr_gf56(romulusEngine3.CNT);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferAAD(byte[] bArr, int i10) {
            RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, bArr, i10);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
            processBuffer(bArr, i10, bArr2, i11);
            RomulusEngine romulusEngine = RomulusEngine.this;
            System.arraycopy(bArr, i10, romulusEngine.m_aad, romulusEngine.m_aadPos, romulusEngine.BlockSize);
            processAfterAbsorbCiphertext();
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
            processBuffer(bArr, i10, bArr2, i11);
            RomulusEngine romulusEngine = RomulusEngine.this;
            System.arraycopy(bArr2, i11, romulusEngine.m_aad, romulusEngine.m_aadPos, romulusEngine.BlockSize);
            processAfterAbsorbCiphertext();
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processFinalAAD() {
            RomulusEngine romulusEngine = RomulusEngine.this;
            Arrays.fill(romulusEngine.m_aad, romulusEngine.m_aadPos, romulusEngine.AADBufferSize - 1, (byte) 0);
            RomulusEngine romulusEngine2 = RomulusEngine.this;
            int i10 = romulusEngine2.m_aadPos;
            if (i10 >= 16) {
                byte[] bArr = romulusEngine2.m_aad;
                bArr[romulusEngine2.AADBufferSize - 1] = (byte) (i10 & 15);
                RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, bArr, 0);
                RomulusEngine.this.m_aadPos = 0;
                return;
            }
            if (i10 < 0 || romulusEngine2.aadOperator.getLen() == 0) {
                return;
            }
            RomulusEngine romulusEngine3 = RomulusEngine.this;
            byte[] bArr2 = romulusEngine3.m_aad;
            int i11 = romulusEngine3.BlockSize;
            bArr2[i11 - 1] = (byte) (romulusEngine3.m_aadPos & 15);
            romulusEngine3.m_aadPos = i11;
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void processFinalBlock(byte[] bArr, int i10) {
            char c7;
            int len = RomulusEngine.this.dataOperator.getLen();
            RomulusEngine romulusEngine = RomulusEngine.this;
            int i11 = len - (romulusEngine.forEncryption ? 0 : romulusEngine.MAC_SIZE);
            int i12 = romulusEngine.m_bufPos;
            if (i12 != 0) {
                int iMin = Math.min(i12, 16);
                System.arraycopy(RomulusEngine.this.npub, 0, this.S, 0, 16);
                RomulusEngine romulusEngine2 = RomulusEngine.this;
                romulusEngine2.block_cipher(this.S, this.Z, this.T, 0, romulusEngine2.CNT, (byte) 64);
                Bytes.xor(iMin, RomulusEngine.this.m_buf, this.S, bArr, i10);
                System.arraycopy(RomulusEngine.this.npub, 0, this.S, 0, 16);
                RomulusEngine romulusEngine3 = RomulusEngine.this;
                romulusEngine3.lfsr_gf56(romulusEngine3.CNT);
                RomulusEngine romulusEngine4 = RomulusEngine.this;
                if (!romulusEngine4.forEncryption) {
                    bArr = romulusEngine4.m_buf;
                    i10 = 0;
                }
                System.arraycopy(bArr, i10, romulusEngine4.m_aad, romulusEngine4.m_aadPos, romulusEngine4.m_bufPos);
                RomulusEngine romulusEngine5 = RomulusEngine.this;
                Arrays.fill(romulusEngine5.m_aad, romulusEngine5.m_aadPos + romulusEngine5.m_bufPos, romulusEngine5.AADBufferSize - 1, (byte) 0);
                RomulusEngine romulusEngine6 = RomulusEngine.this;
                byte[] bArr2 = romulusEngine6.m_aad;
                int i13 = romulusEngine6.m_aadPos;
                bArr2[(romulusEngine6.BlockSize + i13) - 1] = (byte) (romulusEngine6.m_bufPos & 15);
                if (i13 == 0) {
                    byte[] bArr3 = romulusEngine6.npub;
                    RomulusEngine romulusEngine7 = RomulusEngine.this;
                    byte[] bArr4 = romulusEngine7.m_aad;
                    int i14 = romulusEngine7.BlockSize;
                    System.arraycopy(bArr3, 0, bArr4, i14, i14);
                    c7 = 0;
                } else {
                    c7 = 16;
                }
                RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, RomulusEngine.this.m_aad, 0);
                RomulusEngine.this.lfsr_gf56(this.CNT_Z);
            } else if (romulusEngine.m_aadPos != 0) {
                if (i11 > 0) {
                    Arrays.fill(romulusEngine.m_aad, romulusEngine.BlockSize, romulusEngine.AADBufferSize, (byte) 0);
                } else {
                    if (romulusEngine.aadOperator.getLen() != 0) {
                        byte[] bArr5 = RomulusEngine.this.npub;
                        RomulusEngine romulusEngine8 = RomulusEngine.this;
                        System.arraycopy(bArr5, 0, romulusEngine8.m_aad, romulusEngine8.m_aadPos, 16);
                        RomulusEngine.this.m_aadPos = 0;
                        c7 = 0;
                    }
                    RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, RomulusEngine.this.m_aad, 0);
                }
                c7 = 16;
                RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, RomulusEngine.this.m_aad, 0);
            } else if (i11 > 0) {
                Arrays.fill(romulusEngine.m_aad, 0, romulusEngine.BlockSize, (byte) 0);
                byte[] bArr6 = RomulusEngine.this.npub;
                RomulusEngine romulusEngine9 = RomulusEngine.this;
                byte[] bArr7 = romulusEngine9.m_aad;
                int i15 = romulusEngine9.BlockSize;
                System.arraycopy(bArr6, 0, bArr7, i15, i15);
                RomulusEngine.hirose_128_128_256(this.f11975h, this.f11974g, RomulusEngine.this.m_aad, 0);
                c7 = 0;
            } else {
                c7 = 16;
            }
            if (c7 == 16) {
                System.arraycopy(RomulusEngine.this.npub, 0, RomulusEngine.this.m_aad, 0, 16);
                System.arraycopy(RomulusEngine.this.CNT, 0, RomulusEngine.this.m_aad, 16, 7);
                Arrays.fill(RomulusEngine.this.m_aad, 23, 31, (byte) 0);
                RomulusEngine.this.m_aad[31] = 23;
            } else {
                System.arraycopy(this.CNT_Z, 0, RomulusEngine.this.m_aad, 0, 7);
                Arrays.fill(RomulusEngine.this.m_aad, 7, 31, (byte) 0);
                RomulusEngine.this.m_aad[31] = 7;
            }
            byte[] bArr8 = this.f11975h;
            bArr8[0] = (byte) (bArr8[0] ^ 2);
            RomulusEngine.hirose_128_128_256(bArr8, this.f11974g, RomulusEngine.this.m_aad, 0);
            System.arraycopy(this.f11975h, 0, this.LR, 0, 16);
            System.arraycopy(this.f11974g, 0, this.LR, 16, 16);
            Arrays.clear(this.CNT_Z);
            RomulusEngine romulusEngine10 = RomulusEngine.this;
            romulusEngine10.block_cipher(this.LR, romulusEngine10.f11971k, this.LR, 16, this.CNT_Z, (byte) 68);
            byte[] bArr9 = this.LR;
            RomulusEngine romulusEngine11 = RomulusEngine.this;
            System.arraycopy(bArr9, 0, romulusEngine11.mac, 0, romulusEngine11.MAC_SIZE);
        }

        @Override // org.bouncycastle.crypto.engines.RomulusEngine.Instance
        public void reset() {
            Arrays.clear(this.f11975h);
            Arrays.clear(this.f11974g);
            Arrays.clear(this.LR);
            Arrays.clear(this.T);
            Arrays.clear(this.S);
            Arrays.clear(this.CNT_Z);
            RomulusEngine romulusEngine = RomulusEngine.this;
            romulusEngine.reset_lfsr_gf56(romulusEngine.CNT);
            System.arraycopy(RomulusEngine.this.npub, 0, this.Z, 0, RomulusEngine.this.IV_SIZE);
            RomulusEngine romulusEngine2 = RomulusEngine.this;
            romulusEngine2.block_cipher(this.Z, romulusEngine2.f11971k, this.T, 0, this.CNT_Z, (byte) 66);
            RomulusEngine.this.reset_lfsr_gf56(this.CNT_Z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RomulusEngine(RomulusParameters romulusParameters) {
        Instance romulusM;
        this.AADBufferSize = 16;
        this.BlockSize = 16;
        this.MAC_SIZE = 16;
        this.IV_SIZE = 16;
        this.KEY_SIZE = 16;
        this.CNT = new byte[7];
        int i10 = romulusParameters.ord;
        if (i10 == 0) {
            this.algorithmName = "Romulus-M";
            romulusM = new RomulusM();
        } else {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.algorithmName = "Romulus-T";
                    this.AADBufferSize = 32;
                    romulusM = new RomulusT();
                }
                setInnerMembers(romulusParameters != RomulusParameters.RomulusN ? AEADBaseEngine.ProcessingBufferType.Buffered : AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Counter, romulusParameters != RomulusParameters.RomulusM ? AEADBaseEngine.DataOperatorType.Stream : AEADBaseEngine.DataOperatorType.Counter);
            }
            this.algorithmName = "Romulus-N";
            romulusM = new RomulusN();
        }
        this.instance = romulusM;
        setInnerMembers(romulusParameters != RomulusParameters.RomulusN ? AEADBaseEngine.ProcessingBufferType.Buffered : AEADBaseEngine.ProcessingBufferType.Immediate, AEADBaseEngine.AADOperatorType.Counter, romulusParameters != RomulusParameters.RomulusM ? AEADBaseEngine.DataOperatorType.Stream : AEADBaseEngine.DataOperatorType.Counter);
    }

    public static void hirose_128_128_256(RomulusDigest.Friend friend, byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by RomulusDigest");
        }
        hirose_128_128_256(bArr, bArr2, bArr3, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset_lfsr_gf56(byte[] bArr) {
        bArr[0] = 1;
        Arrays.fill(bArr, 1, 7, (byte) 0);
    }

    private static void skinny_128_384_plus_enc(byte[] bArr, byte[] bArr2) {
        Class cls = Byte.TYPE;
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) cls, 4, 4);
        byte[][][] bArr4 = (byte[][][]) Array.newInstance((Class<?>) cls, 3, 4, 4);
        byte[][][] bArr5 = (byte[][][]) Array.newInstance((Class<?>) cls, 3, 4, 4);
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i10 << 2;
            System.arraycopy(bArr, i11, bArr3[i10], 0, 4);
            System.arraycopy(bArr2, i11, bArr4[0][i10], 0, 4);
            System.arraycopy(bArr2, i11 + 16, bArr4[1][i10], 0, 4);
            System.arraycopy(bArr2, i11 + 32, bArr4[2][i10], 0, 4);
        }
        for (int i12 = 0; i12 < 40; i12++) {
            for (int i13 = 0; i13 < 4; i13++) {
                for (int i14 = 0; i14 < 4; i14++) {
                    byte[] bArr6 = bArr3[i13];
                    bArr6[i14] = sbox_8[bArr6[i14] & 255];
                }
            }
            byte[] bArr7 = bArr3[0];
            byte b10 = bArr7[0];
            byte[] bArr8 = RC;
            bArr7[0] = (byte) (b10 ^ (bArr8[i12] & 15));
            byte[] bArr9 = bArr3[1];
            bArr9[0] = (byte) (bArr9[0] ^ ((bArr8[i12] >>> 4) & 3));
            byte[] bArr10 = bArr3[2];
            bArr10[0] = (byte) (bArr10[0] ^ 2);
            for (int i15 = 0; i15 <= 1; i15++) {
                for (int i16 = 0; i16 < 4; i16++) {
                    byte[] bArr11 = bArr3[i15];
                    bArr11[i16] = (byte) (bArr11[i16] ^ ((bArr4[0][i15][i16] ^ bArr4[1][i15][i16]) ^ bArr4[2][i15][i16]));
                }
            }
            for (int i17 = 0; i17 < 4; i17++) {
                for (int i18 = 0; i18 < 4; i18++) {
                    byte b11 = TWEAKEY_P[(i17 << 2) + i18];
                    int i19 = b11 >>> 2;
                    int i20 = b11 & 3;
                    bArr5[0][i17][i18] = bArr4[0][i19][i20];
                    bArr5[1][i17][i18] = bArr4[1][i19][i20];
                    bArr5[2][i17][i18] = bArr4[2][i19][i20];
                }
            }
            int i21 = 0;
            while (i21 <= 1) {
                for (int i22 = 0; i22 < 4; i22++) {
                    bArr4[0][i21][i22] = bArr5[0][i21][i22];
                    byte b12 = bArr5[1][i21][i22];
                    bArr4[1][i21][i22] = (byte) (((b12 >>> 5) & 1) ^ (((b12 << 1) & 254) ^ ((b12 >>> 7) & 1)));
                    byte b13 = bArr5[2][i21][i22];
                    bArr4[2][i21][i22] = (byte) (((b13 << 1) & 128) ^ (((b13 >>> 1) & 127) ^ ((b13 << 7) & 128)));
                }
                i21++;
            }
            while (i21 < 4) {
                for (int i23 = 0; i23 < 4; i23++) {
                    bArr4[0][i21][i23] = bArr5[0][i21][i23];
                    bArr4[1][i21][i23] = bArr5[1][i21][i23];
                    bArr4[2][i21][i23] = bArr5[2][i21][i23];
                }
                i21++;
            }
            byte[] bArr12 = bArr3[1];
            byte b14 = bArr12[3];
            bArr12[3] = bArr12[2];
            bArr12[2] = bArr12[1];
            bArr12[1] = bArr12[0];
            bArr12[0] = b14;
            byte[] bArr13 = bArr3[2];
            byte b15 = bArr13[0];
            bArr13[0] = bArr13[2];
            bArr13[2] = b15;
            byte b16 = bArr13[1];
            bArr13[1] = bArr13[3];
            bArr13[3] = b16;
            byte[] bArr14 = bArr3[3];
            byte b17 = bArr14[0];
            bArr14[0] = bArr14[1];
            bArr14[1] = bArr14[2];
            bArr14[2] = bArr14[3];
            bArr14[3] = b17;
            for (int i24 = 0; i24 < 4; i24++) {
                byte[] bArr15 = bArr3[1];
                byte b18 = bArr15[i24];
                byte[] bArr16 = bArr3[2];
                bArr15[i24] = (byte) (b18 ^ bArr16[i24]);
                byte b19 = bArr16[i24];
                byte[] bArr17 = bArr3[0];
                byte b20 = (byte) (b19 ^ bArr17[i24]);
                bArr16[i24] = b20;
                byte[] bArr18 = bArr3[3];
                byte b21 = (byte) (bArr18[i24] ^ b20);
                bArr18[i24] = b21;
                bArr18[i24] = bArr16[i24];
                bArr16[i24] = bArr15[i24];
                bArr15[i24] = bArr17[i24];
                bArr17[i24] = b21;
            }
        }
        for (int i25 = 0; i25 < 16; i25++) {
            bArr[i25] = (byte) (bArr3[i25 >>> 2][i25 & 3] & 255);
        }
    }

    public void block_cipher(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, byte[] bArr4, byte b10) {
        byte[] bArr5 = new byte[48];
        System.arraycopy(bArr4, 0, bArr5, 0, 7);
        bArr5[7] = b10;
        System.arraycopy(bArr3, i10, bArr5, 16, 16);
        System.arraycopy(bArr2, 0, bArr5, 32, 16);
        skinny_128_384_plus_enc(bArr, bArr5);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int i10) {
        return super.doFinal(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void finishAAD(AEADBaseEngine.State state, boolean z) {
        finishAAD1(state);
    }

    public void g8A(byte[] bArr, byte[] bArr2, int i10) {
        int iMin = Math.min(bArr2.length - i10, 16);
        for (int i11 = 0; i11 < iMin; i11++) {
            byte b10 = bArr[i11];
            bArr2[i11 + i10] = (byte) (((b10 & 1) << 7) ^ (((b10 & 255) >>> 1) ^ (b10 & 128)));
        }
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ String getAlgorithmName() {
        return super.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public /* bridge */ /* synthetic */ int getIVBytesSize() {
        return super.getIVBytesSize();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public /* bridge */ /* synthetic */ int getKeyBytesSize() {
        return super.getKeyBytesSize();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ byte[] getMac() {
        return super.getMac();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int getOutputSize(int i10) {
        return super.getOutputSize(i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int getUpdateOutputSize(int i10) {
        return super.getUpdateOutputSize(i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void init(boolean z, CipherParameters cipherParameters) {
        super.init(z, cipherParameters);
    }

    public void lfsr_gf56(byte[] bArr) {
        byte b10 = bArr[6];
        byte b11 = (byte) ((b10 & 255) >>> 7);
        byte b12 = bArr[5];
        bArr[6] = (byte) (((b10 & 255) << 1) | ((b12 & 255) >>> 7));
        int i10 = (b12 & 255) << 1;
        byte b13 = bArr[4];
        bArr[5] = (byte) (i10 | ((b13 & 255) >>> 7));
        int i11 = (b13 & 255) << 1;
        byte b14 = bArr[3];
        bArr[4] = (byte) (i11 | ((b14 & 255) >>> 7));
        int i12 = (b14 & 255) << 1;
        byte b15 = bArr[2];
        bArr[3] = (byte) (i12 | ((b15 & 255) >>> 7));
        byte b16 = bArr[1];
        bArr[2] = (byte) (((b15 & 255) << 1) | ((b16 & 255) >>> 7));
        int i13 = (b16 & 255) << 1;
        byte b17 = bArr[0];
        bArr[1] = (byte) (i13 | ((b17 & 255) >>> 7));
        int i14 = (b17 & 255) << 1;
        if (b11 == 1) {
            bArr[0] = (byte) (i14 ^ 149);
        } else {
            bArr[0] = (byte) i14;
        }
    }

    public void pad(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        bArr2[i11 - 1] = (byte) (i12 & 15);
        System.arraycopy(bArr, i10, bArr2, 0, i12);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADByte(byte b10) {
        super.processAADByte(b10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void processAADBytes(byte[] bArr, int i10, int i11) {
        super.processAADBytes(bArr, i10, i11);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferAAD(byte[] bArr, int i10) {
        this.instance.processBufferAAD(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        this.instance.processBufferDecrypt(bArr, i10, bArr2, i11);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11) {
        this.instance.processBufferEncrypt(bArr, i10, bArr2, i11);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int processByte(byte b10, byte[] bArr, int i10) {
        return super.processByte(b10, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        return super.processBytes(bArr, i10, i11, bArr2, i12);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalAAD() {
        this.instance.processFinalAAD();
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void processFinalBlock(byte[] bArr, int i10) {
        this.instance.processFinalBlock(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine, org.bouncycastle.crypto.modes.AEADCipher
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    public void rho(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, int i12) {
        int i13;
        byte[] bArr4 = new byte[16];
        pad(bArr, i10, bArr4, 16, i12);
        g8A(bArr3, bArr2, i11);
        if (this.forEncryption) {
            for (int i14 = 0; i14 < 16; i14++) {
                bArr3[i14] = (byte) (bArr3[i14] ^ bArr4[i14]);
                int i15 = i14 + i11;
                if (i14 < i12) {
                    bArr2[i15] = (byte) (bArr2[i15] ^ bArr4[i14]);
                } else {
                    bArr2[i15] = 0;
                }
            }
            return;
        }
        for (int i16 = 0; i16 < 16; i16++) {
            byte b10 = (byte) (bArr3[i16] ^ bArr4[i16]);
            bArr3[i16] = b10;
            if (i16 < i12 && (i13 = i16 + i11) < bArr2.length) {
                bArr3[i16] = (byte) (b10 ^ bArr2[i13]);
                bArr2[i13] = (byte) (bArr2[i13] ^ bArr4[i16]);
            }
        }
    }

    public static void hirose_128_128_256(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        byte[] bArr4 = new byte[48];
        byte[] bArr5 = new byte[16];
        System.arraycopy(bArr2, 0, bArr4, 0, 16);
        System.arraycopy(bArr, 0, bArr2, 0, 16);
        System.arraycopy(bArr, 0, bArr5, 0, 16);
        bArr2[0] = (byte) (bArr2[0] ^ 1);
        System.arraycopy(bArr3, i10, bArr4, 16, 32);
        skinny_128_384_plus_enc(bArr, bArr4);
        skinny_128_384_plus_enc(bArr2, bArr4);
        for (int i11 = 0; i11 < 16; i11++) {
            bArr[i11] = (byte) (bArr[i11] ^ bArr5[i11]);
            bArr2[i11] = (byte) (bArr2[i11] ^ bArr5[i11]);
        }
        bArr2[0] = (byte) (bArr2[0] ^ 1);
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void init(byte[] bArr, byte[] bArr2) {
        this.npub = bArr2;
        this.f11971k = bArr;
    }

    @Override // org.bouncycastle.crypto.engines.AEADBaseEngine
    public void reset(boolean z) {
        super.reset(z);
        this.instance.reset();
    }
}
