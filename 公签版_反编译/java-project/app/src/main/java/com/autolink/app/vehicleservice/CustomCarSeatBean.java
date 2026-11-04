package com.autolink.app.vehicleservice;

import android.os.Parcel;
import android.os.Parcelable;
import ue.d;

/* loaded from: classes.dex */
public final class CustomCarSeatBean implements Parcelable {
    public static Parcelable.Creator<CustomCarSeatBean> CREATOR = new Parcelable.Creator<CustomCarSeatBean>() { // from class: com.autolink.app.vehicleservice.CustomCarSeatBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomCarSeatBean createFromParcel(Parcel parcel) {
            d.e(parcel, "source");
            return new CustomCarSeatBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomCarSeatBean[] newArray(int i10) {
            return new CustomCarSeatBean[i10];
        }
    };
    private int fl;
    private int fr;
    private boolean isSeatHeating;
    private int rl;
    private int rr;

    public CustomCarSeatBean(boolean z, int i10, int i11, int i12, int i13) {
        this.isSeatHeating = z;
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

    public final boolean getIsSeatHeating() {
        return this.isSeatHeating;
    }

    public final int getRl() {
        return this.rl;
    }

    public final int getRr() {
        return this.rr;
    }

    public final void readFromParcel(Parcel parcel) {
        d.e(parcel, "dest");
        this.isSeatHeating = parcel.readBoolean();
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

    public final void setSeatHeating(boolean z) {
        this.isSeatHeating = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        d.e(parcel, "parcel");
        parcel.writeBoolean(this.isSeatHeating);
        parcel.writeInt(this.fl);
        parcel.writeInt(this.fr);
        parcel.writeInt(this.rl);
        parcel.writeInt(this.rr);
    }

    public CustomCarSeatBean(Parcel parcel) {
        this(parcel.readBoolean(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
