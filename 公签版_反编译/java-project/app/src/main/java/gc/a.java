package gc;

import a0.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import oc.p;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6126a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f6127b;

    /* renamed from: c, reason: collision with root package name */
    public Object f6128c;

    public /* synthetic */ a(int i10) {
        this.f6126a = i10;
    }

    private final boolean d(b bVar) {
        if (!this.f6127b) {
            synchronized (this) {
                try {
                    if (!this.f6127b) {
                        g gVar = (g) this.f6128c;
                        if (gVar == null) {
                            gVar = new g(1);
                            this.f6128c = gVar;
                        }
                        gVar.a(bVar);
                        return true;
                    }
                } finally {
                }
            }
        }
        bVar.c();
        return false;
    }

    private final boolean f(b bVar) {
        Object obj;
        if (this.f6127b) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f6127b) {
                    return false;
                }
                g gVar = (g) this.f6128c;
                if (gVar != null) {
                    Object[] objArr = (Object[]) gVar.f26d;
                    int i10 = gVar.f23a;
                    int iHashCode = bVar.hashCode() * (-1640531527);
                    int i11 = (iHashCode ^ (iHashCode >>> 16)) & i10;
                    Object obj2 = objArr[i11];
                    if (obj2 != null) {
                        if (obj2.equals(bVar)) {
                            gVar.d(i11, i10, objArr);
                        } else {
                            do {
                                i11 = (i11 + 1) & i10;
                                obj = objArr[i11];
                                if (obj == null) {
                                }
                            } while (!obj.equals(bVar));
                            gVar.d(i11, i10, objArr);
                        }
                        return true;
                    }
                }
                return false;
            } finally {
            }
        }
    }

    private final void g() {
        if (this.f6127b) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f6127b) {
                    return;
                }
                this.f6127b = true;
                g gVar = (g) this.f6128c;
                ArrayList arrayList = null;
                this.f6128c = null;
                if (gVar == null) {
                    return;
                }
                for (Object obj : (Object[]) gVar.f26d) {
                    if (obj instanceof b) {
                        try {
                            ((b) obj).c();
                        } catch (Throwable th2) {
                            p000if.a.K0(th2);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(th2);
                        }
                    }
                }
                if (arrayList != null) {
                    if (arrayList.size() != 1) {
                        throw new hc.b(arrayList);
                    }
                    throw pc.c.a((Throwable) arrayList.get(0));
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final boolean b(b bVar) {
        switch (this.f6126a) {
            case 0:
                return d(bVar);
            default:
                if (!this.f6127b) {
                    synchronized (this) {
                        try {
                            if (!this.f6127b) {
                                LinkedList linkedList = (LinkedList) this.f6128c;
                                if (linkedList == null) {
                                    linkedList = new LinkedList();
                                    this.f6128c = linkedList;
                                }
                                linkedList.add(bVar);
                                return true;
                            }
                        } finally {
                        }
                    }
                }
                bVar.c();
                return false;
        }
    }

    @Override // gc.b
    public final void c() {
        switch (this.f6126a) {
            case 0:
                g();
                return;
            default:
                if (this.f6127b) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (!this.f6127b) {
                            this.f6127b = true;
                            LinkedList linkedList = (LinkedList) this.f6128c;
                            ArrayList arrayList = null;
                            this.f6128c = null;
                            if (linkedList != null) {
                                Iterator it = linkedList.iterator();
                                while (it.hasNext()) {
                                    try {
                                        ((b) it.next()).c();
                                    } catch (Throwable th2) {
                                        p000if.a.K0(th2);
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(th2);
                                    }
                                }
                                if (arrayList != null) {
                                    if (arrayList.size() != 1) {
                                        throw new hc.b(arrayList);
                                    }
                                    throw pc.c.a((Throwable) arrayList.get(0));
                                }
                            }
                        }
                    } finally {
                    }
                }
                return;
        }
    }

    public final boolean e(b bVar) {
        switch (this.f6126a) {
            case 0:
                return f(bVar);
            default:
                boolean z = false;
                if (!this.f6127b) {
                    synchronized (this) {
                        try {
                            if (!this.f6127b) {
                                LinkedList linkedList = (LinkedList) this.f6128c;
                                if (linkedList != null && linkedList.remove(bVar)) {
                                    z = true;
                                }
                            }
                        } finally {
                        }
                    }
                }
                return z;
        }
    }

    public final boolean h(b bVar) {
        switch (this.f6126a) {
            case 0:
                if (e(bVar)) {
                    bVar.c();
                    break;
                }
                break;
            default:
                if (e(bVar)) {
                    ((p) bVar).c();
                    break;
                }
                break;
        }
        return true;
    }
}
