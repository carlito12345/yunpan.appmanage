package sh;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectOutput;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class q extends o {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f14621c = Pattern.compile("[A-Za-z][A-Za-z0-9~/._+-]+");

    /* renamed from: a, reason: collision with root package name */
    public final String f14622a;

    /* renamed from: b, reason: collision with root package name */
    public final transient xh.h f14623b;

    public q(String str, xh.h hVar) {
        this.f14622a = str;
        this.f14623b = hVar;
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 7, this);
    }

    @Override // sh.o
    public final String m() {
        return this.f14622a;
    }

    @Override // sh.o
    public final xh.h n() {
        xh.h hVar = this.f14623b;
        return hVar != null ? hVar : xh.d.a(this.f14622a);
    }

    @Override // sh.o
    public final void o(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(7);
        objectOutput.writeUTF(this.f14622a);
    }
}
