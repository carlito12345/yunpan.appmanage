package org.bouncycastle.crypto.generators;

import android.support.v4.media.session.a;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.source.SourceConst;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import okhttp3.internal.http.StatusLine;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.NaccacheSternKeyGenerationParameters;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes3.dex */
public class NaccacheSternKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NaccacheSternKeyGenerationParameters param;
    private static int[] smallPrimes = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, CarSettingID.Recv.EMS_PEDAL_LEVEL, CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR, 167, CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, 179, CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_DAY, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MINUTE, CarSettingID.Recv.IGM_WORK_STATE, CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT, 211, CarSettingID.Recv.PAA_DVR_TRIGGER, CarSettingID.Recv.IPB_CST_STATUS, CarSettingID.Recv.MAX_OPENNING_TAILGATE, CarSettingID.Recv.LF_DOOR_STATUS, 239, 241, 251, 257, SourceConst.IOCTL_FUNCTION_CARPLAY_NBAND, 269, 271, 277, 281, 283, SourceConst.IOCTL_FUNCTION_MAINVOL_UP, StatusLine.HTTP_TEMP_REDIRECT, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557};
    private static final BigInteger ONE = BigInteger.valueOf(1);

    private static Vector findFirstPrimes(int i10) {
        Vector vector = new Vector(i10);
        for (int i11 = 0; i11 != i10; i11++) {
            vector.addElement(BigInteger.valueOf(smallPrimes[i11]));
        }
        return vector;
    }

    private static BigInteger generatePrime(int i10, int i11, SecureRandom secureRandom) {
        BigInteger bigIntegerCreateRandomPrime;
        do {
            bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(i10, i11, secureRandom);
        } while (bigIntegerCreateRandomPrime.bitLength() != i10);
        return bigIntegerCreateRandomPrime;
    }

    private static int getInt(SecureRandom secureRandom, int i10) {
        int iNextInt;
        int i11;
        if (((-i10) & i10) == i10) {
            return (int) ((i10 * (secureRandom.nextInt() & Integer.MAX_VALUE)) >> 31);
        }
        do {
            iNextInt = secureRandom.nextInt() & Integer.MAX_VALUE;
            i11 = iNextInt % i10;
        } while ((i10 - 1) + (iNextInt - i11) < 0);
        return i11;
    }

    private static Vector permuteList(Vector vector, SecureRandom secureRandom) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i10 = 0; i10 < vector.size(); i10++) {
            vector3.addElement(vector.elementAt(i10));
        }
        vector2.addElement(vector3.elementAt(0));
        while (true) {
            vector3.removeElementAt(0);
            if (vector3.size() == 0) {
                return vector2;
            }
            vector2.insertElementAt(vector3.elementAt(0), getInt(secureRandom, vector2.size() + 1));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01b8  */
    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger bigIntegerGeneratePrime;
        BigInteger bigIntegerAdd;
        BigInteger bigIntegerGeneratePrime2;
        BigInteger bigInteger;
        BigInteger bigIntegerAdd2;
        BigInteger bigIntegerMultiply;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4;
        BigInteger bigIntegerMod;
        BigInteger bigIntegerCreateRandomPrime;
        int i10;
        SecureRandom secureRandom;
        int i11;
        SecureRandom secureRandom2;
        int strength = this.param.getStrength();
        SecureRandom random = this.param.getRandom();
        int certainty = this.param.getCertainty();
        boolean zIsDebug = this.param.isDebug();
        if (zIsDebug) {
            PrintStream printStream = System.out;
            this.param.getCntSmallPrimes();
            printStream.getClass();
        }
        Vector vectorPermuteList = permuteList(findFirstPrimes(this.param.getCntSmallPrimes()), random);
        BigInteger bigIntegerMultiply2 = ONE;
        BigInteger bigIntegerMultiply3 = bigIntegerMultiply2;
        for (int i12 = 0; i12 < vectorPermuteList.size() / 2; i12++) {
            bigIntegerMultiply3 = bigIntegerMultiply3.multiply((BigInteger) vectorPermuteList.elementAt(i12));
        }
        for (int size = vectorPermuteList.size() / 2; size < vectorPermuteList.size(); size++) {
            bigIntegerMultiply2 = bigIntegerMultiply2.multiply((BigInteger) vectorPermuteList.elementAt(size));
        }
        BigInteger bigIntegerMultiply4 = bigIntegerMultiply3.multiply(bigIntegerMultiply2);
        int iBitLength = (((strength - bigIntegerMultiply4.bitLength()) - 48) / 2) + 1;
        BigInteger bigIntegerGeneratePrime3 = generatePrime(iBitLength, certainty, random);
        BigInteger bigIntegerGeneratePrime4 = generatePrime(iBitLength, certainty, random);
        if (zIsDebug) {
            System.out.getClass();
        }
        BigInteger bigIntegerShiftLeft = bigIntegerGeneratePrime3.multiply(bigIntegerMultiply3).shiftLeft(1);
        BigInteger bigIntegerShiftLeft2 = bigIntegerGeneratePrime4.multiply(bigIntegerMultiply2).shiftLeft(1);
        while (true) {
            int i13 = 24;
            bigIntegerGeneratePrime = generatePrime(24, certainty, random);
            bigIntegerAdd = bigIntegerGeneratePrime.multiply(bigIntegerShiftLeft).add(ONE);
            if (bigIntegerAdd.isProbablePrime(certainty)) {
                while (true) {
                    bigIntegerGeneratePrime2 = generatePrime(i13, certainty, random);
                    if (!bigIntegerGeneratePrime.equals(bigIntegerGeneratePrime2)) {
                        BigInteger bigIntegerMultiply5 = bigIntegerGeneratePrime2.multiply(bigIntegerShiftLeft2);
                        bigInteger = ONE;
                        bigIntegerAdd2 = bigIntegerMultiply5.add(bigInteger);
                        if (bigIntegerAdd2.isProbablePrime(certainty)) {
                            break;
                        }
                        i13 = 24;
                    }
                }
                if (BigIntegers.modOddIsCoprime(bigIntegerGeneratePrime.multiply(bigIntegerGeneratePrime2), bigIntegerMultiply4)) {
                    bigIntegerMultiply = bigIntegerAdd.multiply(bigIntegerAdd2);
                    bigInteger2 = bigIntegerShiftLeft2;
                    if (bigIntegerMultiply.bitLength() >= strength) {
                        break;
                    }
                    i11 = strength;
                    secureRandom2 = random;
                    if (zIsDebug) {
                        PrintStream printStream2 = System.out;
                        bigIntegerAdd.multiply(bigIntegerAdd2).bitLength();
                        printStream2.getClass();
                    }
                }
            } else {
                i11 = strength;
                secureRandom2 = random;
                bigInteger2 = bigIntegerShiftLeft2;
            }
            bigIntegerShiftLeft2 = bigInteger2;
            strength = i11;
            random = secureRandom2;
        }
        if (zIsDebug) {
            System.out.getClass();
        }
        BigInteger bigIntegerMultiply6 = bigIntegerAdd.subtract(bigInteger).multiply(bigIntegerAdd2.subtract(bigInteger));
        if (zIsDebug) {
            System.out.getClass();
        }
        while (true) {
            Vector vector = new Vector();
            bigInteger3 = bigIntegerAdd2;
            int i14 = 0;
            while (i14 != vectorPermuteList.size()) {
                BigInteger bigIntegerDivide = bigIntegerMultiply6.divide((BigInteger) vectorPermuteList.elementAt(i14));
                BigInteger bigInteger5 = bigIntegerAdd;
                while (true) {
                    bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(strength, certainty, random);
                    i10 = strength;
                    secureRandom = random;
                    if (bigIntegerCreateRandomPrime.modPow(bigIntegerDivide, bigIntegerMultiply).equals(ONE)) {
                        strength = i10;
                        random = secureRandom;
                    }
                }
                vector.addElement(bigIntegerCreateRandomPrime);
                i14++;
                bigIntegerAdd = bigInteger5;
                strength = i10;
                random = secureRandom;
            }
            int i15 = strength;
            SecureRandom secureRandom3 = random;
            bigInteger4 = bigIntegerAdd;
            bigIntegerMod = ONE;
            for (int i16 = 0; i16 < vectorPermuteList.size(); i16++) {
                bigIntegerMod = bigIntegerMod.multiply(((BigInteger) vector.elementAt(i16)).modPow(bigIntegerMultiply4.divide((BigInteger) vectorPermuteList.elementAt(i16)), bigIntegerMultiply)).mod(bigIntegerMultiply);
            }
            int i17 = 0;
            while (true) {
                if (i17 >= vectorPermuteList.size()) {
                    BigInteger bigIntegerModPow = bigIntegerMod.modPow(bigIntegerMultiply6.divide(BigInteger.valueOf(4L)), bigIntegerMultiply);
                    BigInteger bigInteger6 = ONE;
                    if (!bigIntegerModPow.equals(bigInteger6)) {
                        if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerGeneratePrime), bigIntegerMultiply).equals(bigInteger6)) {
                            if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerGeneratePrime2), bigIntegerMultiply).equals(bigInteger6)) {
                                if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerGeneratePrime3), bigIntegerMultiply).equals(bigInteger6)) {
                                    if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerGeneratePrime4), bigIntegerMultiply).equals(bigInteger6)) {
                                        break;
                                    }
                                    if (zIsDebug) {
                                    }
                                } else if (zIsDebug) {
                                }
                            } else if (zIsDebug) {
                            }
                        } else if (zIsDebug) {
                        }
                    } else if (zIsDebug) {
                        PrintStream printStream3 = System.out;
                        bigIntegerMod.toString();
                        printStream3.getClass();
                    }
                } else if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide((BigInteger) vectorPermuteList.elementAt(i17)), bigIntegerMultiply).equals(ONE)) {
                    i17++;
                } else if (zIsDebug) {
                    PrintStream printStream4 = System.out;
                    a.A(vectorPermuteList.elementAt(i17));
                    bigIntegerMod.toString();
                    printStream4.getClass();
                }
            }
            bigIntegerAdd2 = bigInteger3;
            bigIntegerAdd = bigInteger4;
            strength = i15;
            random = secureRandom3;
        }
        if (zIsDebug) {
            PrintStream printStream5 = System.out;
            printStream5.getClass();
            printStream5.getClass();
            printStream5.getClass();
            vectorPermuteList.toString();
            printStream5.getClass();
            bigIntegerMultiply4.toString();
            bigIntegerMultiply4.bitLength();
            printStream5.getClass();
            bigIntegerGeneratePrime3.toString();
            printStream5.getClass();
            bigIntegerGeneratePrime4.toString();
            printStream5.getClass();
            bigIntegerGeneratePrime.toString();
            printStream5.getClass();
            bigIntegerGeneratePrime2.toString();
            printStream5.getClass();
            bigInteger4.toString();
            printStream5.getClass();
            bigInteger3.toString();
            printStream5.getClass();
            bigIntegerMultiply.toString();
            printStream5.getClass();
            bigIntegerMultiply6.toString();
            printStream5.getClass();
            bigIntegerMod.toString();
            printStream5.getClass();
            printStream5.getClass();
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new NaccacheSternKeyParameters(false, bigIntegerMod, bigIntegerMultiply, bigIntegerMultiply4.bitLength()), (AsymmetricKeyParameter) new NaccacheSternPrivateKeyParameters(bigIntegerMod, bigIntegerMultiply, bigIntegerMultiply4.bitLength(), vectorPermuteList, bigIntegerMultiply6));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (NaccacheSternKeyGenerationParameters) keyGenerationParameters;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("NaccacheStern KeyGen", ConstraintUtils.bitsOfSecurityForFF(keyGenerationParameters.getStrength()), keyGenerationParameters, CryptoServicePurpose.KEYGEN));
    }
}
