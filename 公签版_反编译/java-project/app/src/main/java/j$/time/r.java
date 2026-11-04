package j$.time;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
final class r implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* renamed from: a, reason: collision with root package name */
    private byte f8912a;

    /* renamed from: b, reason: collision with root package name */
    private Object f8913b;

    public r() {
    }

    r(byte b10, Object obj) {
        this.f8912a = b10;
        this.f8913b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b10 = this.f8912a;
        Object obj = this.f8913b;
        objectOutput.writeByte(b10);
        switch (b10) {
            case 1:
                ((Duration) obj).writeExternal(objectOutput);
                return;
            case 2:
                ((Instant) obj).F(objectOutput);
                return;
            case 3:
                ((e) obj).Z(objectOutput);
                return;
            case 4:
                ((i) obj).W(objectOutput);
                return;
            case 5:
                ((g) obj).T(objectOutput);
                return;
            case 6:
                ((A) obj).G(objectOutput);
                return;
            case 7:
                ((y) obj).I(objectOutput);
                return;
            case 8:
                ((x) obj).O(objectOutput);
                return;
            case 9:
                ((p) obj).writeExternal(objectOutput);
                return;
            case 10:
                ((o) obj).writeExternal(objectOutput);
                return;
            case 11:
                ((t) obj).G(objectOutput);
                return;
            case 12:
                ((v) obj).J(objectOutput);
                return;
            case 13:
                ((m) obj).D(objectOutput);
                return;
            case 14:
                ((q) obj).writeExternal(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        byte b10 = objectInput.readByte();
        this.f8912a = b10;
        this.f8913b = b(b10, objectInput);
    }

    static Serializable a(ObjectInput objectInput) {
        return b(objectInput.readByte(), objectInput);
    }

    private static Serializable b(byte b10, ObjectInput objectInput) throws StreamCorruptedException {
        switch (b10) {
            case 1:
                Duration duration = Duration.f8756c;
                return Duration.s(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.EPOCH;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                e eVar = e.f8828d;
                return e.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return i.R(objectInput);
            case 5:
                g gVar = g.f8883c;
                e eVar2 = e.f8828d;
                return g.K(e.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.R(objectInput));
            case 6:
                return A.E(objectInput);
            case 7:
                int i10 = y.f8961c;
                return w.D(objectInput.readUTF());
            case 8:
                return x.N(objectInput);
            case 9:
                return p.E(objectInput);
            case 10:
                return o.E(objectInput);
            case 11:
                int i11 = t.f8916b;
                return t.C(objectInput.readInt());
            case 12:
                return v.G(objectInput);
            case 13:
                return m.C(objectInput);
            case 14:
                return q.a(objectInput);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f8913b;
    }
}
