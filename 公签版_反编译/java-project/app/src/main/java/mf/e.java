package mf;

import ha.j2;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class e extends a9.a {

    /* renamed from: f, reason: collision with root package name */
    public long f11206f;

    /* renamed from: g, reason: collision with root package name */
    public long f11207g;

    /* renamed from: h, reason: collision with root package name */
    public j2[] f11208h;

    public e(a9.a aVar) {
        super(6, (char) 0);
        this.f471b = aVar.f471b;
        this.f472c = aVar.f472c;
        this.f473d = (String) aVar.f473d;
    }

    @Override // a9.a
    public final String s(h hVar, Locale locale) {
        j2[] j2VarArr = this.f11208h;
        if (j2VarArr.length > 0) {
            j2VarArr[0].getClass();
        }
        return null;
    }

    @Override // a9.a
    public final String toString() {
        return "ResourceMapEntry{parent=" + this.f11206f + ", count=" + this.f11207g + ", resourceTableMaps=" + Arrays.toString(this.f11208h) + '}';
    }
}
