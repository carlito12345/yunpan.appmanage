package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IHardKeyCallback extends IInterface {

    public static class Default implements IHardKeyCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.IHardKeyCallback
        public void onKeyEvent(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.IHardKeyCallback
        public void onKeyPressed(int i10) {
        }

        @Override // com.autolink.adapterinterface.IHardKeyCallback
        public void onKeyReleased(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IHardKeyCallback {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.IHardKeyCallback";
        static final int TRANSACTION_onKeyEvent = 3;
        static final int TRANSACTION_onKeyPressed = 1;
        static final int TRANSACTION_onKeyReleased = 2;

        public static class Proxy implements IHardKeyCallback {
            public static IHardKeyCallback sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.IHardKeyCallback
            public void onKeyEvent(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (!this.mRemote.transact(3, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onKeyEvent(i10, i11, i12);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IHardKeyCallback
            public void onKeyPressed(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onKeyPressed(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IHardKeyCallback
            public void onKeyReleased(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onKeyReleased(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IHardKeyCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHardKeyCallback)) ? new Proxy(iBinder) : (IHardKeyCallback) iInterfaceQueryLocalInterface;
        }

        public static IHardKeyCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IHardKeyCallback iHardKeyCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iHardKeyCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iHardKeyCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onKeyPressed(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onKeyReleased(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onKeyEvent(parcel.readInt(), parcel.readInt(), parcel.readInt());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onKeyEvent(int i10, int i11, int i12);

    void onKeyPressed(int i10);

    void onKeyReleased(int i10);
}
