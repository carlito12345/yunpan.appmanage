package h1;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
import java.util.ConcurrentModificationException;
import ke.f;
import m7.e;
import ue.d;
import x0.b1;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public int f6320a;

    /* renamed from: b, reason: collision with root package name */
    public int f6321b;

    /* renamed from: c, reason: collision with root package name */
    public int f6322c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6323d;

    public c() {
        if (e.f10901b == null) {
            e.f10901b = new e(25);
        }
    }

    public int a(int i10) {
        if (i10 < this.f6322c) {
            return ((ByteBuffer) this.f6323d).getShort(this.f6321b + i10);
        }
        return 0;
    }

    public void b() {
        if (((f) this.f6323d).f10260h != this.f6322c) {
            throw new ConcurrentModificationException();
        }
    }

    public abstract Object c(View view);

    public abstract void d(View view, Object obj);

    public void e() {
        while (true) {
            int i10 = this.f6320a;
            f fVar = (f) this.f6323d;
            if (i10 >= fVar.f10258f || fVar.f10255c[i10] >= 0) {
                return;
            } else {
                this.f6320a = i10 + 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void f(View view, Object obj) {
        Object tag;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= this.f6321b) {
            d(view, obj);
            return;
        }
        if (i10 >= 19) {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= this.f6321b) {
                tag = c(view);
            } else if (i11 >= 19) {
                tag = view.getTag(this.f6320a);
                if (!((Class) this.f6323d).isInstance(tag)) {
                    tag = null;
                }
            }
            if (g(tag, obj)) {
                View.AccessibilityDelegate accessibilityDelegateD = b1.d(view);
                x0.c cVar = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof x0.a ? ((x0.a) accessibilityDelegateD).f17943a : new x0.c(accessibilityDelegateD);
                if (cVar == null) {
                    cVar = new x0.c();
                }
                b1.x(view, cVar);
                view.setTag(this.f6320a, obj);
                b1.n(this.f6322c, view);
            }
        }
    }

    public abstract boolean g(Object obj, Object obj2);

    public boolean hasNext() {
        return this.f6320a < ((f) this.f6323d).f10258f;
    }

    public void remove() {
        b();
        if (this.f6321b == -1) {
            throw new IllegalStateException("Call next() before removing element from the iterator.");
        }
        f fVar = (f) this.f6323d;
        fVar.c();
        fVar.n(this.f6321b);
        this.f6321b = -1;
        this.f6322c = fVar.f10260h;
    }

    public c(f fVar) {
        d.e(fVar, "map");
        this.f6323d = fVar;
        this.f6321b = -1;
        this.f6322c = fVar.f10260h;
        e();
    }

    public c(int i10, Class cls, int i11, int i12) {
        this.f6320a = i10;
        this.f6323d = cls;
        this.f6322c = i11;
        this.f6321b = i12;
    }
}
