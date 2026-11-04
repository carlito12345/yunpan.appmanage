package sh;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.regex.Pattern;
import org.slf4j.Marker;

/* loaded from: classes3.dex */
public final class l implements Externalizable {

    /* renamed from: a, reason: collision with root package name */
    public byte f14607a;

    /* renamed from: b, reason: collision with root package name */
    public Object f14608b;

    public l() {
    }

    public static Serializable a(byte b10, ObjectInput objectInput) throws IOException {
        q qVar;
        xh.h gVar;
        if (b10 == 64) {
            int i10 = i.f14598c;
            byte b11 = objectInput.readByte();
            byte b12 = objectInput.readByte();
            h hVarQ = h.q(b11);
            p000if.a.t0(hVarQ, "month");
            wh.a.DAY_OF_MONTH.h(b12);
            if (b12 <= hVarQ.p()) {
                return new i(hVarQ.n(), b12);
            }
            StringBuilder sbN = g.b.n("Illegal value for DayOfMonth field, value ", b12, " is not valid for month ");
            sbN.append(hVarQ.name());
            throw new a(sbN.toString());
        }
        switch (b10) {
            case 1:
                c cVar = c.f14573c;
                long j10 = objectInput.readLong();
                long j11 = objectInput.readInt();
                return c.a(p000if.a.D(1000000000, j11), p000if.a.u0(j10, p000if.a.C(j11, 1000000000L)));
            case 2:
                d dVar = d.f14576c;
                return d.n(objectInput.readLong(), objectInput.readInt());
            case 3:
                e eVar = e.f14579d;
                return e.v(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                f fVar = f.f14584c;
                e eVar2 = e.f14579d;
                return f.q(e.v(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), g.v(objectInput));
            case 5:
                return g.v(objectInput);
            case 6:
                f fVar2 = f.f14584c;
                e eVar3 = e.f14579d;
                f fVarQ = f.q(e.v(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), g.v(objectInput));
                p pVarT = p.t(objectInput);
                o oVar = (o) a(objectInput.readByte(), objectInput);
                p000if.a.t0(oVar, "zone");
                if (!(oVar instanceof p) || pVarT.equals(oVar)) {
                    return new r(fVarQ, oVar, pVarT);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                Pattern pattern = q.f14621c;
                String utf = objectInput.readUTF();
                if (utf.equals("Z") || utf.startsWith(Marker.ANY_NON_NULL_MARKER) || utf.startsWith("-")) {
                    throw new a("Invalid ID for region-based ZoneId, invalid format: ".concat(utf));
                }
                if (utf.equals("UTC") || utf.equals("GMT") || utf.equals("UT")) {
                    p pVar = p.f14616e;
                    pVar.getClass();
                    return new q(utf, new xh.g(pVar));
                }
                if (utf.startsWith("UTC+") || utf.startsWith("GMT+") || utf.startsWith("UTC-") || utf.startsWith("GMT-")) {
                    p pVarP = p.p(utf.substring(3));
                    if (pVarP.f14619a == 0) {
                        qVar = new q(utf.substring(0, 3), new xh.g(pVarP));
                    } else {
                        qVar = new q(utf.substring(0, 3) + pVarP.f14620b, new xh.g(pVarP));
                    }
                    return qVar;
                }
                if (utf.startsWith("UT+") || utf.startsWith("UT-")) {
                    p pVarP2 = p.p(utf.substring(2));
                    if (pVarP2.f14619a == 0) {
                        return new q("UT", new xh.g(pVarP2));
                    }
                    return new q("UT" + pVarP2.f14620b, new xh.g(pVarP2));
                }
                if (utf.length() < 2 || !q.f14621c.matcher(utf).matches()) {
                    throw new a("Invalid ID for region-based ZoneId, invalid format: ".concat(utf));
                }
                try {
                    gVar = xh.d.a(utf);
                } catch (xh.i unused) {
                    if (utf.equals("GMT0")) {
                        p pVar2 = p.f14616e;
                        pVar2.getClass();
                        gVar = new xh.g(pVar2);
                    } else {
                        gVar = null;
                    }
                }
                return new q(utf, gVar);
            case 8:
                return p.t(objectInput);
            default:
                switch (b10) {
                    case 66:
                        int i11 = k.f14604c;
                        return new k(g.v(objectInput), p.t(objectInput));
                    case 67:
                        int i12 = m.f14609b;
                        return m.m(objectInput.readInt());
                    case 68:
                        int i13 = n.f14611c;
                        int i14 = objectInput.readInt();
                        byte b13 = objectInput.readByte();
                        wh.a.YEAR.h(i14);
                        wh.a.MONTH_OF_YEAR.h(b13);
                        return new n(i14, b13);
                    case 69:
                        int i15 = j.f14601c;
                        e eVar4 = e.f14579d;
                        return new j(f.q(e.v(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), g.v(objectInput)), p.t(objectInput));
                    default:
                        throw new StreamCorruptedException("Unknown serialized type");
                }
        }
    }

    private Object readResolve() {
        return this.f14608b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        byte b10 = objectInput.readByte();
        this.f14607a = b10;
        this.f14608b = a(b10, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b10 = this.f14607a;
        Object obj = this.f14608b;
        objectOutput.writeByte(b10);
        if (b10 == 64) {
            i iVar = (i) obj;
            objectOutput.writeByte(iVar.f14599a);
            objectOutput.writeByte(iVar.f14600b);
            return;
        }
        switch (b10) {
            case 1:
                c cVar = (c) obj;
                objectOutput.writeLong(cVar.f14574a);
                objectOutput.writeInt(cVar.f14575b);
                return;
            case 2:
                d dVar = (d) obj;
                objectOutput.writeLong(dVar.f14577a);
                objectOutput.writeInt(dVar.f14578b);
                return;
            case 3:
                e eVar = (e) obj;
                objectOutput.writeInt(eVar.f14581a);
                objectOutput.writeByte(eVar.f14582b);
                objectOutput.writeByte(eVar.f14583c);
                return;
            case 4:
                f fVar = (f) obj;
                e eVar2 = fVar.f14586a;
                objectOutput.writeInt(eVar2.f14581a);
                objectOutput.writeByte(eVar2.f14582b);
                objectOutput.writeByte(eVar2.f14583c);
                fVar.f14587b.A(objectOutput);
                return;
            case 5:
                ((g) obj).A(objectOutput);
                return;
            case 6:
                r rVar = (r) obj;
                f fVar2 = rVar.f14624a;
                e eVar3 = fVar2.f14586a;
                objectOutput.writeInt(eVar3.f14581a);
                objectOutput.writeByte(eVar3.f14582b);
                objectOutput.writeByte(eVar3.f14583c);
                fVar2.f14587b.A(objectOutput);
                rVar.f14625b.u(objectOutput);
                rVar.f14626c.o(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((q) obj).f14622a);
                return;
            case 8:
                ((p) obj).u(objectOutput);
                return;
            default:
                switch (b10) {
                    case 66:
                        k kVar = (k) obj;
                        kVar.f14605a.A(objectOutput);
                        kVar.f14606b.u(objectOutput);
                        return;
                    case 67:
                        objectOutput.writeInt(((m) obj).f14610a);
                        return;
                    case 68:
                        n nVar = (n) obj;
                        objectOutput.writeInt(nVar.f14612a);
                        objectOutput.writeByte(nVar.f14613b);
                        return;
                    case 69:
                        j jVar = (j) obj;
                        f fVar3 = jVar.f14602a;
                        e eVar4 = fVar3.f14586a;
                        objectOutput.writeInt(eVar4.f14581a);
                        objectOutput.writeByte(eVar4.f14582b);
                        objectOutput.writeByte(eVar4.f14583c);
                        fVar3.f14587b.A(objectOutput);
                        jVar.f14603b.u(objectOutput);
                        return;
                    default:
                        throw new InvalidClassException("Unknown serialized type");
                }
        }
    }

    public l(byte b10, Object obj) {
        this.f14607a = b10;
        this.f14608b = obj;
    }
}
