package a2;

import android.util.Log;
import android.util.SparseArray;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class k1 implements wb.j {

    /* renamed from: a, reason: collision with root package name */
    public final int f206a;

    /* renamed from: b, reason: collision with root package name */
    public int f207b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f208c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f209d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f210e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f211f;

    public k1(int i10) {
        this.f208c = new g1(25);
        this.f209d = new i5.b(1);
        this.f210e = new HashMap();
        this.f211f = new HashMap();
        this.f206a = i10;
    }

    public static boolean a(k1 k1Var) {
        return Objects.equals(((r1.p) k1Var.f208c).f13523o, "audio/raw");
    }

    public synchronized void b() {
        d(0);
    }

    public void c(Class cls, int i10) {
        NavigableMap navigableMapH = h(cls);
        Integer num = (Integer) navigableMapH.get(Integer.valueOf(i10));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapH.remove(Integer.valueOf(i10));
                return;
            } else {
                navigableMapH.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i10 + ", this: " + this);
    }

    public void d(int i10) {
        String str;
        while (this.f207b > i10) {
            Object objY = ((g1) this.f208c).Y();
            a6.h.b(objY);
            i5.d dVarF = f(objY.getClass());
            this.f207b -= dVarF.b() * dVarF.a(objY);
            c(objY.getClass(), dVarF.a(objY));
            switch (dVarF.f8609a) {
                case 0:
                    str = "ByteArrayPool";
                    break;
                default:
                    str = "IntegerArrayPool";
                    break;
            }
            if (Log.isLoggable(str, 2)) {
                dVarF.a(objY);
            }
        }
    }

    public synchronized Object e(Class cls, int i10) {
        i5.f fVar;
        int i11;
        try {
            Integer num = (Integer) h(cls).ceilingKey(Integer.valueOf(i10));
            if (num == null || ((i11 = this.f207b) != 0 && this.f206a / i11 < 2 && num.intValue() > i10 * 8)) {
                i5.b bVar = (i5.b) this.f209d;
                i5.i iVarT = (i5.i) ((ArrayDeque) bVar.f1a).poll();
                if (iVarT == null) {
                    iVarT = bVar.t();
                }
                fVar = (i5.f) iVarT;
                fVar.f8615b = i10;
                fVar.f8616c = cls;
            } else {
                i5.b bVar2 = (i5.b) this.f209d;
                int iIntValue = num.intValue();
                i5.i iVarT2 = (i5.i) ((ArrayDeque) bVar2.f1a).poll();
                if (iVarT2 == null) {
                    iVarT2 = bVar2.t();
                }
                fVar = (i5.f) iVarT2;
                fVar.f8615b = iIntValue;
                fVar.f8616c = cls;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return g(fVar, cls);
    }

    public i5.d f(Class cls) {
        HashMap map = (HashMap) this.f211f;
        i5.d dVar = (i5.d) map.get(cls);
        if (dVar == null) {
            if (cls.equals(int[].class)) {
                dVar = new i5.d(1);
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
                }
                dVar = new i5.d(0);
            }
            map.put(cls, dVar);
        }
        return dVar;
    }

    public Object g(i5.f fVar, Class cls) {
        Object obj;
        i5.d dVarF = f(cls);
        Object objP = ((g1) this.f208c).P(fVar);
        if (objP != null) {
            this.f207b -= dVarF.b() * dVarF.a(objP);
            c(cls, dVarF.a(objP));
        }
        if (objP != null) {
            return objP;
        }
        int i10 = fVar.f8615b;
        switch (dVarF.f8609a) {
            case 0:
                obj = new byte[i10];
                break;
            default:
                obj = new int[i10];
                break;
        }
        return obj;
    }

    public NavigableMap h(Class cls) {
        HashMap map = (HashMap) this.f210e;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    @Override // wb.j
    public boolean hasNext() {
        int i10 = this.f207b;
        return i10 >= 0 && i10 < ((mb.g) this.f208c).f11064a.size();
    }

    public synchronized void i(Object obj) {
        Class<?> cls = obj.getClass();
        i5.d dVarF = f(cls);
        int iA = dVarF.a(obj);
        int iB = dVarF.b() * iA;
        if (iB <= this.f206a / 2) {
            i5.b bVar = (i5.b) this.f209d;
            i5.i iVarT = (i5.i) ((ArrayDeque) bVar.f1a).poll();
            if (iVarT == null) {
                iVarT = bVar.t();
            }
            i5.f fVar = (i5.f) iVarT;
            fVar.f8615b = iA;
            fVar.f8616c = cls;
            ((g1) this.f208c).W(fVar, obj);
            NavigableMap navigableMapH = h(cls);
            Integer num = (Integer) navigableMapH.get(Integer.valueOf(fVar.f8615b));
            Integer numValueOf = Integer.valueOf(fVar.f8615b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapH.put(numValueOf, Integer.valueOf(iIntValue));
            this.f207b += iB;
            d(this.f206a);
        }
    }

    public synchronized void j(int i10) {
        try {
            if (i10 >= 40) {
                b();
            } else if (i10 >= 20 || i10 == 15) {
                d(this.f206a / 2);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // wb.j
    public wb.h next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f207b;
        wb.h hVar = (wb.h) this.f209d;
        hVar.f17794a = i10;
        SparseArray sparseArray = (SparseArray) this.f210e;
        mb.h hVarO = sparseArray != null ? (mb.h) sparseArray.get(i10) : null;
        if (hVarO == null) {
            hVarO = ((mb.g) this.f208c).o(this.f207b);
        }
        hVar.f17798e = hVarO.f11076c;
        hVar.f17799f = ((wb.c) this.f211f).t();
        this.f207b++;
        return hVar;
    }

    @Override // wb.j
    public void reset() {
        this.f207b = this.f206a;
    }

    public k1(wb.c cVar, mb.g gVar, int i10, SparseArray sparseArray) {
        this.f207b = i10;
        this.f206a = i10;
        wb.h hVar = new wb.h();
        this.f209d = hVar;
        this.f208c = gVar;
        this.f211f = cVar;
        hVar.f17795b = true;
        hVar.f17796c = true;
        hVar.f17797d = 0;
        this.f210e = sparseArray;
    }

    public k1(r1.p pVar, r1.p pVar2, int i10, int i11, x xVar, s1.h hVar) {
        this.f208c = pVar;
        this.f209d = pVar2;
        this.f206a = i10;
        this.f207b = i11;
        this.f210e = xVar;
        this.f211f = hVar;
    }
}
