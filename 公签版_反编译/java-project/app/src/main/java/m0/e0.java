package m0;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f10732a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10733b;

    public e0(String str, int i10) {
        this.f10732a = str;
        this.f10733b = i10;
    }

    public final void a(i.c cVar) {
        String str = this.f10732a;
        int i10 = this.f10733b;
        i.a aVar = (i.a) cVar;
        aVar.getClass();
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(i.c.f8232c);
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i10);
            parcelObtain.writeString(null);
            aVar.f8230e.transact(2, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CancelTask[packageName:");
        sb2.append(this.f10732a);
        sb2.append(", id:");
        return android.support.v4.media.session.a.s(sb2, this.f10733b, ", tag:null, all:false]");
    }
}
