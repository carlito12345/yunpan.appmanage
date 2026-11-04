package j$.time.zone;

import j$.time.x;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.TimeZone;

/* loaded from: classes2.dex */
final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* renamed from: a, reason: collision with root package name */
    private byte f8965a;

    /* renamed from: b, reason: collision with root package name */
    private Serializable f8966b;

    public a() {
    }

    a(byte b10, Serializable serializable) {
        this.f8965a = b10;
        this.f8966b = serializable;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b10 = this.f8965a;
        Serializable serializable = this.f8966b;
        objectOutput.writeByte(b10);
        if (b10 == 1) {
            ((f) serializable).writeExternal(objectOutput);
            return;
        }
        if (b10 == 2) {
            ((b) serializable).writeExternal(objectOutput);
        } else if (b10 == 3) {
            ((e) serializable).writeExternal(objectOutput);
        } else {
            if (b10 == 100) {
                ((f) serializable).k(objectOutput);
                return;
            }
            throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Serializable serializableJ;
        byte b10 = objectInput.readByte();
        this.f8965a = b10;
        if (b10 == 1) {
            serializableJ = f.j(objectInput);
        } else if (b10 == 2) {
            long jA = a(objectInput);
            x xVarB = b(objectInput);
            x xVarB2 = b(objectInput);
            if (xVarB.equals(xVarB2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            serializableJ = new b(jA, xVarB, xVarB2);
        } else if (b10 == 3) {
            serializableJ = e.b(objectInput);
        } else {
            if (b10 != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            serializableJ = new f(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f8966b = serializableJ;
    }

    private Object readResolve() {
        return this.f8966b;
    }

    static void d(x xVar, ObjectOutput objectOutput) {
        int I = xVar.I();
        int i10 = I % 900 == 0 ? I / 900 : 127;
        objectOutput.writeByte(i10);
        if (i10 == 127) {
            objectOutput.writeInt(I);
        }
    }

    static x b(ObjectInput objectInput) throws IOException {
        byte b10 = objectInput.readByte();
        return b10 == Byte.MAX_VALUE ? x.L(objectInput.readInt()) : x.L(b10 * 900);
    }

    static void c(long j10, ObjectOutput objectOutput) {
        if (j10 >= -4575744000L && j10 < 10413792000L && j10 % 900 == 0) {
            int i10 = (int) ((j10 + 4575744000L) / 900);
            objectOutput.writeByte((i10 >>> 16) & 255);
            objectOutput.writeByte((i10 >>> 8) & 255);
            objectOutput.writeByte(i10 & 255);
            return;
        }
        objectOutput.writeByte(255);
        objectOutput.writeLong(j10);
    }

    static long a(ObjectInput objectInput) {
        if ((objectInput.readByte() & 255) == 255) {
            return objectInput.readLong();
        }
        return ((((r0 << 16) + ((objectInput.readByte() & 255) << 8)) + (objectInput.readByte() & 255)) * 900) - 4575744000L;
    }
}
