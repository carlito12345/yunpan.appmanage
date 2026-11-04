package io.github.muntashirakon.crypto.spake2;

import d0.f;
import javax.security.auth.Destroyable;

/* loaded from: classes.dex */
public class Spake2Context implements Destroyable {

    /* renamed from: a, reason: collision with root package name */
    public final long f8698a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8699b = new byte[32];

    /* renamed from: c, reason: collision with root package name */
    public boolean f8700c;

    static {
        System.loadLibrary("spake2");
    }

    public Spake2Context(int i10, byte[] bArr, byte[] bArr2) {
        long jAllocNewContext = allocNewContext(f.c(i10), bArr, bArr2);
        this.f8698a = jAllocNewContext;
        if (jAllocNewContext == 0) {
            throw new UnsupportedOperationException("Could not allocate native context");
        }
    }

    private static native long allocNewContext(int i10, byte[] bArr, byte[] bArr2);

    private static native void destroy(long j10);

    private static native byte[] generateMessage(long j10, byte[] bArr);

    private static native byte[] processMessage(long j10, byte[] bArr);

    public final byte[] a(byte[] bArr) {
        if (this.f8700c) {
            throw new IllegalStateException("The context was destroyed.");
        }
        byte[] bArrGenerateMessage = generateMessage(this.f8698a, bArr);
        if (bArrGenerateMessage == null) {
            throw new IllegalStateException("Generated empty message");
        }
        System.arraycopy(bArrGenerateMessage, 0, this.f8699b, 0, 32);
        return bArrGenerateMessage;
    }

    public final byte[] b(byte[] bArr) {
        if (this.f8700c) {
            throw new IllegalStateException("The context was destroyed.");
        }
        byte[] bArrProcessMessage = processMessage(this.f8698a, bArr);
        if (bArrProcessMessage != null) {
            return bArrProcessMessage;
        }
        throw new IllegalStateException("No key was returned");
    }

    @Override // javax.security.auth.Destroyable
    public final void destroy() {
        this.f8700c = true;
        destroy(this.f8698a);
    }

    @Override // javax.security.auth.Destroyable
    public final boolean isDestroyed() {
        return this.f8700c;
    }
}
