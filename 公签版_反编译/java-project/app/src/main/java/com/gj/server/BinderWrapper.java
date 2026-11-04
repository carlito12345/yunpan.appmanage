package com.gj.server;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new Parcelable.Creator<BinderWrapper>() { // from class: com.gj.server.BinderWrapper.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinderWrapper createFromParcel(Parcel parcel) {
            return new BinderWrapper(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinderWrapper[] newArray(int i10) {
            return new BinderWrapper[i10];
        }
    };
    public IBinder binder;

    public BinderWrapper(IBinder iBinder) {
        this.binder = iBinder;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStrongBinder(this.binder);
    }

    public BinderWrapper(Parcel parcel) {
        this.binder = parcel.readStrongBinder();
    }
}
