package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes.dex */
public class ParserCursor {
    private final int lowerBound;
    private int pos;
    private final int upperBound;

    public ParserCursor(int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Lower bound cannot be negative");
        }
        if (i10 > i11) {
            throw new IndexOutOfBoundsException("Lower bound cannot be greater then upper bound");
        }
        this.lowerBound = i10;
        this.upperBound = i11;
        this.pos = i10;
    }

    public boolean atEnd() {
        return this.pos >= this.upperBound;
    }

    public int getLowerBound() {
        return this.lowerBound;
    }

    public int getPos() {
        return this.pos;
    }

    public int getUpperBound() {
        return this.upperBound;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(16);
        sb2.append('[');
        sb2.append(Integer.toString(this.lowerBound));
        sb2.append('>');
        sb2.append(Integer.toString(this.pos));
        sb2.append('>');
        sb2.append(Integer.toString(this.upperBound));
        sb2.append(']');
        return sb2.toString();
    }

    public void updatePos(int i10) {
        if (i10 < this.lowerBound) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 > this.upperBound) {
            throw new IndexOutOfBoundsException();
        }
        this.pos = i10;
    }
}
