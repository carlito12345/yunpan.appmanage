package j$.time.chrono;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
final class G implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* renamed from: a, reason: collision with root package name */
    private byte f8775a;

    /* renamed from: b, reason: collision with root package name */
    private Object f8776b;

    public G() {
    }

    G(byte b10, Object obj) {
        this.f8775a = b10;
        this.f8776b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b10 = this.f8775a;
        Object obj = this.f8776b;
        objectOutput.writeByte(b10);
        switch (b10) {
            case 1:
                objectOutput.writeUTF(((AbstractC0011a) obj).i());
                return;
            case 2:
                ((C0017g) obj).writeExternal(objectOutput);
                return;
            case 3:
                ((m) obj).writeExternal(objectOutput);
                return;
            case 4:
                z zVar = (z) obj;
                zVar.getClass();
                objectOutput.writeInt(j$.time.temporal.n.a(zVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(zVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(zVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                ((A) obj).E(objectOutput);
                return;
            case 6:
                ((s) obj).writeExternal(objectOutput);
                return;
            case 7:
                E e7 = (E) obj;
                e7.getClass();
                objectOutput.writeInt(j$.time.temporal.n.a(e7, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(e7, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(e7, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                K k10 = (K) obj;
                k10.getClass();
                objectOutput.writeInt(j$.time.temporal.n.a(k10, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(k10, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.n.a(k10, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                ((C0018h) obj).writeExternal(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objJ;
        byte b10 = objectInput.readByte();
        this.f8775a = b10;
        switch (b10) {
            case 1:
                int i10 = AbstractC0011a.f8784c;
                objJ = AbstractC0011a.j(objectInput.readUTF());
                break;
            case 2:
                objJ = ((InterfaceC0012b) objectInput.readObject()).u((j$.time.i) objectInput.readObject());
                break;
            case 3:
                objJ = ((InterfaceC0015e) objectInput.readObject()).p((j$.time.x) objectInput.readObject()).h((j$.time.w) objectInput.readObject());
                break;
            case 4:
                j$.time.e eVar = z.f8822d;
                int i11 = objectInput.readInt();
                byte b11 = objectInput.readByte();
                byte b12 = objectInput.readByte();
                x.f8820d.getClass();
                objJ = new z(j$.time.e.N(i11, b11, b12));
                break;
            case 5:
                A a10 = A.f8765d;
                objJ = A.A(objectInput.readByte());
                break;
            case 6:
                q qVar = (q) objectInput.readObject();
                int i12 = objectInput.readInt();
                byte b13 = objectInput.readByte();
                byte b14 = objectInput.readByte();
                qVar.getClass();
                objJ = s.K(qVar, i12, b13, b14);
                break;
            case 7:
                int i13 = objectInput.readInt();
                byte b15 = objectInput.readByte();
                byte b16 = objectInput.readByte();
                C.f8771d.getClass();
                objJ = new E(j$.time.e.N(i13 + 1911, b15, b16));
                break;
            case 8:
                int i14 = objectInput.readInt();
                byte b17 = objectInput.readByte();
                byte b18 = objectInput.readByte();
                I.f8778d.getClass();
                objJ = new K(j$.time.e.N(i14 - 543, b17, b18));
                break;
            case 9:
                int i15 = C0018h.f8789e;
                objJ = new C0018h(AbstractC0011a.j(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f8776b = objJ;
    }

    private Object readResolve() {
        return this.f8776b;
    }
}
