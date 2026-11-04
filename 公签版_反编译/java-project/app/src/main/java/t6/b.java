package t6;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;
import mb.r;

/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new r(6);
    public Integer A;
    public Integer B;
    public Integer C;
    public Integer D;
    public Integer E;
    public Boolean F;

    /* renamed from: a, reason: collision with root package name */
    public final int f14794a;

    /* renamed from: b, reason: collision with root package name */
    public Integer f14795b;

    /* renamed from: c, reason: collision with root package name */
    public Integer f14796c;

    /* renamed from: d, reason: collision with root package name */
    public Integer f14797d;

    /* renamed from: e, reason: collision with root package name */
    public Integer f14798e;

    /* renamed from: f, reason: collision with root package name */
    public Integer f14799f;

    /* renamed from: g, reason: collision with root package name */
    public Integer f14800g;

    /* renamed from: h, reason: collision with root package name */
    public Integer f14801h;

    /* renamed from: i, reason: collision with root package name */
    public int f14802i;

    /* renamed from: j, reason: collision with root package name */
    public String f14803j;

    /* renamed from: k, reason: collision with root package name */
    public int f14804k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f14805m;

    /* renamed from: n, reason: collision with root package name */
    public Locale f14806n;

    /* renamed from: p, reason: collision with root package name */
    public String f14807p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f14808q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f14809s;

    /* renamed from: t, reason: collision with root package name */
    public Integer f14810t;

    /* renamed from: v, reason: collision with root package name */
    public Boolean f14811v;

    /* renamed from: w, reason: collision with root package name */
    public Integer f14812w;

    /* renamed from: x, reason: collision with root package name */
    public Integer f14813x;

    /* renamed from: y, reason: collision with root package name */
    public Integer f14814y;
    public Integer z;

    public b() {
        this.f14802i = 255;
        this.f14804k = -2;
        this.l = -2;
        this.f14805m = -2;
        this.f14811v = Boolean.TRUE;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f14794a);
        parcel.writeSerializable(this.f14795b);
        parcel.writeSerializable(this.f14796c);
        parcel.writeSerializable(this.f14797d);
        parcel.writeSerializable(this.f14798e);
        parcel.writeSerializable(this.f14799f);
        parcel.writeSerializable(this.f14800g);
        parcel.writeSerializable(this.f14801h);
        parcel.writeInt(this.f14802i);
        parcel.writeString(this.f14803j);
        parcel.writeInt(this.f14804k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.f14805m);
        String str = this.f14807p;
        parcel.writeString(str != null ? str.toString() : null);
        CharSequence charSequence = this.f14808q;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        parcel.writeInt(this.r);
        parcel.writeSerializable(this.f14810t);
        parcel.writeSerializable(this.f14812w);
        parcel.writeSerializable(this.f14813x);
        parcel.writeSerializable(this.f14814y);
        parcel.writeSerializable(this.z);
        parcel.writeSerializable(this.A);
        parcel.writeSerializable(this.B);
        parcel.writeSerializable(this.E);
        parcel.writeSerializable(this.C);
        parcel.writeSerializable(this.D);
        parcel.writeSerializable(this.f14811v);
        parcel.writeSerializable(this.f14806n);
        parcel.writeSerializable(this.F);
    }

    public b(Parcel parcel) {
        this.f14802i = 255;
        this.f14804k = -2;
        this.l = -2;
        this.f14805m = -2;
        this.f14811v = Boolean.TRUE;
        this.f14794a = parcel.readInt();
        this.f14795b = (Integer) parcel.readSerializable();
        this.f14796c = (Integer) parcel.readSerializable();
        this.f14797d = (Integer) parcel.readSerializable();
        this.f14798e = (Integer) parcel.readSerializable();
        this.f14799f = (Integer) parcel.readSerializable();
        this.f14800g = (Integer) parcel.readSerializable();
        this.f14801h = (Integer) parcel.readSerializable();
        this.f14802i = parcel.readInt();
        this.f14803j = parcel.readString();
        this.f14804k = parcel.readInt();
        this.l = parcel.readInt();
        this.f14805m = parcel.readInt();
        this.f14807p = parcel.readString();
        this.f14808q = parcel.readString();
        this.r = parcel.readInt();
        this.f14810t = (Integer) parcel.readSerializable();
        this.f14812w = (Integer) parcel.readSerializable();
        this.f14813x = (Integer) parcel.readSerializable();
        this.f14814y = (Integer) parcel.readSerializable();
        this.z = (Integer) parcel.readSerializable();
        this.A = (Integer) parcel.readSerializable();
        this.B = (Integer) parcel.readSerializable();
        this.E = (Integer) parcel.readSerializable();
        this.C = (Integer) parcel.readSerializable();
        this.D = (Integer) parcel.readSerializable();
        this.f14811v = (Boolean) parcel.readSerializable();
        this.f14806n = (Locale) parcel.readSerializable();
        this.F = (Boolean) parcel.readSerializable();
    }
}
