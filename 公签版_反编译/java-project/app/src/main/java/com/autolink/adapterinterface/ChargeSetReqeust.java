package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.a;

/* loaded from: classes.dex */
public class ChargeSetReqeust implements Parcelable {
    public static final Parcelable.Creator<ChargeSetReqeust> CREATOR = new Parcelable.Creator<ChargeSetReqeust>() { // from class: com.autolink.adapterinterface.ChargeSetReqeust.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChargeSetReqeust createFromParcel(Parcel parcel) {
            return new ChargeSetReqeust(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChargeSetReqeust[] newArray(int i10) {
            return new ChargeSetReqeust[i10];
        }
    };
    public int chargeSOC;
    public int chargeTaskId;
    public int chargeTimeBegin;
    public int chargeTimeBeginMin;
    public int chargeTimeEnd;
    public int chargeTimeEndMin;
    public int chargeType;
    public int repeatType;
    public int reserveType;

    public ChargeSetReqeust() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.chargeType = parcel.readInt();
        this.reserveType = parcel.readInt();
        this.chargeTaskId = parcel.readInt();
        this.chargeSOC = parcel.readInt();
        this.chargeTimeBegin = parcel.readInt();
        this.chargeTimeBeginMin = parcel.readInt();
        this.chargeTimeEnd = parcel.readInt();
        this.chargeTimeEndMin = parcel.readInt();
        this.repeatType = parcel.readInt();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ChargeSetReqeust{chargeType=");
        sb2.append(this.chargeType);
        sb2.append(", reserveType=");
        sb2.append(this.reserveType);
        sb2.append(", chargeTaskId=");
        sb2.append(this.chargeTaskId);
        sb2.append(", chargeSOC=");
        sb2.append(this.chargeSOC);
        sb2.append(", chargeTimeBegin=");
        sb2.append(this.chargeTimeBegin);
        sb2.append(", chargeTimeBeginMin=");
        sb2.append(this.chargeTimeBeginMin);
        sb2.append(", chargeTimeEnd=");
        sb2.append(this.chargeTimeEnd);
        sb2.append(", chargeTimeEndMin=");
        sb2.append(this.chargeTimeEndMin);
        sb2.append(", repeatType=");
        return a.s(sb2, this.repeatType, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.chargeType);
        parcel.writeInt(this.reserveType);
        parcel.writeInt(this.chargeTaskId);
        parcel.writeInt(this.chargeSOC);
        parcel.writeInt(this.chargeTimeBegin);
        parcel.writeInt(this.chargeTimeBeginMin);
        parcel.writeInt(this.chargeTimeEnd);
        parcel.writeInt(this.chargeTimeEndMin);
        parcel.writeInt(this.repeatType);
    }

    public ChargeSetReqeust(Parcel parcel) {
        this.chargeType = parcel.readInt();
        this.reserveType = parcel.readInt();
        this.chargeTaskId = parcel.readInt();
        this.chargeSOC = parcel.readInt();
        this.chargeTimeBegin = parcel.readInt();
        this.chargeTimeBeginMin = parcel.readInt();
        this.chargeTimeEnd = parcel.readInt();
        this.chargeTimeEndMin = parcel.readInt();
        this.repeatType = parcel.readInt();
    }
}
