package x4;

/* loaded from: classes.dex */
public final class j extends l {

    /* renamed from: b, reason: collision with root package name */
    public static final j[] f18123b = new j[511];

    /* renamed from: c, reason: collision with root package name */
    public static final j f18124c;

    static {
        h(-1);
        f18124c = h(0);
        h(1);
        h(2);
        h(3);
        h(4);
        h(5);
    }

    public j(int i10) {
        super(i10);
    }

    public static j h(int i10) {
        j[] jVarArr = f18123b;
        int length = (Integer.MAX_VALUE & i10) % jVarArr.length;
        j jVar = jVarArr[length];
        if (jVar != null && jVar.f18126a == i10) {
            return jVar;
        }
        j jVar2 = new j(i10);
        jVarArr[length] = jVar2;
        return jVar2;
    }

    @Override // b5.h
    public final String a() {
        return Integer.toString(this.f18126a);
    }

    @Override // x4.a
    public final String d() {
        return "int";
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("int{0x");
        int i10 = this.f18126a;
        sb2.append(qf.c.f0(i10));
        sb2.append(" / ");
        sb2.append(i10);
        sb2.append('}');
        return sb2.toString();
    }
}
