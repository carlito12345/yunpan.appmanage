package mb;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class u extends q {
    public static final Parcelable.Creator<u> CREATOR = new r(2);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11122b = new ArrayList();

    @Override // mb.q
    public final boolean a(q qVar) {
        return false;
    }

    @Override // mb.q
    public final void b(q qVar) {
        throw new UnsupportedOperationException();
    }

    @Override // mb.q
    public final void c(g gVar) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f11122b;
            if (i10 >= arrayList.size()) {
                return;
            }
            ((q) arrayList.get(i10)).c(gVar);
            i10++;
        }
    }

    @Override // mb.q
    public final void d(g gVar) {
        ArrayList arrayList = this.f11122b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((q) arrayList.get(size)).d(gVar);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final void e(q qVar) {
        ArrayList arrayList = this.f11122b;
        if (arrayList.isEmpty()) {
            arrayList.add(qVar);
            return;
        }
        q qVar2 = (q) ta.q.h(1, arrayList);
        if (qVar2.a(qVar)) {
            qVar2.b(qVar);
        } else {
            arrayList.add(qVar);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ArrayList arrayList = this.f11122b;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable((q) it.next(), i10);
        }
    }
}
