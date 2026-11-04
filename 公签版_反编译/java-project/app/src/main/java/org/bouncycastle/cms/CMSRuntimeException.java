package org.bouncycastle.cms;

/* loaded from: classes3.dex */
public class CMSRuntimeException extends RuntimeException {

    /* renamed from: e, reason: collision with root package name */
    Exception f11868e;

    public CMSRuntimeException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f11868e;
    }

    public Exception getUnderlyingException() {
        return this.f11868e;
    }

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.f11868e = exc;
    }
}
