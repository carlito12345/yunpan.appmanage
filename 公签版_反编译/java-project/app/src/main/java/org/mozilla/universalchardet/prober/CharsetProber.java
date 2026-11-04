package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public abstract class CharsetProber {
    public static final int ASCII_A = 97;
    public static final int ASCII_A_CAPITAL = 65;
    public static final int ASCII_GT = 62;
    public static final int ASCII_LT = 60;
    public static final int ASCII_SP = 32;
    public static final int ASCII_Z = 122;
    public static final int ASCII_Z_CAPITAL = 90;
    public static final float SHORTCUT_THRESHOLD = 0.95f;
    private boolean active = true;

    public enum ProbingState {
        DETECTING,
        FOUND_IT,
        NOT_ME
    }

    private boolean isAscii(byte b10) {
        return (b10 & 128) == 0;
    }

    private boolean isAsciiSymbol(byte b10) {
        int i10 = b10 & 255;
        return i10 < 65 || (i10 > 90 && i10 < 97) || i10 > 122;
    }

    public ByteBuffer filterWithEnglishLetters(byte[] bArr, int i10, int i11) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11);
        int i12 = i11 + i10;
        int i13 = i10;
        boolean z = false;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            if (b10 == 62) {
                z = false;
            } else if (b10 == 60) {
                z = true;
            }
            if (isAscii(b10) && isAsciiSymbol(b10)) {
                if (i10 > i13 && !z) {
                    byteBufferAllocate.put(bArr, i13, i10 - i13);
                    byteBufferAllocate.put(HebrewProber.SPACE);
                }
                i13 = i10 + 1;
            }
            i10++;
        }
        if (!z && i10 > i13) {
            byteBufferAllocate.put(bArr, i13, i10 - i13);
        }
        return byteBufferAllocate;
    }

    public ByteBuffer filterWithoutEnglishLetters(byte[] bArr, int i10, int i11) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11);
        int i12 = i11 + i10;
        int i13 = i10;
        boolean z = false;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            if (!isAscii(b10)) {
                z = true;
            } else if (isAsciiSymbol(b10)) {
                if (!z || i10 <= i13) {
                    i13 = i10 + 1;
                } else {
                    byteBufferAllocate.put(bArr, i13, i10 - i13);
                    byteBufferAllocate.put(HebrewProber.SPACE);
                    i13 = i10 + 1;
                    z = false;
                }
            }
            i10++;
        }
        if (z && i10 > i13) {
            byteBufferAllocate.put(bArr, i13, i10 - i13);
        }
        return byteBufferAllocate;
    }

    public abstract String getCharSetName();

    public abstract float getConfidence();

    public abstract ProbingState getState();

    public abstract ProbingState handleData(byte[] bArr, int i10, int i11);

    public boolean isActive() {
        return this.active;
    }

    public abstract void reset();

    public void setActive(boolean z) {
        this.active = z;
    }

    public abstract void setOption();
}
