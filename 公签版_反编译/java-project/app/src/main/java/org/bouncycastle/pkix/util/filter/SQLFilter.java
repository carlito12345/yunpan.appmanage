package org.bouncycastle.pkix.util.filter;

/* loaded from: classes3.dex */
public class SQLFilter implements Filter {
    @Override // org.bouncycastle.pkix.util.filter.Filter
    public String doFilter(String str) {
        int i10;
        String str2;
        StringBuilder sb2 = new StringBuilder(str);
        int i11 = 0;
        while (i11 < sb2.length()) {
            char cCharAt = sb2.charAt(i11);
            if (cCharAt == '\n') {
                i10 = i11 + 1;
                str2 = "\\n";
            } else if (cCharAt == '\r') {
                i10 = i11 + 1;
                str2 = "\\r";
            } else if (cCharAt == '\"') {
                i10 = i11 + 1;
                str2 = "\\\"";
            } else if (cCharAt == '\'') {
                i10 = i11 + 1;
                str2 = "\\'";
            } else if (cCharAt == '-') {
                i10 = i11 + 1;
                str2 = "\\-";
            } else if (cCharAt == '/') {
                i10 = i11 + 1;
                str2 = "\\/";
            } else if (cCharAt == ';') {
                i10 = i11 + 1;
                str2 = "\\;";
            } else if (cCharAt == '=') {
                i10 = i11 + 1;
                str2 = "\\=";
            } else if (cCharAt != '\\') {
                i11++;
            } else {
                i10 = i11 + 1;
                str2 = "\\\\";
            }
            sb2.replace(i11, i10, str2);
            i11 = i10;
            i11++;
        }
        return sb2.toString();
    }

    @Override // org.bouncycastle.pkix.util.filter.Filter
    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
