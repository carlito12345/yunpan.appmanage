package com.yunpan.appmanage.shizuku;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class FileParcelable implements Parcelable {
    public static final Parcelable.Creator<FileParcelable> CREATOR = new Parcelable.Creator<FileParcelable>() { // from class: com.yunpan.appmanage.shizuku.FileParcelable.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileParcelable createFromParcel(Parcel parcel) {
            return new FileParcelable(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileParcelable[] newArray(int i10) {
            return new FileParcelable[i10];
        }
    };
    public boolean isDir;
    public long lastModified;
    public long length;
    public String path;

    public FileParcelable(String str, long j10, boolean z, long j11) {
        this.path = str;
        this.length = j10;
        this.isDir = z;
        this.lastModified = j11;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.path);
        parcel.writeLong(this.length);
        parcel.writeByte(this.isDir ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.lastModified);
    }

    public FileParcelable(Parcel parcel) {
        this.path = parcel.readString();
        this.length = parcel.readLong();
        this.isDir = parcel.readByte() != 0;
        this.lastModified = parcel.readLong();
    }
}
