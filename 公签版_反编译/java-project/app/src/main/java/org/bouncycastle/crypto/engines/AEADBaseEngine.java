package org.bouncycastle.crypto.engines;

import android.support.v4.media.session.a;
import g.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
abstract class AEADBaseEngine implements AEADCipher {
    protected int AADBufferSize;
    protected int BlockSize;
    protected int IV_SIZE;
    protected int KEY_SIZE;
    protected int MAC_SIZE;
    protected AADOperator aadOperator;
    protected String algorithmName;
    protected DataOperator dataOperator;
    protected boolean forEncryption;
    protected byte[] initialAssociatedText;
    protected byte[] m_aad;
    protected int m_aadPos;
    protected byte[] m_buf;
    protected int m_bufPos;
    protected int m_bufferSizeDecrypt;
    protected State m_state = State.Uninitialized;
    protected byte[] mac;
    protected AADProcessingBuffer processor;

    public interface AADOperator {
        int getLen();

        void processAADByte(byte b10);

        void processAADBytes(byte[] bArr, int i10, int i11);

        void reset();
    }

    public static class AADOperatorType {
        public static final int COUNTER = 1;
        public static final int DEFAULT = 0;
        public static final int STREAM = 2;
        private final int ord;
        public static final AADOperatorType Default = new AADOperatorType(0);
        public static final AADOperatorType Counter = new AADOperatorType(1);
        public static final AADOperatorType Stream = new AADOperatorType(2);

        public AADOperatorType(int i10) {
            this.ord = i10;
        }
    }

    public interface AADProcessingBuffer {
        int getUpdateOutputSize(int i10);

        boolean isLengthExceedingBlockSize(int i10, int i11);

        boolean isLengthWithinAvailableSpace(int i10, int i11);

        void processAADByte(byte b10);

        int processByte(byte b10, byte[] bArr, int i10);
    }

    public class BufferedAADProcessor implements AADProcessingBuffer {
        private BufferedAADProcessor() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int getUpdateOutputSize(int i10) {
            return Math.max(0, i10) - 1;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthExceedingBlockSize(int i10, int i11) {
            return i10 > i11;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthWithinAvailableSpace(int i10, int i11) {
            return i10 <= i11;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public void processAADByte(byte b10) {
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            if (aEADBaseEngine.m_aadPos == aEADBaseEngine.AADBufferSize) {
                aEADBaseEngine.processBufferAAD(aEADBaseEngine.m_aad, 0);
                AEADBaseEngine.this.m_aadPos = 0;
            }
            AEADBaseEngine aEADBaseEngine2 = AEADBaseEngine.this;
            byte[] bArr = aEADBaseEngine2.m_aad;
            int i10 = aEADBaseEngine2.m_aadPos;
            aEADBaseEngine2.m_aadPos = i10 + 1;
            bArr[i10] = b10;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int processByte(byte b10, byte[] bArr, int i10) {
            AEADBaseEngine.this.checkData(false);
            int iProcessEncDecByte = AEADBaseEngine.this.processEncDecByte(bArr, i10);
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            byte[] bArr2 = aEADBaseEngine.m_buf;
            int i11 = aEADBaseEngine.m_bufPos;
            aEADBaseEngine.m_bufPos = i11 + 1;
            bArr2[i11] = b10;
            return iProcessEncDecByte;
        }
    }

    public class CounterAADOperator implements AADOperator {
        private int aadLen;

        private CounterAADOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public int getLen() {
            return this.aadLen;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADByte(byte b10) {
            this.aadLen++;
            AEADBaseEngine.this.processor.processAADByte(b10);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADBytes(byte[] bArr, int i10, int i11) {
            this.aadLen += i11;
            AEADBaseEngine.this.processAadBytes(bArr, i10, i11);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void reset() {
            this.aadLen = 0;
        }
    }

    public class CounterDataOperator implements DataOperator {
        private int messegeLen;

        private CounterDataOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return this.messegeLen;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b10, byte[] bArr, int i10) {
            this.messegeLen++;
            return AEADBaseEngine.this.processor.processByte(b10, bArr, i10);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
            this.messegeLen += i11;
            return AEADBaseEngine.this.processEncDecBytes(bArr, i10, i11, bArr2, i12);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
            this.messegeLen = 0;
        }
    }

    public interface DataOperator {
        int getLen();

        int processByte(byte b10, byte[] bArr, int i10);

        int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12);

        void reset();
    }

    public static class DataOperatorType {
        public static final int COUNTER = 1;
        public static final int DEFAULT = 0;
        public static final int STREAM = 2;
        public static final int STREAM_CIPHER = 3;
        private final int ord;
        public static final DataOperatorType Default = new DataOperatorType(0);
        public static final DataOperatorType Counter = new DataOperatorType(1);
        public static final DataOperatorType Stream = new DataOperatorType(2);
        public static final DataOperatorType StreamCipher = new DataOperatorType(3);

        public DataOperatorType(int i10) {
            this.ord = i10;
        }
    }

    public class DefaultAADOperator implements AADOperator {
        private DefaultAADOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public int getLen() {
            return AEADBaseEngine.this.m_aadPos;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADByte(byte b10) {
            AEADBaseEngine.this.processor.processAADByte(b10);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADBytes(byte[] bArr, int i10, int i11) {
            AEADBaseEngine.this.processAadBytes(bArr, i10, i11);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void reset() {
        }
    }

    public class DefaultDataOperator implements DataOperator {
        private DefaultDataOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return AEADBaseEngine.this.m_bufPos;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b10, byte[] bArr, int i10) {
            return AEADBaseEngine.this.processor.processByte(b10, bArr, i10);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
            return AEADBaseEngine.this.processEncDecBytes(bArr, i10, i11, bArr2, i12);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
        }
    }

    public static final class ErasableOutputStream extends ByteArrayOutputStream {
        public byte[] getBuf() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public class ImmediateAADProcessor implements AADProcessingBuffer {
        private ImmediateAADProcessor() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int getUpdateOutputSize(int i10) {
            return Math.max(0, i10);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthExceedingBlockSize(int i10, int i11) {
            return i10 >= i11;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthWithinAvailableSpace(int i10, int i11) {
            return i10 < i11;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public void processAADByte(byte b10) {
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            byte[] bArr = aEADBaseEngine.m_aad;
            int i10 = aEADBaseEngine.m_aadPos;
            int i11 = i10 + 1;
            aEADBaseEngine.m_aadPos = i11;
            bArr[i10] = b10;
            if (i11 == aEADBaseEngine.AADBufferSize) {
                aEADBaseEngine.processBufferAAD(bArr, 0);
                AEADBaseEngine.this.m_aadPos = 0;
            }
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int processByte(byte b10, byte[] bArr, int i10) {
            AEADBaseEngine.this.checkData(false);
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            byte[] bArr2 = aEADBaseEngine.m_buf;
            int i11 = aEADBaseEngine.m_bufPos;
            aEADBaseEngine.m_bufPos = i11 + 1;
            bArr2[i11] = b10;
            return aEADBaseEngine.processEncDecByte(bArr, i10);
        }
    }

    public static class ProcessingBufferType {
        public static final int BUFFERED = 0;
        public static final int IMMEDIATE = 1;
        private final int ord;
        public static final ProcessingBufferType Buffered = new ProcessingBufferType(0);
        public static final ProcessingBufferType Immediate = new ProcessingBufferType(1);

        public ProcessingBufferType(int i10) {
            this.ord = i10;
        }
    }

    public static class State {
        public static final int DEC_AAD = 6;
        public static final int DEC_DATA = 7;
        public static final int DEC_FINAL = 8;
        public static final int DEC_INIT = 5;
        public static final int ENC_AAD = 2;
        public static final int ENC_DATA = 3;
        public static final int ENC_FINAL = 4;
        public static final int ENC_INIT = 1;
        public static final int UNINITIALIZED = 0;
        final int ord;
        public static final State Uninitialized = new State(0);
        public static final State EncInit = new State(1);
        public static final State EncAad = new State(2);
        public static final State EncData = new State(3);
        public static final State EncFinal = new State(4);
        public static final State DecInit = new State(5);
        public static final State DecAad = new State(6);
        public static final State DecData = new State(7);
        public static final State DecFinal = new State(8);

        public State(int i10) {
            this.ord = i10;
        }
    }

    public static class StreamAADOperator implements AADOperator {
        private final ErasableOutputStream stream = new ErasableOutputStream();

        public byte[] getBytes() {
            return this.stream.getBuf();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public int getLen() {
            return this.stream.size();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADByte(byte b10) throws IOException {
            this.stream.write(b10);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADBytes(byte[] bArr, int i10, int i11) throws IOException {
            this.stream.write(bArr, i10, i11);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void reset() {
            this.stream.reset();
        }
    }

    public class StreamCipherOperator implements DataOperator {
        private int len;

        private StreamCipherOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return this.len;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b10, byte[] bArr, int i10) {
            if (AEADBaseEngine.this.checkData(false)) {
                this.len = 1;
                AEADBaseEngine.this.processBufferEncrypt(new byte[]{b10}, 0, bArr, i10);
                return 1;
            }
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            int i11 = aEADBaseEngine.m_bufPos;
            if (i11 != aEADBaseEngine.MAC_SIZE) {
                byte[] bArr2 = aEADBaseEngine.m_buf;
                aEADBaseEngine.m_bufPos = 1 + i11;
                bArr2[i11] = b10;
                return 0;
            }
            this.len = 1;
            aEADBaseEngine.processBufferDecrypt(aEADBaseEngine.m_buf, 0, bArr, i10);
            AEADBaseEngine aEADBaseEngine2 = AEADBaseEngine.this;
            byte[] bArr3 = aEADBaseEngine2.m_buf;
            System.arraycopy(bArr3, 1, bArr3, 0, aEADBaseEngine2.m_bufPos - 1);
            AEADBaseEngine aEADBaseEngine3 = AEADBaseEngine.this;
            aEADBaseEngine3.m_buf[aEADBaseEngine3.m_bufPos - 1] = b10;
            return 1;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
            int i13 = 0;
            if (bArr == bArr2 && Arrays.segmentsOverlap(i10, i11, i12, AEADBaseEngine.this.processor.getUpdateOutputSize(i11))) {
                bArr = new byte[i11];
                System.arraycopy(bArr2, i10, bArr, 0, i11);
                i10 = 0;
            }
            if (AEADBaseEngine.this.checkData(false)) {
                this.len = i11;
                AEADBaseEngine.this.processBufferEncrypt(bArr, i10, bArr2, i12);
                return i11;
            }
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            int iMax = Math.max((aEADBaseEngine.m_bufPos + i11) - aEADBaseEngine.MAC_SIZE, 0);
            int i14 = AEADBaseEngine.this.m_bufPos;
            if (i14 > 0) {
                int iMin = Math.min(iMax, i14);
                this.len = iMin;
                AEADBaseEngine aEADBaseEngine2 = AEADBaseEngine.this;
                aEADBaseEngine2.processBufferDecrypt(aEADBaseEngine2.m_buf, 0, bArr2, i12);
                iMax -= iMin;
                AEADBaseEngine aEADBaseEngine3 = AEADBaseEngine.this;
                int i15 = aEADBaseEngine3.m_bufPos - iMin;
                aEADBaseEngine3.m_bufPos = i15;
                byte[] bArr3 = aEADBaseEngine3.m_buf;
                System.arraycopy(bArr3, iMin, bArr3, 0, i15);
                i13 = iMin;
            }
            if (iMax > 0) {
                this.len = iMax;
                AEADBaseEngine.this.processBufferDecrypt(bArr, i10, bArr2, i12);
                i13 += iMax;
                i11 -= iMax;
                i10 += iMax;
            }
            AEADBaseEngine aEADBaseEngine4 = AEADBaseEngine.this;
            System.arraycopy(bArr, i10, aEADBaseEngine4.m_buf, aEADBaseEngine4.m_bufPos, i11);
            AEADBaseEngine.this.m_bufPos += i11;
            return i13;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
        }
    }

    public class StreamDataOperator implements DataOperator {
        private final ErasableOutputStream stream = new ErasableOutputStream();

        public StreamDataOperator() {
        }

        public byte[] getBytes() {
            return this.stream.getBuf();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return this.stream.size();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b10, byte[] bArr, int i10) throws IOException {
            AEADBaseEngine.this.ensureInitialized();
            this.stream.write(b10);
            AEADBaseEngine.this.m_bufPos = this.stream.size();
            return 0;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IOException {
            AEADBaseEngine.this.ensureInitialized();
            this.stream.write(bArr, i10, i11);
            AEADBaseEngine.this.m_bufPos = this.stream.size();
            return 0;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
            this.stream.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processAadBytes(byte[] bArr, int i10, int i11) {
        int i12 = this.m_aadPos;
        if (i12 > 0) {
            int i13 = this.AADBufferSize - i12;
            if (this.processor.isLengthWithinAvailableSpace(i11, i13)) {
                System.arraycopy(bArr, i10, this.m_aad, this.m_aadPos, i11);
                this.m_aadPos += i11;
                return;
            } else {
                System.arraycopy(bArr, i10, this.m_aad, this.m_aadPos, i13);
                i10 += i13;
                i11 -= i13;
                processBufferAAD(this.m_aad, 0);
            }
        }
        while (this.processor.isLengthExceedingBlockSize(i11, this.AADBufferSize)) {
            processBufferAAD(bArr, i10);
            int i14 = this.AADBufferSize;
            i10 += i14;
            i11 -= i14;
        }
        System.arraycopy(bArr, i10, this.m_aad, 0, i11);
        this.m_aadPos = i11;
    }

    public void checkAAD() {
        State state;
        int i10 = this.m_state.ord;
        if (i10 == 1) {
            state = State.EncAad;
        } else {
            if (i10 == 2) {
                return;
            }
            if (i10 == 4) {
                throw new IllegalStateException(b.l(getAlgorithmName(), " cannot be reused for encryption", new StringBuilder()));
            }
            if (i10 != 5) {
                if (i10 == 6) {
                    return;
                }
                throw new IllegalStateException(b.l(getAlgorithmName(), " needs to be initialized", new StringBuilder()));
            }
            state = State.DecAad;
        }
        this.m_state = state;
    }

    public boolean checkData(boolean z) {
        switch (this.m_state.ord) {
            case 1:
            case 2:
                finishAAD(State.EncData, z);
                return true;
            case 3:
                return true;
            case 4:
                throw new IllegalStateException(b.l(getAlgorithmName(), " cannot be reused for encryption", new StringBuilder()));
            case 5:
            case 6:
                finishAAD(State.DecData, z);
                return false;
            case 7:
                return false;
            default:
                throw new IllegalStateException(b.l(getAlgorithmName(), " needs to be initialized", new StringBuilder()));
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i10) throws InvalidCipherTextException {
        int i11;
        boolean zCheckData = checkData(true);
        int i12 = this.m_bufPos;
        int i13 = this.MAC_SIZE;
        if (zCheckData) {
            i11 = i12 + i13;
        } else {
            if (i12 < i13) {
                throw new InvalidCipherTextException("data too short");
            }
            i11 = i12 - i13;
            this.m_bufPos = i11;
        }
        ensureSufficientOutputBuffer(bArr, i10, i11);
        this.mac = new byte[this.MAC_SIZE];
        processFinalBlock(bArr, i10);
        if (zCheckData) {
            byte[] bArr2 = this.mac;
            int i14 = this.MAC_SIZE;
            System.arraycopy(bArr2, 0, bArr, (i10 + i11) - i14, i14);
        } else if (!Arrays.constantTimeAreEqual(this.MAC_SIZE, this.mac, 0, this.m_buf, this.m_bufPos)) {
            throw new InvalidCipherTextException(b.l(this.algorithmName, " mac does not match", new StringBuilder()));
        }
        reset(!zCheckData);
        return i11;
    }

    public final void ensureInitialized() {
        if (this.m_state == State.Uninitialized) {
            throw new IllegalStateException("Need to call init function before operation");
        }
    }

    public final void ensureSufficientInputBuffer(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
    }

    public final void ensureSufficientOutputBuffer(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new OutputLengthException("output buffer too short");
        }
    }

    public abstract void finishAAD(State state, boolean z);

    public void finishAAD1(State state) {
        int i10 = this.m_state.ord;
        if (i10 == 1 || i10 == 2 || i10 == 5 || i10 == 6) {
            processFinalAAD();
        }
        this.m_state = state;
    }

    public void finishAAD2(State state) {
        int i10 = this.m_state.ord;
        if (i10 == 2 || i10 == 6) {
            processFinalAAD();
        }
        this.m_aadPos = 0;
        this.m_state = state;
    }

    public void finishAAD3(State state, boolean z) {
        int i10 = this.m_state.ord;
        if (i10 == 1 || i10 == 2) {
            processFinalAAD();
        } else if (i10 == 5 || i10 == 6) {
            if (!z && this.dataOperator.getLen() <= this.MAC_SIZE) {
                return;
            }
            processFinalAAD();
        }
        this.m_aadPos = 0;
        this.m_state = state;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public final int getBlockSize() {
        return this.BlockSize;
    }

    public int getIVBytesSize() {
        return this.IV_SIZE;
    }

    public int getKeyBytesSize() {
        return this.KEY_SIZE;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i10) {
        int iMax = Math.max(0, i10);
        switch (this.m_state.ord) {
            case 3:
            case 4:
                return iMax + this.m_bufPos + this.MAC_SIZE;
            case 5:
            case 6:
            case 7:
            case 8:
                return Math.max(0, (iMax + this.m_bufPos) - this.MAC_SIZE);
            default:
                return iMax + this.MAC_SIZE;
        }
    }

    public int getTotalBytesForUpdate(int i10) {
        int i11;
        int updateOutputSize = this.processor.getUpdateOutputSize(i10);
        switch (this.m_state.ord) {
            case 3:
            case 4:
                i11 = updateOutputSize + this.m_bufPos;
                break;
            case 5:
            case 6:
            case 7:
            case 8:
                i11 = (updateOutputSize + this.m_bufPos) - this.MAC_SIZE;
                break;
            default:
                return updateOutputSize;
        }
        return Math.max(0, i11);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i10) {
        int totalBytesForUpdate = getTotalBytesForUpdate(i10);
        return totalBytesForUpdate - (totalBytesForUpdate % this.BlockSize);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        KeyParameter key;
        byte[] iv;
        this.forEncryption = z;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            key = aEADParameters.getKey();
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize != this.MAC_SIZE * 8) {
                throw new IllegalArgumentException(da.b.a(macSize, "Invalid value for MAC size: "));
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to " + this.algorithmName);
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            key = (KeyParameter) parametersWithIV.getParameters();
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
        }
        if (key == null) {
            throw new IllegalArgumentException(b.l(this.algorithmName, " Init parameters must include a key", new StringBuilder()));
        }
        if (iv == null || iv.length != this.IV_SIZE) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.algorithmName);
            sb2.append(" requires exactly ");
            throw new IllegalArgumentException(a.s(sb2, this.IV_SIZE, " bytes of IV"));
        }
        byte[] key2 = key.getKey();
        if (key2.length != this.KEY_SIZE) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.algorithmName);
            sb3.append(" key must be ");
            throw new IllegalArgumentException(a.s(sb3, this.KEY_SIZE, " bytes long"));
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.m_state = z ? State.EncInit : State.DecInit;
        init(key2, iv);
        reset(true);
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    public abstract void init(byte[] bArr, byte[] bArr2);

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        checkAAD();
        this.aadOperator.processAADByte(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i10, int i11) {
        ensureSufficientInputBuffer(bArr, i10, i11);
        if (i11 <= 0) {
            return;
        }
        checkAAD();
        this.aadOperator.processAADBytes(bArr, i10, i11);
    }

    public abstract void processBufferAAD(byte[] bArr, int i10);

    public abstract void processBufferDecrypt(byte[] bArr, int i10, byte[] bArr2, int i11);

    public abstract void processBufferEncrypt(byte[] bArr, int i10, byte[] bArr2, int i11);

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int i10) {
        return this.dataOperator.processByte(b10, bArr, i10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        ensureSufficientInputBuffer(bArr, i10, i11);
        return this.dataOperator.processBytes(bArr, i10, i11, bArr2, i12);
    }

    public int processEncDecByte(byte[] bArr, int i10) {
        if ((this.forEncryption ? this.BlockSize : this.m_bufferSizeDecrypt) - this.m_bufPos != 0) {
            return 0;
        }
        ensureSufficientOutputBuffer(bArr, i10, this.BlockSize);
        if (this.forEncryption) {
            processBufferEncrypt(this.m_buf, 0, bArr, i10);
        } else {
            processBufferDecrypt(this.m_buf, 0, bArr, i10);
            byte[] bArr2 = this.m_buf;
            int i11 = this.BlockSize;
            System.arraycopy(bArr2, i11, bArr2, 0, this.m_bufPos - i11);
        }
        int i12 = this.m_bufPos;
        int i13 = this.BlockSize;
        this.m_bufPos = i12 - i13;
        return i13;
    }

    public int processEncDecBytes(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        int i13;
        boolean zCheckData = checkData(false);
        int i14 = (zCheckData ? this.BlockSize : this.m_bufferSizeDecrypt) - this.m_bufPos;
        if (this.processor.isLengthWithinAvailableSpace(i11, i14)) {
            System.arraycopy(bArr, i10, this.m_buf, this.m_bufPos, i11);
            this.m_bufPos += i11;
            return 0;
        }
        int updateOutputSize = this.processor.getUpdateOutputSize(i11);
        int i15 = (this.m_bufPos + updateOutputSize) - (zCheckData ? 0 : this.MAC_SIZE);
        ensureSufficientOutputBuffer(bArr2, i12, i15 - (i15 % this.BlockSize));
        if (bArr == bArr2 && Arrays.segmentsOverlap(i10, i11, i12, updateOutputSize)) {
            bArr = new byte[i11];
            System.arraycopy(bArr2, i10, bArr, 0, i11);
            i10 = 0;
        }
        if (zCheckData) {
            int i16 = this.m_bufPos;
            if (i16 > 0) {
                System.arraycopy(bArr, i10, this.m_buf, i16, i14);
                i10 += i14;
                i11 -= i14;
                processBufferEncrypt(this.m_buf, 0, bArr2, i12);
                i13 = this.BlockSize;
            } else {
                i13 = 0;
            }
            while (this.processor.isLengthExceedingBlockSize(i11, this.BlockSize)) {
                processBufferEncrypt(bArr, i10, bArr2, i12 + i13);
                int i17 = this.BlockSize;
                i10 += i17;
                i11 -= i17;
                i13 += i17;
            }
        } else {
            i13 = 0;
            while (this.processor.isLengthExceedingBlockSize(this.m_bufPos, this.BlockSize) && this.processor.isLengthExceedingBlockSize(this.m_bufPos + i11, this.m_bufferSizeDecrypt)) {
                processBufferDecrypt(this.m_buf, i13, bArr2, i12 + i13);
                int i18 = this.m_bufPos;
                int i19 = this.BlockSize;
                this.m_bufPos = i18 - i19;
                i13 += i19;
            }
            int i20 = this.m_bufPos;
            if (i20 > 0) {
                byte[] bArr3 = this.m_buf;
                System.arraycopy(bArr3, i13, bArr3, 0, i20);
                if (this.processor.isLengthWithinAvailableSpace(this.m_bufPos + i11, this.m_bufferSizeDecrypt)) {
                    System.arraycopy(bArr, i10, this.m_buf, this.m_bufPos, i11);
                    this.m_bufPos += i11;
                    return i13;
                }
                int iMax = Math.max(this.BlockSize - this.m_bufPos, 0);
                System.arraycopy(bArr, i10, this.m_buf, this.m_bufPos, iMax);
                i10 += iMax;
                i11 -= iMax;
                processBufferDecrypt(this.m_buf, 0, bArr2, i12 + i13);
                i13 += this.BlockSize;
            }
            while (this.processor.isLengthExceedingBlockSize(i11, this.m_bufferSizeDecrypt)) {
                processBufferDecrypt(bArr, i10, bArr2, i12 + i13);
                int i21 = this.BlockSize;
                i10 += i21;
                i11 -= i21;
                i13 += i21;
            }
        }
        System.arraycopy(bArr, i10, this.m_buf, 0, i11);
        this.m_bufPos = i11;
        return i13;
    }

    public abstract void processFinalAAD();

    public abstract void processFinalBlock(byte[] bArr, int i10);

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setInnerMembers(ProcessingBufferType processingBufferType, AADOperatorType aADOperatorType, DataOperatorType dataOperatorType) {
        AADProcessingBuffer bufferedAADProcessor;
        int i10;
        AADOperator defaultAADOperator;
        int i11;
        DataOperator defaultDataOperator;
        int i12 = processingBufferType.ord;
        if (i12 != 0) {
            if (i12 == 1) {
                bufferedAADProcessor = new ImmediateAADProcessor();
            }
            this.m_bufferSizeDecrypt = this.BlockSize + this.MAC_SIZE;
            i10 = aADOperatorType.ord;
            if (i10 != 0) {
                this.m_aad = new byte[this.AADBufferSize];
                defaultAADOperator = new DefaultAADOperator();
            } else {
                if (i10 != 1) {
                    if (i10 == 2) {
                        this.AADBufferSize = 0;
                        defaultAADOperator = new StreamAADOperator();
                    }
                    i11 = dataOperatorType.ord;
                    if (i11 == 0) {
                        this.m_buf = new byte[this.m_bufferSizeDecrypt];
                        defaultDataOperator = new DefaultDataOperator();
                    } else if (i11 == 1) {
                        this.m_buf = new byte[this.m_bufferSizeDecrypt];
                        defaultDataOperator = new CounterDataOperator();
                    } else if (i11 == 2) {
                        this.m_buf = new byte[this.MAC_SIZE];
                        defaultDataOperator = new StreamDataOperator();
                    } else {
                        if (i11 != 3) {
                            return;
                        }
                        this.BlockSize = 0;
                        this.m_buf = new byte[this.m_bufferSizeDecrypt];
                        defaultDataOperator = new StreamCipherOperator();
                    }
                    this.dataOperator = defaultDataOperator;
                }
                this.m_aad = new byte[this.AADBufferSize];
                defaultAADOperator = new CounterAADOperator();
            }
            this.aadOperator = defaultAADOperator;
            i11 = dataOperatorType.ord;
            if (i11 == 0) {
            }
            this.dataOperator = defaultDataOperator;
        }
        bufferedAADProcessor = new BufferedAADProcessor();
        this.processor = bufferedAADProcessor;
        this.m_bufferSizeDecrypt = this.BlockSize + this.MAC_SIZE;
        i10 = aADOperatorType.ord;
        if (i10 != 0) {
        }
        this.aadOperator = defaultAADOperator;
        i11 = dataOperatorType.ord;
        if (i11 == 0) {
        }
        this.dataOperator = defaultDataOperator;
    }

    public void reset(boolean z) {
        ensureInitialized();
        if (z) {
            this.mac = null;
        }
        byte[] bArr = this.m_buf;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
            this.m_bufPos = 0;
        }
        byte[] bArr2 = this.m_aad;
        if (bArr2 != null) {
            Arrays.fill(bArr2, (byte) 0);
            this.m_aadPos = 0;
        }
        switch (this.m_state.ord) {
            case 1:
            case 5:
                break;
            case 2:
            case 3:
            case 4:
                this.m_state = State.EncFinal;
                return;
            case 6:
            case 7:
            case 8:
                this.m_state = State.DecFinal;
                break;
            default:
                throw new IllegalStateException(b.l(getAlgorithmName(), " needs to be initialized", new StringBuilder()));
        }
        this.aadOperator.reset();
        this.dataOperator.reset();
    }
}
