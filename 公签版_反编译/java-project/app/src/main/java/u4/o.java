package u4;

/* loaded from: classes.dex */
public abstract class o extends p {

    /* renamed from: a, reason: collision with root package name */
    public int f15378a = -1;

    public final int e() {
        int i10 = this.f15378a;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("index not yet set");
    }

    public final String f() {
        return "[" + Integer.toHexString(this.f15378a) + ']';
    }

    public final void g(int i10) {
        if (this.f15378a != -1) {
            throw new RuntimeException("index already set");
        }
        this.f15378a = i10;
    }
}
