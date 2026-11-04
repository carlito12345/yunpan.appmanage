package w4;

/* loaded from: classes.dex */
public final class b extends b5.c {

    /* renamed from: c, reason: collision with root package name */
    public final b5.e f17447c;

    /* renamed from: d, reason: collision with root package name */
    public int f17448d;

    public b(int i10) {
        super(i10);
        this.f17447c = new b5.e(i10);
        this.f17448d = -1;
    }

    public final int g() {
        b5.e eVar = this.f17447c;
        int i10 = eVar.f2568c - 1;
        while (i10 >= 0 && eVar.e(i10) < 0) {
            i10--;
        }
        int i11 = i10 + 1;
        if (i11 < 0) {
            eVar.getClass();
            throw new IllegalArgumentException("newSize < 0");
        }
        if (i11 > eVar.f2568c) {
            throw new IllegalArgumentException("newSize > size");
        }
        eVar.c();
        eVar.f2568c = i11;
        return i11;
    }

    public final a h(int i10) {
        b5.e eVar = this.f17447c;
        int iE = i10 >= eVar.f2568c ? -1 : eVar.e(i10);
        if (iE >= 0) {
            return (a) d(iE);
        }
        throw new IllegalArgumentException("no such label: ".concat(qf.c.e0(i10)));
    }
}
