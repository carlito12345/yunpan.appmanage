package u4;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.Collection;

/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f15323a;

    /* renamed from: b, reason: collision with root package name */
    public final f f15324b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15325c;

    /* renamed from: d, reason: collision with root package name */
    public int f15326d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15327e;

    public a0(String str, f fVar, int i10) {
        if (fVar == null) {
            throw new NullPointerException("file == null");
        }
        if (i10 <= 0 || ((i10 - 1) & i10) != 0) {
            throw new IllegalArgumentException("invalid alignment");
        }
        this.f15323a = str;
        this.f15324b = fVar;
        this.f15325c = i10;
        this.f15326d = -1;
        this.f15327e = false;
    }

    public abstract int a(p pVar);

    public final int b() {
        int i10 = this.f15326d;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("fileOffset not set");
    }

    public abstract Collection c();

    public final void d() {
        g();
        e();
        this.f15327e = true;
    }

    public abstract void e();

    public final void f() {
        if (!this.f15327e) {
            throw new RuntimeException("not prepared");
        }
    }

    public final void g() {
        if (this.f15327e) {
            throw new RuntimeException("already prepared");
        }
    }

    public abstract int h();

    public final void i(b5.b bVar) {
        f();
        bVar.a(this.f15325c);
        int i10 = bVar.f2555c;
        int i11 = this.f15326d;
        if (i11 < 0) {
            this.f15326d = i10;
        } else if (i11 != i10) {
            throw new RuntimeException("alignment mismatch: for " + this + ", at " + i10 + ", but expected " + this.f15326d);
        }
        if (bVar.d()) {
            String str = this.f15323a;
            if (str != null) {
                bVar.b(0, SignParameters.NEW_LINE + str + ":");
            } else if (i10 != 0) {
                bVar.b(0, SignParameters.NEW_LINE);
            }
        }
        j(bVar);
    }

    public abstract void j(b5.b bVar);
}
