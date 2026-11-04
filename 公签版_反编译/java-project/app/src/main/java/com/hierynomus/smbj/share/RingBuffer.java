package com.hierynomus.smbj.share;

/* loaded from: classes.dex */
class RingBuffer {
    private byte[] buf;
    private int readIndex;
    private int size;
    private int writeIndex;

    public RingBuffer(int i10) {
        this.buf = new byte[i10];
    }

    private void readBytes(byte[] bArr, int i10) {
        int i11 = this.readIndex;
        int i12 = i11 + i10;
        byte[] bArr2 = this.buf;
        if (i12 <= bArr2.length) {
            System.arraycopy(bArr2, i11, bArr, 0, i10);
            return;
        }
        int length = bArr2.length - i11;
        System.arraycopy(bArr2, i11, bArr, 0, length);
        System.arraycopy(this.buf, 0, bArr, length, i10 - length);
    }

    private void writeBytes(byte[] bArr, int i10, int i11) {
        int i12 = this.writeIndex;
        int i13 = i12 + i11;
        byte[] bArr2 = this.buf;
        if (i13 <= bArr2.length) {
            System.arraycopy(bArr, i10, bArr2, i12, i11);
            return;
        }
        int length = bArr2.length - i12;
        System.arraycopy(bArr, i10, bArr2, i12, length);
        System.arraycopy(bArr, i10 + length, this.buf, 0, i11 - length);
    }

    public boolean isEmpty() {
        return this.size <= 0;
    }

    public boolean isFull() {
        return size() == this.buf.length;
    }

    public int maxSize() {
        return this.buf.length;
    }

    public int read(byte[] bArr) {
        int length = this.size;
        if (length >= bArr.length) {
            length = bArr.length;
        }
        readBytes(bArr, length);
        this.readIndex = (this.readIndex + length) % this.buf.length;
        this.size -= length;
        return length;
    }

    public int size() {
        return this.size;
    }

    public void write(byte[] bArr, int i10, int i11) {
        if (bArr.length - i10 < i11) {
            throw new IllegalArgumentException("Bytes to write do not exist in source");
        }
        if (i11 > this.buf.length - this.size) {
            throw new IndexOutOfBoundsException("Size of bytes to be written is greater than available buffer space");
        }
        writeBytes(bArr, i10, i11);
        this.writeIndex = (this.writeIndex + i11) % this.buf.length;
        this.size += i11;
    }

    public boolean isFull(int i10) {
        byte[] bArr = this.buf;
        if (i10 <= bArr.length) {
            return this.size + i10 > bArr.length;
        }
        throw new IllegalArgumentException("RingBuffer of length " + this.buf.length + " cannot accomodate " + i10 + " bytes.");
    }

    public void write(int i10) {
        write(new byte[]{(byte) i10}, 0, 1);
    }
}
