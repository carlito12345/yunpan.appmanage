package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes.dex */
public final class CharArrayBuffer {
    private char[] buffer;
    private int len;

    public CharArrayBuffer(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Buffer capacity may not be negative");
        }
        this.buffer = new char[i10];
    }

    private void expand(int i10) {
        char[] cArr = new char[Math.max(this.buffer.length << 1, i10)];
        System.arraycopy(this.buffer, 0, cArr, 0, this.len);
        this.buffer = cArr;
    }

    public void append(char[] cArr, int i10, int i11) {
        int i12;
        if (cArr != null) {
            if (i10 < 0 || i10 > cArr.length || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > cArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i11 != 0) {
                int i13 = this.len + i11;
                if (i13 > this.buffer.length) {
                    expand(i13);
                }
                System.arraycopy(cArr, i10, this.buffer, this.len, i11);
                this.len = i13;
            }
        }
    }

    public char[] buffer() {
        return this.buffer;
    }

    public int capacity() {
        return this.buffer.length;
    }

    public char charAt(int i10) {
        return this.buffer[i10];
    }

    public void clear() {
        this.len = 0;
    }

    public void ensureCapacity(int i10) {
        if (i10 > 0) {
            int length = this.buffer.length;
            int i11 = this.len;
            if (i10 > length - i11) {
                expand(i11 + i10);
            }
        }
    }

    public int indexOf(int i10, int i11, int i12) {
        if (i11 < 0) {
            i11 = 0;
        }
        int i13 = this.len;
        if (i12 > i13) {
            i12 = i13;
        }
        if (i11 > i12) {
            return -1;
        }
        while (i11 < i12) {
            if (this.buffer[i11] == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.len == 0;
    }

    public boolean isFull() {
        return this.len == this.buffer.length;
    }

    public int length() {
        return this.len;
    }

    public void setLength(int i10) {
        if (i10 < 0 || i10 > this.buffer.length) {
            throw new IndexOutOfBoundsException();
        }
        this.len = i10;
    }

    public String substring(int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 > this.len) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 <= i11) {
            return new String(this.buffer, i10, i11 - i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public String substringTrimmed(int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 > this.len) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 > i11) {
            throw new IndexOutOfBoundsException();
        }
        while (i10 < i11 && HTTP.isWhitespace(this.buffer[i10])) {
            i10++;
        }
        while (i11 > i10 && HTTP.isWhitespace(this.buffer[i11 - 1])) {
            i11--;
        }
        return new String(this.buffer, i10, i11 - i10);
    }

    public char[] toCharArray() {
        int i10 = this.len;
        char[] cArr = new char[i10];
        if (i10 > 0) {
            System.arraycopy(this.buffer, 0, cArr, 0, i10);
        }
        return cArr;
    }

    public String toString() {
        return new String(this.buffer, 0, this.len);
    }

    public int indexOf(int i10) {
        return indexOf(i10, 0, this.len);
    }

    public void append(String str) {
        if (str == null) {
            str = "null";
        }
        int length = str.length();
        int i10 = this.len + length;
        if (i10 > this.buffer.length) {
            expand(i10);
        }
        str.getChars(0, length, this.buffer, this.len);
        this.len = i10;
    }

    public void append(CharArrayBuffer charArrayBuffer, int i10, int i11) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.buffer, i10, i11);
        }
    }

    public void append(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.buffer, 0, charArrayBuffer.len);
        }
    }

    public void append(char c7) {
        int i10 = this.len + 1;
        if (i10 > this.buffer.length) {
            expand(i10);
        }
        this.buffer[this.len] = c7;
        this.len = i10;
    }

    public void append(byte[] bArr, int i10, int i11) {
        int i12;
        if (bArr != null) {
            if (i10 < 0 || i10 > bArr.length || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i11 != 0) {
                int i13 = this.len;
                int i14 = i11 + i13;
                if (i14 > this.buffer.length) {
                    expand(i14);
                }
                while (i13 < i14) {
                    this.buffer[i13] = (char) (bArr[i10] & 255);
                    i10++;
                    i13++;
                }
                this.len = i14;
            }
        }
    }

    public void append(Object obj) {
        append(String.valueOf(obj));
    }
}
