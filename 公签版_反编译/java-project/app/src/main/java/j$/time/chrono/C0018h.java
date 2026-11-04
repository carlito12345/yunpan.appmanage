package j$.time.chrono;

import j$.util.Objects;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* renamed from: j$.time.chrono.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0018h implements Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f8789e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* renamed from: a, reason: collision with root package name */
    private final n f8790a;

    /* renamed from: b, reason: collision with root package name */
    final int f8791b;

    /* renamed from: c, reason: collision with root package name */
    final int f8792c;

    /* renamed from: d, reason: collision with root package name */
    final int f8793d;

    static {
        j$.com.android.tools.r8.a.f(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    C0018h(n nVar, int i10, int i11, int i12) {
        Objects.requireNonNull(nVar, "chrono");
        this.f8790a = nVar;
        this.f8791b = i10;
        this.f8792c = i11;
        this.f8793d = i12;
    }

    public final String toString() {
        n nVar = this.f8790a;
        int i10 = this.f8793d;
        int i11 = this.f8792c;
        int i12 = this.f8791b;
        if (i12 != 0 || i11 != 0 || i10 != 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((AbstractC0011a) nVar).i());
            sb2.append(" P");
            if (i12 != 0) {
                sb2.append(i12);
                sb2.append('Y');
            }
            if (i11 != 0) {
                sb2.append(i11);
                sb2.append('M');
            }
            if (i10 != 0) {
                sb2.append(i10);
                sb2.append('D');
            }
            return sb2.toString();
        }
        return ((AbstractC0011a) nVar).i() + " P0D";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0018h)) {
            return false;
        }
        C0018h c0018h = (C0018h) obj;
        if (this.f8791b == c0018h.f8791b && this.f8792c == c0018h.f8792c && this.f8793d == c0018h.f8793d) {
            if (((AbstractC0011a) this.f8790a).equals(c0018h.f8790a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((AbstractC0011a) this.f8790a).hashCode() ^ (Integer.rotateLeft(this.f8793d, 16) + (Integer.rotateLeft(this.f8792c, 8) + this.f8791b));
    }

    protected Object writeReplace() {
        return new G((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.f8790a.i());
        objectOutput.writeInt(this.f8791b);
        objectOutput.writeInt(this.f8792c);
        objectOutput.writeInt(this.f8793d);
    }
}
