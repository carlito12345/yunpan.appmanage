package com.hierynomus.asn1;

/* loaded from: classes.dex */
public class ASN1ParseException extends RuntimeException {
    public ASN1ParseException(String str) {
        super(str);
    }

    public ASN1ParseException(Throwable th2, String str, Object... objArr) {
        super(String.format(str, objArr), th2);
    }

    public ASN1ParseException(String str, Object... objArr) {
        super(String.format(str, objArr));
    }
}
