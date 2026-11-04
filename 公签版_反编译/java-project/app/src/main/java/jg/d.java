package jg;

import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public final Class[] f9891a;

    public d(Class... clsArr) {
        this.f9891a = clsArr;
    }

    public static int e(int i10, Object obj) {
        return obj instanceof Number ? ((Number) obj).intValue() : i10;
    }

    public abstract InputStream a(String str, InputStream inputStream, long j10, g gVar, byte[] bArr, int i10);

    public OutputStream b(OutputStream outputStream, Object obj) {
        throw new UnsupportedOperationException("Method doesn't support writing");
    }

    public byte[] c(Object obj) {
        return rg.b.f13774a;
    }

    public Object d(g gVar) {
        return null;
    }
}
