package com.autolink.app.vehicleservice;

import android.os.Parcel;
import android.os.Parcelable;
import ue.d;

/* loaded from: classes.dex */
public final class AppointmentTimeBean implements Parcelable {
    public static Parcelable.Creator<AppointmentTimeBean> CREATOR = new Parcelable.Creator<AppointmentTimeBean>() { // from class: com.autolink.app.vehicleservice.AppointmentTimeBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppointmentTimeBean createFromParcel(Parcel parcel) {
            d.e(parcel, "source");
            return new AppointmentTimeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppointmentTimeBean[] newArray(int i10) {
            return new AppointmentTimeBean[i10];
        }
    };
    private int chargeMode;
    private int startHour;
    private int startMin;
    private int stopHour;
    private int stopMin;

    public AppointmentTimeBean(int i10, int i11, int i12, int i13, int i14) {
        this.startHour = i10;
        this.startMin = i11;
        this.stopHour = i12;
        this.stopMin = i13;
        this.chargeMode = i14;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getChargeMode() {
        return this.chargeMode;
    }

    public final int getStartHour() {
        return this.startHour;
    }

    public final int getStartMin() {
        return this.startMin;
    }

    public final int getStopHour() {
        return this.stopHour;
    }

    public final int getStopMin() {
        return this.stopMin;
    }

    public final void readFromParcel(Parcel parcel) {
        d.e(parcel, "dest");
        this.startHour = parcel.readInt();
        this.startMin = parcel.readInt();
        this.stopHour = parcel.readInt();
        this.stopMin = parcel.readInt();
        this.chargeMode = parcel.readInt();
    }

    public final void setChargeMode(int i10) {
        this.chargeMode = i10;
    }

    public final void setStartHour(int i10) {
        this.startHour = i10;
    }

    public final void setStartMin(int i10) {
        this.startMin = i10;
    }

    public final void setStopHour(int i10) {
        this.stopHour = i10;
    }

    public final void setStopMin(int i10) {
        this.stopMin = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        d.e(parcel, "parcel");
        parcel.writeInt(this.startHour);
        parcel.writeInt(this.startMin);
        parcel.writeInt(this.stopHour);
        parcel.writeInt(this.stopMin);
        parcel.writeInt(this.chargeMode);
    }

    public AppointmentTimeBean(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
