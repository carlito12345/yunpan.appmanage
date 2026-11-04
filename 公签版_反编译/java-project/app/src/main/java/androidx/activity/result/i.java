package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a7.b(11);

    /* renamed from: a, reason: collision with root package name */
    public final IntentSender f850a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f851b;

    /* renamed from: c, reason: collision with root package name */
    public final int f852c;

    /* renamed from: d, reason: collision with root package name */
    public final int f853d;

    public i(IntentSender intentSender, Intent intent, int i10, int i11) {
        ue.d.e(intentSender, "intentSender");
        this.f850a = intentSender;
        this.f851b = intent;
        this.f852c = i10;
        this.f853d = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ue.d.e(parcel, "dest");
        parcel.writeParcelable(this.f850a, i10);
        parcel.writeParcelable(this.f851b, i10);
        parcel.writeInt(this.f852c);
        parcel.writeInt(this.f853d);
    }
}
