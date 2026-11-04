package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
final class y extends w {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f8961c = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* renamed from: a, reason: collision with root package name */
    private final String f8962a;

    /* renamed from: b, reason: collision with root package name */
    private final transient j$.time.zone.f f8963b;

    static y H(String str) {
        j$.time.zone.f fVarA;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length >= 2) {
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i10 == 0) && ((cCharAt < '0' || cCharAt > '9' || i10 == 0) && ((cCharAt != '~' || i10 == 0) && ((cCharAt != '.' || i10 == 0) && ((cCharAt != '_' || i10 == 0) && ((cCharAt != '+' || i10 == 0) && (cCharAt != '-' || i10 == 0))))))))) {
                    throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                }
            }
            try {
                fVarA = j$.time.zone.j.a(str, true);
            } catch (j$.time.zone.g unused) {
                fVarA = null;
            }
            return new y(str, fVarA);
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
    }

    y(String str, j$.time.zone.f fVar) {
        this.f8962a = str;
        this.f8963b = fVar;
    }

    @Override // j$.time.w
    public final String i() {
        return this.f8962a;
    }

    @Override // j$.time.w
    public final j$.time.zone.f C() {
        j$.time.zone.f fVar = this.f8963b;
        return fVar != null ? fVar : j$.time.zone.j.a(this.f8962a, false);
    }

    private Object writeReplace() {
        return new r((byte) 7, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.w
    final void G(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(7);
        objectOutput.writeUTF(this.f8962a);
    }

    final void I(DataOutput dataOutput) {
        dataOutput.writeUTF(this.f8962a);
    }
}
