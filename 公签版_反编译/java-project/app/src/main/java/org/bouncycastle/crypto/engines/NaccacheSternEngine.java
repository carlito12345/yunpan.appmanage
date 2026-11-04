package org.bouncycastle.crypto.engines;

import java.io.PrintStream;
import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class NaccacheSternEngine implements AsymmetricBlockCipher {
    private boolean forEncryption;
    private NaccacheSternKeyParameters key;
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static BigInteger ONE = BigInteger.valueOf(1);
    private Vector[] lookup = null;
    private boolean debug = false;

    private static BigInteger chineseRemainder(Vector vector, Vector vector2) {
        BigInteger bigIntegerAdd = ZERO;
        BigInteger bigIntegerMultiply = ONE;
        for (int i10 = 0; i10 < vector2.size(); i10++) {
            bigIntegerMultiply = bigIntegerMultiply.multiply((BigInteger) vector2.elementAt(i10));
        }
        for (int i11 = 0; i11 < vector2.size(); i11++) {
            BigInteger bigInteger = (BigInteger) vector2.elementAt(i11);
            BigInteger bigIntegerDivide = bigIntegerMultiply.divide(bigInteger);
            bigIntegerAdd = bigIntegerAdd.add(bigIntegerDivide.multiply(bigIntegerDivide.modInverse(bigInteger)).multiply((BigInteger) vector.elementAt(i11)));
        }
        return bigIntegerAdd.mod(bigIntegerMultiply);
    }

    public byte[] addCryptedBlocks(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        if (this.forEncryption) {
            if (bArr.length > getOutputBlockSize() || bArr2.length > getOutputBlockSize()) {
                throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
            }
        } else if (bArr.length > getInputBlockSize() || bArr2.length > getInputBlockSize()) {
            throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        BigInteger bigIntegerMod = bigInteger.multiply(bigInteger2).mod(this.key.getModulus());
        if (this.debug) {
            PrintStream printStream = System.out;
            bigInteger.toString();
            printStream.getClass();
            bigInteger2.toString();
            if (bigIntegerMod != null) {
                bigIntegerMod.toString();
            }
        }
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        System.arraycopy(bigIntegerMod.toByteArray(), 0, byteArray, byteArray.length - bigIntegerMod.toByteArray().length, bigIntegerMod.toByteArray().length);
        return byteArray;
    }

    public byte[] encrypt(BigInteger bigInteger) {
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        byte[] byteArray2 = this.key.getG().modPow(bigInteger, this.key.getModulus()).toByteArray();
        System.arraycopy(byteArray2, 0, byteArray, byteArray.length - byteArray2.length, byteArray2.length);
        if (this.debug) {
            PrintStream printStream = System.out;
            new BigInteger(byteArray).toString();
            printStream.getClass();
        }
        return byteArray;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.forEncryption ? ((this.key.getLowerSigmaBound() + 7) / 8) - 1 : this.key.getModulus().toByteArray().length;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.forEncryption ? this.key.getModulus().toByteArray().length : ((this.key.getLowerSigmaBound() + 7) / 8) - 1;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.key = (NaccacheSternKeyParameters) cipherParameters;
        if (!this.forEncryption) {
            if (this.debug) {
                System.out.getClass();
            }
            NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
            Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
            this.lookup = new Vector[smallPrimes.size()];
            for (int i10 = 0; i10 < smallPrimes.size(); i10++) {
                BigInteger bigInteger = (BigInteger) smallPrimes.elementAt(i10);
                int iIntValue = bigInteger.intValue();
                this.lookup[i10] = new Vector();
                this.lookup[i10].addElement(ONE);
                if (this.debug) {
                    System.out.getClass();
                }
                BigInteger bigIntegerAdd = ZERO;
                for (int i11 = 1; i11 < iIntValue; i11++) {
                    bigIntegerAdd = bigIntegerAdd.add(naccacheSternPrivateKeyParameters.getPhi_n());
                    this.lookup[i10].addElement(naccacheSternPrivateKeyParameters.getG().modPow(bigIntegerAdd.divide(bigInteger), naccacheSternPrivateKeyParameters.getModulus()));
                }
            }
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("NaccacheStern", ConstraintUtils.bitsOfSecurityFor(this.key.getModulus()), cipherParameters, Utils.getPurpose(z)));
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i10, int i11) throws InvalidCipherTextException {
        if (this.key == null) {
            throw new IllegalStateException("NaccacheStern engine not initialised");
        }
        if (i11 > getInputBlockSize() + 1) {
            throw new DataLengthException("input too large for Naccache-Stern cipher.\n");
        }
        if (!this.forEncryption && i11 < getInputBlockSize()) {
            throw new InvalidCipherTextException("BlockLength does not match modulus for Naccache-Stern cipher.\n");
        }
        if (i10 != 0 || i11 != bArr.length) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (this.debug) {
            PrintStream printStream = System.out;
            bigInteger.toString();
            printStream.getClass();
        }
        if (this.forEncryption) {
            return encrypt(bigInteger);
        }
        Vector vector = new Vector();
        NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
        Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
        for (int i12 = 0; i12 < smallPrimes.size(); i12++) {
            BigInteger bigIntegerModPow = bigInteger.modPow(naccacheSternPrivateKeyParameters.getPhi_n().divide((BigInteger) smallPrimes.elementAt(i12)), naccacheSternPrivateKeyParameters.getModulus());
            Vector vector2 = this.lookup[i12];
            if (vector2.size() != ((BigInteger) smallPrimes.elementAt(i12)).intValue()) {
                if (this.debug) {
                    PrintStream printStream2 = System.out;
                    Object objElementAt = smallPrimes.elementAt(i12);
                    if (objElementAt != null) {
                        objElementAt.toString();
                    }
                    vector2.size();
                    printStream2.getClass();
                }
                throw new InvalidCipherTextException("Error in lookup Array for " + ((BigInteger) smallPrimes.elementAt(i12)).intValue() + ": Size mismatch. Expected ArrayList with length " + ((BigInteger) smallPrimes.elementAt(i12)).intValue() + " but found ArrayList of length " + this.lookup[i12].size());
            }
            int iIndexOf = vector2.indexOf(bigIntegerModPow);
            if (iIndexOf == -1) {
                if (this.debug) {
                    PrintStream printStream3 = System.out;
                    Object objElementAt2 = smallPrimes.elementAt(i12);
                    if (objElementAt2 != null) {
                        objElementAt2.toString();
                    }
                    printStream3.getClass();
                    if (bigIntegerModPow != null) {
                        bigIntegerModPow.toString();
                    }
                    Object objElementAt3 = smallPrimes.elementAt(i12);
                    if (objElementAt3 != null) {
                        objElementAt3.toString();
                    }
                    this.lookup[i12].size();
                    for (int i13 = 0; i13 < this.lookup[i12].size(); i13++) {
                        PrintStream printStream4 = System.out;
                        this.lookup[i12].elementAt(i13);
                        printStream4.getClass();
                    }
                }
                throw new InvalidCipherTextException("Lookup failed");
            }
            vector.addElement(BigInteger.valueOf(iIndexOf));
        }
        return chineseRemainder(vector, smallPrimes).toByteArray();
    }

    public byte[] processData(byte[] bArr) throws InvalidCipherTextException {
        byte[] bArrProcessBlock;
        if (this.debug) {
            System.out.getClass();
        }
        if (bArr.length <= getInputBlockSize()) {
            if (this.debug) {
                System.out.getClass();
            }
            return processBlock(bArr, 0, bArr.length);
        }
        int inputBlockSize = getInputBlockSize();
        int outputBlockSize = getOutputBlockSize();
        if (this.debug) {
            PrintStream printStream = System.out;
            printStream.getClass();
            printStream.getClass();
            printStream.getClass();
        }
        byte[] bArr2 = new byte[((bArr.length / inputBlockSize) + 1) * outputBlockSize];
        int length = 0;
        int length2 = 0;
        while (length < bArr.length) {
            int i10 = length + inputBlockSize;
            if (i10 < bArr.length) {
                bArrProcessBlock = processBlock(bArr, length, inputBlockSize);
                length = i10;
            } else {
                bArrProcessBlock = processBlock(bArr, length, bArr.length - length);
                length = (bArr.length - length) + length;
            }
            if (this.debug) {
                System.out.getClass();
            }
            if (bArrProcessBlock == null) {
                if (this.debug) {
                    System.out.getClass();
                }
                throw new InvalidCipherTextException("cipher returned null");
            }
            System.arraycopy(bArrProcessBlock, 0, bArr2, length2, bArrProcessBlock.length);
            length2 += bArrProcessBlock.length;
        }
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length2);
        if (this.debug) {
            System.out.getClass();
        }
        return bArr3;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }
}
