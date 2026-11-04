package com.desay_svautomotive.libsvcarmodel;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.MotionEvent;
import android.view.Surface;
import com.desay_svautomotive.libsvcarmodel.ICarModelCallBack;

/* loaded from: classes.dex */
public interface ICarModel extends IInterface {

    public static abstract class Stub extends Binder implements ICarModel {
        private static final String DESCRIPTOR = "com.desay_svautomotive.libsvcarmodel.ICarModel";
        static final int TRANSACTION_getSurfaceIsCreate = 9;
        static final int TRANSACTION_onSurfaceChanged = 2;
        static final int TRANSACTION_onSurfaceCreated = 1;
        static final int TRANSACTION_onSurfaceDestroyed = 3;
        static final int TRANSACTION_onTouchEvent = 4;
        static final int TRANSACTION_regCallBack = 10;
        static final int TRANSACTION_setDataBool = 8;
        static final int TRANSACTION_setDataInt = 5;
        static final int TRANSACTION_setDataReal = 6;
        static final int TRANSACTION_setDataString = 7;
        static final int TRANSACTION_unRegCallBack = 11;

        public static class Proxy implements ICarModel {
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

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public boolean getSurfaceIsCreate() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void onSurfaceChanged(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void onSurfaceCreated(Surface surface) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void onSurfaceDestroyed() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void onTouchEvent(MotionEvent motionEvent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (motionEvent != null) {
                        parcelObtain.writeInt(1);
                        motionEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void regCallBack(ICarModelCallBack iCarModelCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarModelCallBack != null ? iCarModelCallBack.asBinder() : null);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void setDataBool(String str, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void setDataInt(String str, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void setDataReal(String str, double d10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeDouble(d10);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void setDataString(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.libsvcarmodel.ICarModel
            public void unRegCallBack(ICarModelCallBack iCarModelCallBack) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iCarModelCallBack != null ? iCarModelCallBack.asBinder() : null);
                    this.mRemote.transact(11, parcelObtain, null, 1);
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

        public static ICarModel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICarModel)) ? new Proxy(iBinder) : (ICarModel) iInterfaceQueryLocalInterface;
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
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSurfaceCreated(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSurfaceChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSurfaceDestroyed();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTouchEvent(parcel.readInt() != 0 ? (MotionEvent) MotionEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataInt(parcel.readString(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataReal(parcel.readString(), parcel.readDouble());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataString(parcel.readString(), parcel.readString());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataBool(parcel.readString(), parcel.readInt() != 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean surfaceIsCreate = getSurfaceIsCreate();
                    parcel2.writeNoException();
                    parcel2.writeInt(surfaceIsCreate ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    regCallBack(ICarModelCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegCallBack(ICarModelCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    boolean getSurfaceIsCreate();

    void onSurfaceChanged(int i10, int i11);

    void onSurfaceCreated(Surface surface);

    void onSurfaceDestroyed();

    void onTouchEvent(MotionEvent motionEvent);

    void regCallBack(ICarModelCallBack iCarModelCallBack);

    void setDataBool(String str, boolean z);

    void setDataInt(String str, int i10);

    void setDataReal(String str, double d10);

    void setDataString(String str, String str2);

    void unRegCallBack(ICarModelCallBack iCarModelCallBack);
}
