package mb;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class w implements i, Parcelable {
    public static final Parcelable.Creator<w> CREATOR = new a7.b(29);

    /* renamed from: b, reason: collision with root package name */
    public boolean f11126b;

    /* renamed from: c, reason: collision with root package name */
    public int f11127c;

    /* renamed from: h, reason: collision with root package name */
    public boolean f11132h;

    /* renamed from: i, reason: collision with root package name */
    public o f11133i;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f11125a = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public boolean f11129e = false;

    /* renamed from: d, reason: collision with root package name */
    public s f11128d = null;

    /* renamed from: f, reason: collision with root package name */
    public int f11130f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11131g = false;

    @Override // mb.i
    public final void b(g gVar) {
        if (!this.f11126b || gVar.f11073j == null) {
            return;
        }
        if (!this.f11129e || this.f11128d == null) {
            j jVarM = gVar.m();
            this.f11133i = new o(jVarM.f11081c.a(), jVarM.f11082d.a());
        }
    }

    @Override // mb.i
    public final void c(g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        s sVar;
        if (this.f11131g) {
            return;
        }
        t tVar = new t();
        tVar.f11116b = i10;
        tVar.f11118d = i11;
        tVar.f11117c = i12;
        tVar.f11119e = i13;
        tVar.f11121g = charSequence;
        if (!this.f11129e || (sVar = this.f11128d) == null) {
            tVar.f11108a = this.f11133i;
            t(gVar, tVar);
        } else {
            v vVar = new v();
            vVar.f11124c = sVar;
            vVar.f11123b = tVar;
            vVar.f11108a = this.f11133i;
            t(gVar, vVar);
        }
        this.f11128d = null;
        this.f11129e = false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // mb.i
    public final void j(g gVar) {
        if (this.f11131g) {
            return;
        }
        this.f11129e = true;
    }

    @Override // mb.i
    public final void k(g gVar, int i10, int i11, int i12, int i13, StringBuilder sb2) {
        if (this.f11131g) {
            return;
        }
        s sVar = new s();
        this.f11128d = sVar;
        sVar.f11113e = i13;
        sVar.f11112d = i11;
        sVar.f11111c = i12;
        sVar.f11110b = i10;
        sVar.f11115g = sb2;
        sVar.f11108a = this.f11133i;
        if (this.f11129e) {
            return;
        }
        t(gVar, sVar);
    }

    public final void s() {
        boolean z = this.f11126b;
        ArrayList arrayList = this.f11125a;
        if (!z) {
            arrayList.clear();
            this.f11130f = 0;
        } else {
            while (this.f11130f > 1 && arrayList.size() > this.f11127c) {
                arrayList.remove(0);
                this.f11130f--;
            }
        }
    }

    public final void t(g gVar, q qVar) {
        ArrayList arrayList;
        if (this.f11126b) {
            while (true) {
                int i10 = this.f11130f;
                arrayList = this.f11125a;
                if (i10 >= arrayList.size()) {
                    break;
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
            if (gVar.f11068e > 0) {
                if (arrayList.isEmpty()) {
                    u uVar = new u();
                    uVar.e(qVar);
                    uVar.f11108a = qVar.f11108a;
                    arrayList.add(uVar);
                    this.f11130f++;
                } else {
                    q qVar2 = (q) ta.q.h(1, arrayList);
                    if (!(qVar2 instanceof u) || this.f11132h) {
                        u uVar2 = new u();
                        uVar2.e(qVar);
                        uVar2.f11108a = qVar.f11108a;
                        arrayList.add(uVar2);
                        this.f11130f++;
                    } else {
                        ((u) qVar2).e(qVar);
                    }
                }
            } else if (arrayList.isEmpty()) {
                arrayList.add(qVar);
                this.f11130f++;
            } else {
                q qVar3 = (q) ta.q.h(1, arrayList);
                if (qVar3.a(qVar)) {
                    qVar3.b(qVar);
                } else {
                    arrayList.add(qVar);
                    this.f11130f++;
                }
            }
            this.f11132h = false;
            s();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f11127c);
        parcel.writeInt(this.f11130f);
        parcel.writeInt(this.f11126b ? 1 : 0);
        ArrayList arrayList = this.f11125a;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable((q) it.next(), i10);
        }
    }
}
