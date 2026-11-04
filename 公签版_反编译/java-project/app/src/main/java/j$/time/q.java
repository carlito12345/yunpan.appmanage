package j$.time;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class q implements Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final q f8908d = new q(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* renamed from: a, reason: collision with root package name */
    private final int f8909a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8910b;

    /* renamed from: c, reason: collision with root package name */
    private final int f8911c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        j$.com.android.tools.r8.a.f(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    private q(int i10, int i11, int i12) {
        this.f8909a = i10;
        this.f8910b = i11;
        this.f8911c = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f8909a == qVar.f8909a && this.f8910b == qVar.f8910b && this.f8911c == qVar.f8911c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f8911c, 16) + Integer.rotateLeft(this.f8910b, 8) + this.f8909a;
    }

    public final String toString() {
        if (this == f8908d) {
            return "P0D";
        }
        StringBuilder sb2 = new StringBuilder("P");
        int i10 = this.f8909a;
        if (i10 != 0) {
            sb2.append(i10);
            sb2.append('Y');
        }
        int i11 = this.f8910b;
        if (i11 != 0) {
            sb2.append(i11);
            sb2.append('M');
        }
        int i12 = this.f8911c;
        if (i12 != 0) {
            sb2.append(i12);
            sb2.append('D');
        }
        return sb2.toString();
    }

    private Object writeReplace() {
        return new r((byte) 14, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.f8909a);
        objectOutput.writeInt(this.f8910b);
        objectOutput.writeInt(this.f8911c);
    }

    static q a(ObjectInput objectInput) throws IOException {
        int i10 = objectInput.readInt();
        int i11 = objectInput.readInt();
        int i12 = objectInput.readInt();
        if ((i10 | i11 | i12) == 0) {
            return f8908d;
        }
        return new q(i10, i11, i12);
    }
}
