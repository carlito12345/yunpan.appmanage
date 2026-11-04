package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import g.b;

/* loaded from: classes.dex */
public class SubNodeEnter implements Parcelable {
    public static final Parcelable.Creator<SubNodeEnter> CREATOR = new Parcelable.Creator<SubNodeEnter>() { // from class: com.autolink.adapterinterface.SubNodeEnter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubNodeEnter createFromParcel(Parcel parcel) {
            return new SubNodeEnter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SubNodeEnter[] newArray(int i10) {
            return new SubNodeEnter[i10];
        }
    };
    public int checkMethod;
    public String checkSumCode;
    public int ecuId;
    public String fileName;
    public long fileSize;
    public int model;
    public long taskId;

    public SubNodeEnter() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.model = parcel.readInt();
        this.ecuId = parcel.readInt();
        this.checkMethod = parcel.readInt();
        this.taskId = parcel.readLong();
        this.fileSize = parcel.readLong();
        this.fileName = parcel.readString();
        this.checkSumCode = parcel.readString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SubNodeEnter{model=");
        sb2.append(this.model);
        sb2.append(", ecuId=");
        sb2.append(this.ecuId);
        sb2.append(", checkMethod=");
        sb2.append(this.checkMethod);
        sb2.append(", taskId=");
        sb2.append(this.taskId);
        sb2.append(", fileSize=");
        sb2.append(this.fileSize);
        sb2.append(", fileName='");
        sb2.append(this.fileName);
        sb2.append("', checkSumCode='");
        return b.l(this.checkSumCode, "'}", sb2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.model);
        parcel.writeInt(this.ecuId);
        parcel.writeInt(this.checkMethod);
        parcel.writeLong(this.taskId);
        parcel.writeLong(this.fileSize);
        parcel.writeString(this.fileName);
        parcel.writeString(this.checkSumCode);
    }

    public SubNodeEnter(Parcel parcel) {
        this.model = parcel.readInt();
        this.ecuId = parcel.readInt();
        this.checkMethod = parcel.readInt();
        this.taskId = parcel.readLong();
        this.fileSize = parcel.readLong();
        this.fileName = parcel.readString();
        this.checkSumCode = parcel.readString();
    }
}
