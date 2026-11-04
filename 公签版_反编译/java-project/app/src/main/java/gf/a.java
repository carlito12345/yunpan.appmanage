package gf;

import java.lang.reflect.Field;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Field f6139a;

    /* renamed from: b, reason: collision with root package name */
    public final j f6140b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6141c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6142d;

    /* renamed from: e, reason: collision with root package name */
    public final i f6143e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6144f;

    public a(Field field, f fVar) throws e {
        int i10;
        this.f6139a = field;
        j jVarType = fVar.type();
        this.f6140b = jVarType;
        h hVarCls = fVar.cls();
        hVarCls = hVarCls == h.AUTOMATIC ? fVar.tagNumber() != -1 ? h.CONTEXT_SPECIFIC : h.UNIVERSAL : hVarCls;
        int iOrdinal = hVarCls.ordinal();
        if (iOrdinal != 0) {
            i10 = 1;
            if (iOrdinal != 1) {
                i10 = 2;
                if (iOrdinal != 2) {
                    i10 = 3;
                    if (iOrdinal != 3) {
                        throw new IllegalArgumentException("Unsupported tag class: " + hVarCls);
                    }
                }
            }
        } else {
            i10 = 0;
        }
        this.f6141c = i10;
        this.f6142d = fVar.tagNumber() != -1 ? fVar.tagNumber() : (jVarType == j.CHOICE || jVarType == j.ANY) ? -1 : nh.b.K(jVarType);
        i iVarTagging = fVar.tagging();
        this.f6143e = iVarTagging;
        if ((iVarTagging != i.EXPLICIT && iVarTagging != i.IMPLICIT) || fVar.tagNumber() != -1) {
            this.f6144f = fVar.optional();
        } else {
            throw new e("Tag number must be specified when tagging mode is " + iVarTagging);
        }
    }

    public final void a(a9.a aVar, Object obj) throws e {
        int i10 = aVar.f471b;
        int i11 = this.f6142d;
        int i12 = this.f6141c;
        if (i11 != -1) {
            int i13 = aVar.f472c;
            if (i10 != i12 || i13 != i11) {
                throw new b("Tag mismatch. Expected: " + nh.b.o0(i12, i11) + ", but found " + nh.b.o0(i10, i13));
            }
        } else if (i10 != i12) {
            throw new b("Tag mismatch. Expected class: " + nh.b.p0(i12) + ", but found " + nh.b.p0(i10));
        }
        if (this.f6143e == i.EXPLICIT) {
            try {
                aVar = new hf.b(((ByteBuffer) aVar.f474e).slice(), 0).f();
            } catch (hf.a e7) {
                throw new e("Failed to read contents of EXPLICIT data value", e7);
            }
        }
        c.j(obj, this.f6139a, this.f6140b, aVar);
    }
}
