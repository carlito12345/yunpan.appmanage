package com.android.apksig.internal.asn1.ber;

import g.b;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferBerDataValueReader implements BerDataValueReader {
    private final ByteBuffer mBuf;

    public ByteBufferBerDataValueReader(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new NullPointerException("buf == null");
        }
        this.mBuf = byteBuffer;
    }

    private int readHighTagNumber() throws BerDataValueFormatException {
        int i10 = 0;
        while (this.mBuf.hasRemaining()) {
            byte b10 = this.mBuf.get();
            if (i10 > 16777215) {
                throw new BerDataValueFormatException("Tag number too large");
            }
            i10 = (i10 << 7) | (b10 & Byte.MAX_VALUE);
            if ((b10 & 128) == 0) {
                return i10;
            }
        }
        throw new BerDataValueFormatException("Truncated tag number");
    }

    private int readLongFormLength(int i10) throws BerDataValueFormatException {
        int i11 = i10 & 127;
        if (i11 > 4) {
            throw new BerDataValueFormatException(b.i("Length too large: ", i11, " bytes"));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            if (!this.mBuf.hasRemaining()) {
                throw new BerDataValueFormatException("Truncated length");
            }
            byte b10 = this.mBuf.get();
            if (i12 > 8388607) {
                throw new BerDataValueFormatException("Length too large");
            }
            i12 = (i12 << 8) | (b10 & 255);
        }
        return i12;
    }

    private int readShortFormLength(int i10) {
        return i10 & 127;
    }

    private int readTagNumber(byte b10) {
        int tagNumber = BerEncoding.getTagNumber(b10);
        return tagNumber == 31 ? readHighTagNumber() : tagNumber;
    }

    private int skipConstructedIndefiniteLengthContents() throws BerDataValueFormatException {
        int iPosition = this.mBuf.position();
        while (this.mBuf.hasRemaining()) {
            if (this.mBuf.remaining() > 1) {
                ByteBuffer byteBuffer = this.mBuf;
                if (byteBuffer.getShort(byteBuffer.position()) == 0) {
                    int iPosition2 = this.mBuf.position() - iPosition;
                    ByteBuffer byteBuffer2 = this.mBuf;
                    byteBuffer2.position(byteBuffer2.position() + 2);
                    return iPosition2;
                }
            }
            readDataValue();
        }
        throw new BerDataValueFormatException("Truncated indefinite-length contents: " + (this.mBuf.position() - iPosition) + " bytes read");
    }

    private void skipDefiniteLengthContents(int i10) throws BerDataValueFormatException {
        if (this.mBuf.remaining() >= i10) {
            ByteBuffer byteBuffer = this.mBuf;
            byteBuffer.position(byteBuffer.position() + i10);
        } else {
            StringBuilder sbN = b.n("Truncated contents. Need: ", i10, " bytes, available: ");
            sbN.append(this.mBuf.remaining());
            throw new BerDataValueFormatException(sbN.toString());
        }
    }

    private int skipPrimitiveIndefiniteLengthContents() throws BerDataValueFormatException {
        int i10 = 0;
        boolean z = false;
        while (this.mBuf.hasRemaining()) {
            byte b10 = this.mBuf.get();
            int i11 = i10 + 1;
            if (i11 < 0) {
                throw new BerDataValueFormatException("Indefinite-length contents too long");
            }
            if (b10 != 0) {
                z = false;
            } else {
                if (z) {
                    return i10 - 1;
                }
                z = true;
            }
            i10 = i11;
        }
        throw new BerDataValueFormatException(b.i("Truncated indefinite-length contents: ", i10, " bytes read"));
    }

    @Override // com.android.apksig.internal.asn1.ber.BerDataValueReader
    public BerDataValue readDataValue() {
        int iPosition;
        int iSkipConstructedIndefiniteLengthContents;
        int iPosition2 = this.mBuf.position();
        if (!this.mBuf.hasRemaining()) {
            return null;
        }
        byte b10 = this.mBuf.get();
        int tagNumber = readTagNumber(b10);
        boolean zIsConstructed = BerEncoding.isConstructed(b10);
        if (!this.mBuf.hasRemaining()) {
            throw new BerDataValueFormatException("Missing length");
        }
        byte b11 = this.mBuf.get();
        int i10 = b11 & 255;
        if ((b11 & 128) == 0) {
            iSkipConstructedIndefiniteLengthContents = readShortFormLength(i10);
            iPosition = this.mBuf.position() - iPosition2;
            skipDefiniteLengthContents(iSkipConstructedIndefiniteLengthContents);
        } else if (i10 != 128) {
            iSkipConstructedIndefiniteLengthContents = readLongFormLength(i10);
            iPosition = this.mBuf.position() - iPosition2;
            skipDefiniteLengthContents(iSkipConstructedIndefiniteLengthContents);
        } else {
            iPosition = this.mBuf.position() - iPosition2;
            iSkipConstructedIndefiniteLengthContents = zIsConstructed ? skipConstructedIndefiniteLengthContents() : skipPrimitiveIndefiniteLengthContents();
        }
        int iPosition3 = this.mBuf.position();
        this.mBuf.position(iPosition2);
        int iLimit = this.mBuf.limit();
        this.mBuf.limit(iPosition3);
        ByteBuffer byteBufferSlice = this.mBuf.slice();
        ByteBuffer byteBuffer = this.mBuf;
        byteBuffer.position(byteBuffer.limit());
        this.mBuf.limit(iLimit);
        byteBufferSlice.position(iPosition);
        byteBufferSlice.limit(iPosition + iSkipConstructedIndefiniteLengthContents);
        ByteBuffer byteBufferSlice2 = byteBufferSlice.slice();
        byteBufferSlice.clear();
        return new BerDataValue(byteBufferSlice, byteBufferSlice2, BerEncoding.getTagClass(b10), zIsConstructed, tagNumber);
    }
}
