package org.bouncycastle.cms;

/* loaded from: classes3.dex */
public class CMSException extends Exception {

    /* renamed from: e, reason: collision with root package name */
    Exception f11867e;

    public CMSException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f11867e;
    }

    public Exception getUnderlyingException() {
        return this.f11867e;
    }

    public CMSException(String str, Exception exc) {
        super(str);
        this.f11867e = exc;
    }
}
