package com.autolink.app.vehicleservice;

import android.os.Parcel;
import android.os.Parcelable;
import ue.d;

/* loaded from: classes.dex */
public final class CustomWindowBean implements Parcelable {
    public static Parcelable.Creator<CustomWindowBean> CREATOR = new Parcelable.Creator<CustomWindowBean>() { // from class: com.autolink.app.vehicleservice.CustomWindowBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomWindowBean createFromParcel(Parcel parcel) {
            d.e(parcel, "source");
            return new CustomWindowBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomWindowBean[] newArray(int i10) {
            return new CustomWindowBean[i10];
        }
    };
    private int fl;
    private int fr;
    private int rl;
    private int rr;

    public CustomWindowBean(int i10, int i11, int i12, int i13) {
        this.fl = i10;
        this.fr = i11;
        this.rl = i12;
        this.rr = i13;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getFl() {
        return this.fl;
    }

    public final int getFr() {
        return this.fr;
    }

    public final int getRl() {
        return this.rl;
    }

    public final int getRr() {
        return this.rr;
    }

    public final void readFromParcel(Parcel parcel) {
        d.e(parcel, "dest");
        this.fl = parcel.readInt();
        this.fr = parcel.readInt();
        this.rl = parcel.readInt();
        this.rr = parcel.readInt();
    }

    public final void setFl(int i10) {
        this.fl = i10;
    }

    public final void setFr(int i10) {
        this.fr = i10;
    }

    public final void setRl(int i10) {
        this.rl = i10;
    }

    public final void setRr(int i10) {
        this.rr = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        d.e(parcel, "parcel");
        parcel.writeInt(this.fl);
        parcel.writeInt(this.fr);
        parcel.writeInt(this.rl);
        parcel.writeInt(this.rr);
    }

    public CustomWindowBean(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
