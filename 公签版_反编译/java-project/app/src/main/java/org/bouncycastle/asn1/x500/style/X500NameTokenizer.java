package org.bouncycastle.asn1.x500.style;

/* loaded from: classes.dex */
public class X500NameTokenizer {
    private int index;
    private final char separator;
    private final String value;

    public X500NameTokenizer(String str) {
        this(str, ',');
    }

    public boolean hasMoreTokens() {
        return this.index < this.value.length();
    }

    public String nextToken() {
        if (this.index >= this.value.length()) {
            return null;
        }
        int i10 = this.index + 1;
        boolean z = false;
        boolean z4 = false;
        while (true) {
            int i11 = this.index + 1;
            this.index = i11;
            if (i11 < this.value.length()) {
                char cCharAt = this.value.charAt(this.index);
                if (z) {
                    z = false;
                } else if (cCharAt == '\"') {
                    z4 = !z4;
                } else if (z4) {
                    continue;
                } else if (cCharAt == '\\') {
                    z = true;
                } else if (cCharAt == this.separator) {
                    break;
                }
            } else if (z || z4) {
                throw new IllegalArgumentException("badly formatted directory string");
            }
        }
        return this.value.substring(i10, this.index);
    }

    public X500NameTokenizer(String str, char c7) {
        str.getClass();
        if (c7 == '\"' || c7 == '\\') {
            throw new IllegalArgumentException("reserved separator character");
        }
        this.value = str;
        this.separator = c7;
        this.index = str.length() < 1 ? 0 : -1;
    }
}
