package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
abstract class BufferBaseDigest implements ExtendedDigest {
    protected int BlockSize;
    protected int DigestSize;
    protected String algorithmName;
    protected byte[] m_buf;
    protected int m_bufPos;
    protected ProcessingBuffer processor;

    public class BufferedProcessor implements ProcessingBuffer {
        private BufferedProcessor() {
        }

        @Override // org.bouncycastle.crypto.digests.BufferBaseDigest.ProcessingBuffer
        public boolean isLengthExceedingBlockSize(int i10, int i11) {
            return i10 > i11;
        }

        @Override // org.bouncycastle.crypto.digests.BufferBaseDigest.ProcessingBuffer
        public boolean isLengthWithinAvailableSpace(int i10, int i11) {
            return i10 <= i11;
        }

        @Override // org.bouncycastle.crypto.digests.BufferBaseDigest.ProcessingBuffer
        public void update(byte b10) {
            BufferBaseDigest bufferBaseDigest = BufferBaseDigest.this;
            if (bufferBaseDigest.m_bufPos == bufferBaseDigest.BlockSize) {
                bufferBaseDigest.processBytes(bufferBaseDigest.m_buf, 0);
                BufferBaseDigest.this.m_bufPos = 0;
            }
            BufferBaseDigest bufferBaseDigest2 = BufferBaseDigest.this;
            byte[] bArr = bufferBaseDigest2.m_buf;
            int i10 = bufferBaseDigest2.m_bufPos;
            bufferBaseDigest2.m_bufPos = i10 + 1;
            bArr[i10] = b10;
        }
    }

    public class ImmediateProcessor implements ProcessingBuffer {
        private ImmediateProcessor() {
        }

        @Override // org.bouncycastle.crypto.digests.BufferBaseDigest.ProcessingBuffer
        public boolean isLengthExceedingBlockSize(int i10, int i11) {
            return i10 >= i11;
        }

        @Override // org.bouncycastle.crypto.digests.BufferBaseDigest.ProcessingBuffer
        public boolean isLengthWithinAvailableSpace(int i10, int i11) {
            return i10 < i11;
        }

        @Override // org.bouncycastle.crypto.digests.BufferBaseDigest.ProcessingBuffer
        public void update(byte b10) {
            BufferBaseDigest bufferBaseDigest = BufferBaseDigest.this;
            byte[] bArr = bufferBaseDigest.m_buf;
            int i10 = bufferBaseDigest.m_bufPos;
            bArr[i10] = b10;
            int i11 = i10 + 1;
            bufferBaseDigest.m_bufPos = i11;
            if (i11 == bufferBaseDigest.BlockSize) {
                bufferBaseDigest.processBytes(bArr, 0);
                BufferBaseDigest.this.m_bufPos = 0;
            }
        }
    }

    public interface ProcessingBuffer {
        boolean isLengthExceedingBlockSize(int i10, int i11);

        boolean isLengthWithinAvailableSpace(int i10, int i11);

        void update(byte b10);
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

    public BufferBaseDigest(ProcessingBufferType processingBufferType, int i10) {
        ProcessingBuffer bufferedProcessor;
        this.BlockSize = i10;
        this.m_buf = new byte[i10];
        int i11 = processingBufferType.ord;
        if (i11 == 0) {
            bufferedProcessor = new BufferedProcessor();
        } else if (i11 != 1) {
            return;
        } else {
            bufferedProcessor = new ImmediateProcessor();
        }
        this.processor = bufferedProcessor;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i10) {
        ensureSufficientOutputBuffer(bArr, i10);
        finish(bArr, i10);
        reset();
        return this.DigestSize;
    }

    public void ensureSufficientInputBuffer(byte[] bArr, int i10, int i11) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
    }

    public void ensureSufficientOutputBuffer(byte[] bArr, int i10) {
        if (this.DigestSize + i10 > bArr.length) {
            throw new OutputLengthException("output buffer is too short");
        }
    }

    public abstract void finish(byte[] bArr, int i10);

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.BlockSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.DigestSize;
    }

    public abstract void processBytes(byte[] bArr, int i10);

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.clear(this.m_buf);
        this.m_bufPos = 0;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        this.processor.update(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i10, int i11) {
        ensureSufficientInputBuffer(bArr, i10, i11);
        int i12 = this.BlockSize - this.m_bufPos;
        if (this.processor.isLengthWithinAvailableSpace(i11, i12)) {
            System.arraycopy(bArr, i10, this.m_buf, this.m_bufPos, i11);
            this.m_bufPos += i11;
            return;
        }
        int i13 = this.m_bufPos;
        if (i13 > 0) {
            System.arraycopy(bArr, i10, this.m_buf, i13, i12);
            i10 += i12;
            i11 -= i12;
            processBytes(this.m_buf, 0);
        }
        while (this.processor.isLengthExceedingBlockSize(i11, this.BlockSize)) {
            processBytes(bArr, i10);
            int i14 = this.BlockSize;
            i10 += i14;
            i11 -= i14;
        }
        System.arraycopy(bArr, i10, this.m_buf, 0, i11);
        this.m_bufPos = i11;
    }
}
