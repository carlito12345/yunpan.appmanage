package com.autolink.app.vehicleservice;

import android.os.Parcel;
import android.os.Parcelable;
import ue.d;

/* loaded from: classes.dex */
public final class CarModelColorBean implements Parcelable {
    public static Parcelable.Creator<CarModelColorBean> CREATOR = new Parcelable.Creator<CarModelColorBean>() { // from class: com.autolink.app.vehicleservice.CarModelColorBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarModelColorBean createFromParcel(Parcel parcel) {
            d.e(parcel, "source");
            return new CarModelColorBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarModelColorBean[] newArray(int i10) {
            return new CarModelColorBean[i10];
        }
    };
    private int carModelColorType;
    private int rgb;

    public CarModelColorBean(int i10, int i11) {
        this.carModelColorType = i10;
        this.rgb = i11;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getCarModelColorType() {
        return this.carModelColorType;
    }

    public final int getRgb() {
        return this.rgb;
    }

    public final void readFromParcel(Parcel parcel) {
        d.e(parcel, "dest");
        this.carModelColorType = parcel.readInt();
        this.rgb = parcel.readInt();
    }

    public final void setCarModelColorType(int i10) {
        this.carModelColorType = i10;
    }

    public final void setRgb(int i10) {
        this.rgb = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        d.e(parcel, "parcel");
        parcel.writeInt(this.carModelColorType);
        parcel.writeInt(this.rgb);
    }

    public CarModelColorBean(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt());
    }
}
