package com.desay_svautomotive.libsvcarinfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack;

/* loaded from: classes.dex */
public interface ICarInfo extends IInterface {

    public static abstract class Stub extends Binder implements ICarInfo {
        private static final String DESCRIPTOR = "com.desay_svautomotive.libsvcarinfo.ICarInfo";
        static final int TRANSACTION_getItemValues = 3;
        static final int TRANSACTION_regCallBack = 1;
        static final int TRANSACTION_sendItemValues = 4;
        static final int TRANSACTION_sendValues = 5;
        static final int TRANSACTION_unRegCallBack = 2;

        public static class Proxy implements ICarInfo {
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

            @Override // com.desay_svautomotive.libsvcarinfo.ICarInfo
            public int[] getItemValues(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.ICarInfo
            public void regCallBack(int i10, ICarInfoCallBack iCarInfoCallBack, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iCarInfoCallBack != null ? iCarInfoCallBack.asBinder() : null);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.ICarInfo
            public void sendItemValues(int i10, int i11, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.ICarInfo
            public void sendValues(int i10, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarinfo.ICarInfo
            public void unRegCallBack(int i10, ICarInfoCallBack iCarInfoCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iCarInfoCallBack != null ? iCarInfoCallBack.asBinder() : null);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarInfo asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICarInfo)) ? new Proxy(iBinder) : (ICarInfo) iInterfaceQueryLocalInterface;
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
                regCallBack(parcel.readInt(), ICarInfoCallBack.Stub.asInterface(parcel.readStrongBinder()), parcel.createIntArray());
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unRegCallBack(parcel.readInt(), ICarInfoCallBack.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int[] itemValues = getItemValues(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeIntArray(itemValues);
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                sendItemValues(parcel.readInt(), parcel.readInt(), parcel.createIntArray());
                return true;
            }
            if (i10 != 5) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            sendValues(parcel.readInt(), parcel.createIntArray());
            return true;
        }
    }

    int[] getItemValues(int i10, int i11);

    void regCallBack(int i10, ICarInfoCallBack iCarInfoCallBack, int[] iArr);

    void sendItemValues(int i10, int i11, int[] iArr);

    void sendValues(int i10, int[] iArr);

    void unRegCallBack(int i10, ICarInfoCallBack iCarInfoCallBack);
}
