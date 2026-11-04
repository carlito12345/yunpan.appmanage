package xh;

import java.io.DataInput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import sh.p;

/* loaded from: classes3.dex */
public final class a implements Externalizable {

    /* renamed from: a, reason: collision with root package name */
    public byte f18483a;

    /* renamed from: b, reason: collision with root package name */
    public Serializable f18484b;

    public a(byte b10, Serializable serializable) {
        this.f18483a = b10;
        this.f18484b = serializable;
    }

    public static long a(DataInput dataInput) {
        if ((dataInput.readByte() & 255) == 255) {
            return dataInput.readLong();
        }
        return ((((r0 << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255)) * 900) - 4575744000L;
    }

    public static Serializable b(byte b10, DataInput dataInput) throws IOException {
        if (b10 != 1) {
            if (b10 != 2) {
                if (b10 == 3) {
                    return f.a(dataInput);
                }
                throw new StreamCorruptedException("Unknown serialized type");
            }
            long jA = a(dataInput);
            p pVarC = c(dataInput);
            p pVarC2 = c(dataInput);
            if (pVarC.equals(pVarC2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            return new e(jA, pVarC, pVarC2);
        }
        int i10 = dataInput.readInt();
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = a(dataInput);
        }
        int i12 = i10 + 1;
        p[] pVarArr = new p[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            pVarArr[i13] = c(dataInput);
        }
        int i14 = dataInput.readInt();
        long[] jArr2 = new long[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            jArr2[i15] = a(dataInput);
        }
        int i16 = i14 + 1;
        p[] pVarArr2 = new p[i16];
        for (int i17 = 0; i17 < i16; i17++) {
            pVarArr2[i17] = c(dataInput);
        }
        int i18 = dataInput.readByte();
        f[] fVarArr = new f[i18];
        for (int i19 = 0; i19 < i18; i19++) {
            fVarArr[i19] = f.a(dataInput);
        }
        return new b(jArr, pVarArr, jArr2, pVarArr2, fVarArr);
    }

    public static p c(DataInput dataInput) throws IOException {
        byte b10 = dataInput.readByte();
        return b10 == Byte.MAX_VALUE ? p.r(dataInput.readInt()) : p.r(b10 * 900);
    }

    public static void d(long j10, ObjectOutput objectOutput) throws IOException {
        if (j10 < -4575744000L || j10 >= 10413792000L || j10 % 900 != 0) {
            objectOutput.writeByte(255);
            objectOutput.writeLong(j10);
        } else {
            int i10 = (int) ((j10 + 4575744000L) / 900);
            objectOutput.writeByte((i10 >>> 16) & 255);
            objectOutput.writeByte((i10 >>> 8) & 255);
            objectOutput.writeByte(i10 & 255);
        }
    }

    public static void f(p pVar, ObjectOutput objectOutput) throws IOException {
        int i10 = pVar.f14619a;
        int i11 = i10 % 900 == 0 ? i10 / 900 : 127;
        objectOutput.writeByte(i11);
        if (i11 == 127) {
            objectOutput.writeInt(i10);
        }
    }

    private Object readResolve() {
        return this.f18484b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        byte b10 = objectInput.readByte();
        this.f18483a = b10;
        this.f18484b = b(b10, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b10 = this.f18483a;
        Serializable serializable = this.f18484b;
        objectOutput.writeByte(b10);
        if (b10 != 1) {
            if (b10 != 2) {
                if (b10 != 3) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                ((f) serializable).writeExternal(objectOutput);
                return;
            } else {
                e eVar = (e) serializable;
                sh.f fVar = eVar.f18500a;
                p pVar = eVar.f18501b;
                d(fVar.m(pVar), objectOutput);
                f(pVar, objectOutput);
                f(eVar.f18502c, objectOutput);
                return;
            }
        }
        b bVar = (b) serializable;
        long[] jArr = bVar.f18485a;
        objectOutput.writeInt(jArr.length);
        for (long j10 : jArr) {
            d(j10, objectOutput);
        }
        for (p pVar2 : bVar.f18486b) {
            f(pVar2, objectOutput);
        }
        long[] jArr2 = bVar.f18487c;
        objectOutput.writeInt(jArr2.length);
        for (long j11 : jArr2) {
            d(j11, objectOutput);
        }
        for (p pVar3 : bVar.f18489e) {
            f(pVar3, objectOutput);
        }
        f[] fVarArr = bVar.f18490f;
        objectOutput.writeByte(fVarArr.length);
        for (f fVar2 : fVarArr) {
            fVar2.writeExternal(objectOutput);
        }
    }
}
