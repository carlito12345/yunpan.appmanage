package mb;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class t extends q {
    public static final Parcelable.Creator<t> CREATOR = new r(1);

    /* renamed from: b, reason: collision with root package name */
    public int f11116b;

    /* renamed from: c, reason: collision with root package name */
    public int f11117c;

    /* renamed from: d, reason: collision with root package name */
    public int f11118d;

    /* renamed from: e, reason: collision with root package name */
    public int f11119e;

    /* renamed from: f, reason: collision with root package name */
    public final transient long f11120f = System.currentTimeMillis();

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f11121g;

    @Override // mb.q
    public final boolean a(q qVar) {
        if (!(qVar instanceof t)) {
            return false;
        }
        t tVar = (t) qVar;
        if (tVar.f11118d == this.f11119e && tVar.f11116b == this.f11117c) {
            return this.f11121g.length() + tVar.f11121g.length() < 10000 && Math.abs(tVar.f11120f - this.f11120f) < 8000;
        }
        return false;
    }

    @Override // mb.q
    public final void b(q qVar) {
        StringBuilder sb2;
        if (!a(qVar)) {
            throw new IllegalArgumentException();
        }
        t tVar = (t) qVar;
        this.f11119e = tVar.f11119e;
        this.f11117c = tVar.f11117c;
        CharSequence charSequence = this.f11121g;
        if (charSequence instanceof StringBuilder) {
            sb2 = (StringBuilder) charSequence;
        } else {
            StringBuilder sb3 = new StringBuilder(charSequence);
            this.f11121g = sb3;
            sb2 = sb3;
        }
        sb2.append(tVar.f11121g);
    }

    @Override // mb.q
    public final void c(g gVar) {
        gVar.r(this.f11116b, this.f11118d, this.f11121g);
    }

    @Override // mb.q
    public final void d(g gVar) {
        gVar.h(this.f11116b, this.f11118d, this.f11117c, this.f11119e);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "InsertAction{startLine=" + this.f11116b + ", endLine=" + this.f11117c + ", startColumn=" + this.f11118d + ", endColumn=" + this.f11119e + ", createTime=" + this.f11120f + ", text=" + ((Object) this.f11121g) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f11116b);
        parcel.writeInt(this.f11118d);
        parcel.writeInt(this.f11117c);
        parcel.writeInt(this.f11119e);
        parcel.writeString(this.f11121g.toString());
    }
}
