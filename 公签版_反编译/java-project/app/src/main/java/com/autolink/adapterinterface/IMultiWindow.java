package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.autolink.adapterinterface.IMultiWindowCallback;

/* loaded from: classes.dex */
public interface IMultiWindow extends IInterface {

    public static class Default implements IMultiWindow {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.IMultiWindow
        public boolean isNaviBarVisable() {
            return false;
        }

        @Override // com.autolink.adapterinterface.IMultiWindow
        public void registerCallback(IMultiWindowCallback iMultiWindowCallback) {
        }

        @Override // com.autolink.adapterinterface.IMultiWindow
        public void unregisterCallback(IMultiWindowCallback iMultiWindowCallback) {
        }
    }

    public static abstract class Stub extends Binder implements IMultiWindow {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.IMultiWindow";
        static final int TRANSACTION_isNaviBarVisable = 3;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_unregisterCallback = 2;

        public static class Proxy implements IMultiWindow {
            public static IMultiWindow sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.IMultiWindow
            public boolean isNaviBarVisable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isNaviBarVisable();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IMultiWindow
            public void registerCallback(IMultiWindowCallback iMultiWindowCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMultiWindowCallback != null ? iMultiWindowCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCallback(iMultiWindowCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IMultiWindow
            public void unregisterCallback(IMultiWindowCallback iMultiWindowCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMultiWindowCallback != null ? iMultiWindowCallback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCallback(iMultiWindowCallback);
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

        public static IMultiWindow asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMultiWindow)) ? new Proxy(iBinder) : (IMultiWindow) iInterfaceQueryLocalInterface;
        }

        public static IMultiWindow getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMultiWindow iMultiWindow) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMultiWindow == null) {
                return false;
            }
            Proxy.sDefaultImpl = iMultiWindow;
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
                registerCallback(IMultiWindowCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterCallback(IMultiWindowCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zIsNaviBarVisable = isNaviBarVisable();
            parcel2.writeNoException();
            parcel2.writeInt(zIsNaviBarVisable ? 1 : 0);
            return true;
        }
    }

    boolean isNaviBarVisable();

    void registerCallback(IMultiWindowCallback iMultiWindowCallback);

    void unregisterCallback(IMultiWindowCallback iMultiWindowCallback);
}
