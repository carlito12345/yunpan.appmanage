package com.hsae.d531mc.logservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ILogService extends IInterface {

    public static abstract class Stub extends Binder implements ILogService {
        private static final String DESCRIPTOR = "com.hsae.d531mc.logservice.ILogService";
        static final int TRANSACTION_d = 2;
        static final int TRANSACTION_e = 4;
        static final int TRANSACTION_i = 1;
        static final int TRANSACTION_w = 3;

        public static class Proxy implements ILogService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hsae.d531mc.logservice.ILogService
            public void mo0w(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.d531mc.logservice.ILogService
            public void mo1i(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.d531mc.logservice.ILogService
            public void mo2e(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.d531mc.logservice.ILogService
            public void mo3d(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILogService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILogService)) ? new Proxy(iBinder) : (ILogService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                mo1i(parcel.readString(), parcel.readString());
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                mo3d(parcel.readString(), parcel.readString());
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                mo0w(parcel.readString(), parcel.readString());
                return true;
            }
            if (i10 != 4) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            mo2e(parcel.readString(), parcel.readString());
            return true;
        }
    }

    void mo0w(String str, String str2);

    void mo1i(String str, String str2);

    void mo2e(String str, String str2);

    void mo3d(String str, String str2);
}
