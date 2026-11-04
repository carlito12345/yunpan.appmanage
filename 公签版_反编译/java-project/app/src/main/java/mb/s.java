package mb;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class s extends q {
    public static final Parcelable.Creator<s> CREATOR = new r(0);

    /* renamed from: b, reason: collision with root package name */
    public int f11110b;

    /* renamed from: c, reason: collision with root package name */
    public int f11111c;

    /* renamed from: d, reason: collision with root package name */
    public int f11112d;

    /* renamed from: e, reason: collision with root package name */
    public int f11113e;

    /* renamed from: f, reason: collision with root package name */
    public final transient long f11114f = System.currentTimeMillis();

    /* renamed from: g, reason: collision with root package name */
    public Object f11115g;

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.CharSequence, java.lang.Object] */
    @Override // mb.q
    public final boolean a(q qVar) {
        if (!(qVar instanceof s)) {
            return false;
        }
        s sVar = (s) qVar;
        if (sVar.f11113e == this.f11112d && sVar.f11111c == this.f11110b) {
            return this.f11115g.length() + sVar.f11115g.length() < 10000 && Math.abs(sVar.f11114f - this.f11114f) < 8000;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.CharSequence, java.lang.Object] */
    @Override // mb.q
    public final void b(q qVar) {
        StringBuilder sb2;
        if (!a(qVar)) {
            throw new IllegalArgumentException();
        }
        s sVar = (s) qVar;
        this.f11112d = sVar.f11112d;
        this.f11110b = sVar.f11110b;
        ?? r02 = this.f11115g;
        if (r02 instanceof StringBuilder) {
            sb2 = (StringBuilder) r02;
        } else {
            StringBuilder sb3 = new StringBuilder((CharSequence) r02);
            this.f11115g = sb3;
            sb2 = sb3;
        }
        sb2.insert(0, (CharSequence) sVar.f11115g);
    }

    @Override // mb.q
    public final void c(g gVar) {
        gVar.h(this.f11110b, this.f11112d, this.f11111c, this.f11113e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.CharSequence, java.lang.Object] */
    @Override // mb.q
    public final void d(g gVar) {
        gVar.r(this.f11110b, this.f11112d, this.f11115g);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "DeleteAction{startLine=" + this.f11110b + ", endLine=" + this.f11111c + ", startColumn=" + this.f11112d + ", endColumn=" + this.f11113e + ", createTime=" + this.f11114f + ", text=" + this.f11115g + '}';
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.CharSequence, java.lang.Object] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f11110b);
        parcel.writeInt(this.f11112d);
        parcel.writeInt(this.f11111c);
        parcel.writeInt(this.f11113e);
        parcel.writeString(this.f11115g.toString());
    }
}
