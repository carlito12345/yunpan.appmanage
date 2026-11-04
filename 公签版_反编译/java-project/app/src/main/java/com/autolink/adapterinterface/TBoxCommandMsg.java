package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
public class TBoxCommandMsg implements Parcelable {
    public static final Parcelable.Creator<TBoxCommandMsg> CREATOR = new Parcelable.Creator<TBoxCommandMsg>() { // from class: com.autolink.adapterinterface.TBoxCommandMsg.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TBoxCommandMsg createFromParcel(Parcel parcel) {
            return new TBoxCommandMsg(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TBoxCommandMsg[] newArray(int i10) {
            return new TBoxCommandMsg[i10];
        }
    };
    public int applicationId;
    public byte[] cmd;
    public int messageId;

    public TBoxCommandMsg() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.applicationId = parcel.readInt();
        this.messageId = parcel.readInt();
        this.cmd = parcel.createByteArray();
    }

    public String toString() {
        return "TBoxCommandMsg{applicationId=" + this.applicationId + ", messageId=" + this.messageId + ", cmd=" + Arrays.toString(this.cmd) + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.applicationId);
        parcel.writeInt(this.messageId);
        parcel.writeByteArray(this.cmd);
    }

    public TBoxCommandMsg(Parcel parcel) {
        this.applicationId = parcel.readInt();
        this.messageId = parcel.readInt();
        this.cmd = parcel.createByteArray();
    }
}
