package u7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class k0 extends o1 {

    /* renamed from: a, reason: collision with root package name */
    public int f15487a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15488b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15489c;

    /* renamed from: d, reason: collision with root package name */
    public final Iterator f15490d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f15491e;

    public k0() {
        this.f15487a = 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        Object next;
        a9.o.t(this.f15487a != 4);
        int iC = d0.f.c(this.f15487a);
        if (iC == 0) {
            return true;
        }
        if (iC == 2) {
            return false;
        }
        this.f15487a = 4;
        switch (this.f15489c) {
            case 0:
                do {
                    Iterator it = this.f15490d;
                    if (!it.hasNext()) {
                        this.f15487a = 3;
                        next = null;
                        break;
                    } else {
                        next = it.next();
                    }
                } while (!((t7.e) this.f15491e).apply(next));
            default:
                do {
                    Iterator it2 = this.f15490d;
                    if (!it2.hasNext()) {
                        this.f15487a = 3;
                        next = null;
                        break;
                    } else {
                        next = it2.next();
                    }
                } while (!((i1) this.f15491e).f15480b.contains(next));
        }
        this.f15488b = next;
        if (this.f15487a == 3) {
            return false;
        }
        this.f15487a = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f15487a = 2;
        Object obj = this.f15488b;
        this.f15488b = null;
        return obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k0(Iterator it, t7.e eVar) {
        this();
        this.f15489c = 0;
        this.f15490d = it;
        this.f15491e = eVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k0(i1 i1Var) {
        this();
        this.f15489c = 1;
        this.f15491e = i1Var;
        this.f15490d = i1Var.f15479a.iterator();
    }
}
