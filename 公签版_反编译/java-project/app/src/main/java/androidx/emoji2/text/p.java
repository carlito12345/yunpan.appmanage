package androidx.emoji2.text;

import a2.w0;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f1125d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final int f1126a;

    /* renamed from: b, reason: collision with root package name */
    public final w0 f1127b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f1128c = 0;

    public p(w0 w0Var, int i10) {
        this.f1127b = w0Var;
        this.f1126a = i10;
    }

    public final int a(int i10) {
        h1.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) aVarC.f6323d;
        int i11 = iA + aVarC.f6320a;
        return byteBuffer.getInt((i10 * 4) + byteBuffer.getInt(i11) + i11 + 4);
    }

    public final int b() {
        h1.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        int i10 = iA + aVarC.f6320a;
        return ((ByteBuffer) aVarC.f6323d).getInt(((ByteBuffer) aVarC.f6323d).getInt(i10) + i10);
    }

    public final h1.a c() {
        ThreadLocal threadLocal = f1125d;
        h1.a aVar = (h1.a) threadLocal.get();
        if (aVar == null) {
            aVar = new h1.a();
            threadLocal.set(aVar);
        }
        h1.b bVar = (h1.b) this.f1127b.f346b;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i10 = iA + bVar.f6320a;
            int i11 = (this.f1126a * 4) + ((ByteBuffer) bVar.f6323d).getInt(i10) + i10 + 4;
            int i12 = ((ByteBuffer) bVar.f6323d).getInt(i11) + i11;
            ByteBuffer byteBuffer = (ByteBuffer) bVar.f6323d;
            aVar.f6323d = byteBuffer;
            if (byteBuffer != null) {
                aVar.f6320a = i12;
                int i13 = i12 - byteBuffer.getInt(i12);
                aVar.f6321b = i13;
                aVar.f6322c = ((ByteBuffer) aVar.f6323d).getShort(i13);
            } else {
                aVar.f6320a = 0;
                aVar.f6321b = 0;
                aVar.f6322c = 0;
            }
        }
        return aVar;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(", id:");
        h1.a aVarC = c();
        int iA = aVarC.a(4);
        sb2.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) aVarC.f6323d).getInt(iA + aVarC.f6320a) : 0));
        sb2.append(", codepoints:");
        int iB = b();
        for (int i10 = 0; i10 < iB; i10++) {
            sb2.append(Integer.toHexString(a(i10)));
            sb2.append(" ");
        }
        return sb2.toString();
    }
}
