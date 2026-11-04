package g0;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: d, reason: collision with root package name */
    public final o f5950d;

    /* renamed from: f, reason: collision with root package name */
    public int f5952f;

    /* renamed from: g, reason: collision with root package name */
    public int f5953g;

    /* renamed from: a, reason: collision with root package name */
    public o f5947a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5948b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5949c = false;

    /* renamed from: e, reason: collision with root package name */
    public int f5951e = 1;

    /* renamed from: h, reason: collision with root package name */
    public int f5954h = 1;

    /* renamed from: i, reason: collision with root package name */
    public g f5955i = null;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5956j = false;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f5957k = new ArrayList();
    public final ArrayList l = new ArrayList();

    public f(o oVar) {
        this.f5950d = oVar;
    }

    @Override // g0.d
    public final void a(d dVar) {
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((f) it.next()).f5956j) {
                return;
            }
        }
        this.f5949c = true;
        o oVar = this.f5947a;
        if (oVar != null) {
            oVar.a(this);
        }
        if (this.f5948b) {
            this.f5950d.a(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        f fVar = null;
        int i10 = 0;
        while (it2.hasNext()) {
            f fVar2 = (f) it2.next();
            if (!(fVar2 instanceof g)) {
                i10++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i10 == 1 && fVar.f5956j) {
            g gVar = this.f5955i;
            if (gVar != null) {
                if (!gVar.f5956j) {
                    return;
                } else {
                    this.f5952f = this.f5954h * gVar.f5953g;
                }
            }
            d(fVar.f5953g + this.f5952f);
        }
        o oVar2 = this.f5947a;
        if (oVar2 != null) {
            oVar2.a(this);
        }
    }

    public final void b(o oVar) {
        this.f5957k.add(oVar);
        if (this.f5956j) {
            oVar.a(oVar);
        }
    }

    public final void c() {
        this.l.clear();
        this.f5957k.clear();
        this.f5956j = false;
        this.f5953g = 0;
        this.f5949c = false;
        this.f5948b = false;
    }

    public void d(int i10) {
        if (this.f5956j) {
            return;
        }
        this.f5956j = true;
        this.f5953g = i10;
        Iterator it = this.f5957k.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            dVar.a(dVar);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f5950d.f5971b.f5090h0);
        sb2.append(":");
        switch (this.f5951e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb2.append(str);
        sb2.append("(");
        sb2.append(this.f5956j ? Integer.valueOf(this.f5953g) : "unresolved");
        sb2.append(") <t=");
        sb2.append(this.l.size());
        sb2.append(":d=");
        sb2.append(this.f5957k.size());
        sb2.append(">");
        return sb2.toString();
    }
}
