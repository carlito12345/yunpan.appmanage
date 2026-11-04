package org.bouncycastle.asn1.x509;

/* loaded from: classes3.dex */
public class X509NameTokenizer {
    private StringBuffer buf;
    private int index;
    private char separator;
    private String value;

    public X509NameTokenizer(String str) {
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
        this.buf.setLength(0);
        boolean z = false;
        boolean z4 = false;
        while (i10 != this.value.length()) {
            char cCharAt = this.value.charAt(i10);
            if (cCharAt != '\"') {
                if (!z && !z4) {
                    if (cCharAt == '\\') {
                        this.buf.append(cCharAt);
                        z = true;
                    } else {
                        if (cCharAt == this.separator) {
                            break;
                        }
                        this.buf.append(cCharAt);
                    }
                }
                i10++;
            } else if (!z) {
                z4 = !z4;
            }
            this.buf.append(cCharAt);
            z = false;
            i10++;
        }
        this.index = i10;
        return this.buf.toString();
    }

    public X509NameTokenizer(String str, char c7) {
        this.buf = new StringBuffer();
        this.value = str;
        this.index = str.length() < 1 ? 0 : -1;
        this.separator = c7;
    }
}
