package com.autolink.app.vehicleservice;

import android.os.Parcel;
import android.os.Parcelable;
import g.b;
import ue.d;

/* loaded from: classes.dex */
public final class VehicleLicenseBean implements Parcelable {
    public static Parcelable.Creator<VehicleLicenseBean> CREATOR = new Parcelable.Creator<VehicleLicenseBean>() { // from class: com.autolink.app.vehicleservice.VehicleLicenseBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VehicleLicenseBean createFromParcel(Parcel parcel) {
            d.e(parcel, "source");
            return new VehicleLicenseBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VehicleLicenseBean[] newArray(int i10) {
            return new VehicleLicenseBean[i10];
        }
    };
    private String AVM_LPN_1;
    private String AVM_LPN_2;
    private String AVM_LPN_3;
    private String AVM_LPN_4;
    private String AVM_LPN_5;
    private String AVM_LPN_6;
    private String AVM_LPN_7;
    private String AVM_LPN_8;

    public VehicleLicenseBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        d.e(str, "AVM_LPN_1");
        d.e(str2, "AVM_LPN_2");
        d.e(str3, "AVM_LPN_3");
        d.e(str4, "AVM_LPN_4");
        d.e(str5, "AVM_LPN_5");
        d.e(str6, "AVM_LPN_6");
        d.e(str7, "AVM_LPN_7");
        d.e(str8, "AVM_LPN_8");
        this.AVM_LPN_1 = str;
        this.AVM_LPN_2 = str2;
        this.AVM_LPN_3 = str3;
        this.AVM_LPN_4 = str4;
        this.AVM_LPN_5 = str5;
        this.AVM_LPN_6 = str6;
        this.AVM_LPN_7 = str7;
        this.AVM_LPN_8 = str8;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getAVM_LPN_1() {
        return this.AVM_LPN_1;
    }

    public final String getAVM_LPN_2() {
        return this.AVM_LPN_2;
    }

    public final String getAVM_LPN_3() {
        return this.AVM_LPN_3;
    }

    public final String getAVM_LPN_4() {
        return this.AVM_LPN_4;
    }

    public final String getAVM_LPN_5() {
        return this.AVM_LPN_5;
    }

    public final String getAVM_LPN_6() {
        return this.AVM_LPN_6;
    }

    public final String getAVM_LPN_7() {
        return this.AVM_LPN_7;
    }

    public final String getAVM_LPN_8() {
        return this.AVM_LPN_8;
    }

    public final void readFromParcel(Parcel parcel) {
        d.e(parcel, "dest");
        String string = parcel.readString();
        d.d(string, "dest.readString()");
        this.AVM_LPN_1 = string;
        String string2 = parcel.readString();
        d.d(string2, "dest.readString()");
        this.AVM_LPN_2 = string2;
        String string3 = parcel.readString();
        d.d(string3, "dest.readString()");
        this.AVM_LPN_3 = string3;
        String string4 = parcel.readString();
        d.d(string4, "dest.readString()");
        this.AVM_LPN_4 = string4;
        String string5 = parcel.readString();
        d.d(string5, "dest.readString()");
        this.AVM_LPN_5 = string5;
        String string6 = parcel.readString();
        d.d(string6, "dest.readString()");
        this.AVM_LPN_6 = string6;
        String string7 = parcel.readString();
        d.d(string7, "dest.readString()");
        this.AVM_LPN_7 = string7;
        String string8 = parcel.readString();
        d.d(string8, "dest.readString()");
        this.AVM_LPN_8 = string8;
    }

    public final void setAVM_LPN_1(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_1 = str;
    }

    public final void setAVM_LPN_2(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_2 = str;
    }

    public final void setAVM_LPN_3(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_3 = str;
    }

    public final void setAVM_LPN_4(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_4 = str;
    }

    public final void setAVM_LPN_5(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_5 = str;
    }

    public final void setAVM_LPN_6(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_6 = str;
    }

    public final void setAVM_LPN_7(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_7 = str;
    }

    public final void setAVM_LPN_8(String str) {
        d.e(str, "<set-?>");
        this.AVM_LPN_8 = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("VehicleLicenseBean(AVM_LPN_1='");
        sb2.append(this.AVM_LPN_1);
        sb2.append("', AVM_LPN_2='");
        sb2.append(this.AVM_LPN_2);
        sb2.append("', AVM_LPN_3='");
        sb2.append(this.AVM_LPN_3);
        sb2.append("', AVM_LPN_4='");
        sb2.append(this.AVM_LPN_4);
        sb2.append("', AVM_LPN_5='");
        sb2.append(this.AVM_LPN_5);
        sb2.append("', AVM_LPN_6='");
        sb2.append(this.AVM_LPN_6);
        sb2.append("', AVM_LPN_7='");
        sb2.append(this.AVM_LPN_7);
        sb2.append("', AVM_LPN_8='");
        return b.l(this.AVM_LPN_8, "')", sb2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        d.e(parcel, "parcel");
        parcel.writeString(this.AVM_LPN_1);
        parcel.writeString(this.AVM_LPN_2);
        parcel.writeString(this.AVM_LPN_3);
        parcel.writeString(this.AVM_LPN_4);
        parcel.writeString(this.AVM_LPN_5);
        parcel.writeString(this.AVM_LPN_6);
        parcel.writeString(this.AVM_LPN_7);
        parcel.writeString(this.AVM_LPN_8);
    }

    public VehicleLicenseBean(Parcel parcel) {
        d.e(parcel, "parcel");
        String string = parcel.readString();
        d.d(string, "parcel.readString()");
        String string2 = parcel.readString();
        d.d(string2, "parcel.readString()");
        String string3 = parcel.readString();
        d.d(string3, "parcel.readString()");
        String string4 = parcel.readString();
        d.d(string4, "parcel.readString()");
        String string5 = parcel.readString();
        d.d(string5, "parcel.readString()");
        String string6 = parcel.readString();
        d.d(string6, "parcel.readString()");
        String string7 = parcel.readString();
        d.d(string7, "parcel.readString()");
        String string8 = parcel.readString();
        d.d(string8, "parcel.readString()");
        this.AVM_LPN_1 = string;
        this.AVM_LPN_2 = string2;
        this.AVM_LPN_3 = string3;
        this.AVM_LPN_4 = string4;
        this.AVM_LPN_5 = string5;
        this.AVM_LPN_6 = string6;
        this.AVM_LPN_7 = string7;
        this.AVM_LPN_8 = string8;
    }
}
