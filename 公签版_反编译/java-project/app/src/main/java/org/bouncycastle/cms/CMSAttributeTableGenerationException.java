package org.bouncycastle.cms;

/* loaded from: classes3.dex */
public class CMSAttributeTableGenerationException extends CMSRuntimeException {

    /* renamed from: e, reason: collision with root package name */
    Exception f11866e;

    public CMSAttributeTableGenerationException(String str) {
        super(str);
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException, java.lang.Throwable
    public Throwable getCause() {
        return this.f11866e;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException
    public Exception getUnderlyingException() {
        return this.f11866e;
    }

    public CMSAttributeTableGenerationException(String str, Exception exc) {
        super(str);
        this.f11866e = exc;
    }
}
