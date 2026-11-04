package com.autolink.app.vehicleservice;

import android.os.Parcel;
import android.os.Parcelable;
import ue.d;

/* loaded from: classes.dex */
public final class ChargeInfoBean implements Parcelable {
    public static Parcelable.Creator<ChargeInfoBean> CREATOR = new Parcelable.Creator<ChargeInfoBean>() { // from class: com.autolink.app.vehicleservice.ChargeInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChargeInfoBean createFromParcel(Parcel parcel) {
            d.e(parcel, "source");
            return new ChargeInfoBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChargeInfoBean[] newArray(int i10) {
            return new ChargeInfoBean[i10];
        }
    };
    private float mCurrent;
    private float mPower;
    private float mVoltage;

    public ChargeInfoBean(float f10, float f11, float f12) {
        this.mCurrent = f10;
        this.mVoltage = f11;
        this.mPower = f12;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final float getMCurrent() {
        return this.mCurrent;
    }

    public final float getMPower() {
        return this.mPower;
    }

    public final float getMVoltage() {
        return this.mVoltage;
    }

    public final void readFromParcel(Parcel parcel) {
        d.e(parcel, "dest");
        this.mCurrent = parcel.readFloat();
        this.mVoltage = parcel.readFloat();
        this.mPower = parcel.readFloat();
    }

    public final void setMCurrent(float f10) {
        this.mCurrent = f10;
    }

    public final void setMPower(float f10) {
        this.mPower = f10;
    }

    public final void setMVoltage(float f10) {
        this.mVoltage = f10;
    }

    public String toString() {
        return "ChargeInfoBean(mCurrent=" + this.mCurrent + ", mVoltage=" + this.mVoltage + ", mPower=" + this.mPower + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        d.e(parcel, "parcel");
        parcel.writeFloat(this.mCurrent);
        parcel.writeFloat(this.mVoltage);
        parcel.writeFloat(this.mPower);
    }

    public ChargeInfoBean(Parcel parcel) {
        this(parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
    }
}
