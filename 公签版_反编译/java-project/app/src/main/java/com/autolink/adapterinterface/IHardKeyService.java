package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.KeyEvent;
import com.autolink.adapterinterface.IHardKeyCallback;

/* loaded from: classes.dex */
public interface IHardKeyService extends IInterface {

    public static class Default implements IHardKeyService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.IHardKeyService
        public boolean enableDispatch(boolean z) {
            return false;
        }

        @Override // com.autolink.adapterinterface.IHardKeyService
        public void processHardKeyEvent(KeyEvent keyEvent, int i10) {
        }

        @Override // com.autolink.adapterinterface.IHardKeyService
        public void registerHardKeyEvent(IHardKeyCallback iHardKeyCallback) {
        }

        @Override // com.autolink.adapterinterface.IHardKeyService
        public void unregisterHardKeyEvent(IHardKeyCallback iHardKeyCallback) {
        }
    }

    public static abstract class Stub extends Binder implements IHardKeyService {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.IHardKeyService";
        static final int TRANSACTION_enableDispatch = 3;
        static final int TRANSACTION_processHardKeyEvent = 4;
        static final int TRANSACTION_registerHardKeyEvent = 1;
        static final int TRANSACTION_unregisterHardKeyEvent = 2;

        public static class Proxy implements IHardKeyService {
            public static IHardKeyService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.IHardKeyService
            public boolean enableDispatch(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().enableDispatch(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.IHardKeyService
            public void processHardKeyEvent(KeyEvent keyEvent, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().processHardKeyEvent(keyEvent, i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IHardKeyService
            public void registerHardKeyEvent(IHardKeyCallback iHardKeyCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHardKeyCallback != null ? iHardKeyCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerHardKeyEvent(iHardKeyCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IHardKeyService
            public void unregisterHardKeyEvent(IHardKeyCallback iHardKeyCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iHardKeyCallback != null ? iHardKeyCallback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterHardKeyEvent(iHardKeyCallback);
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

        public static IHardKeyService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IHardKeyService)) ? new Proxy(iBinder) : (IHardKeyService) iInterfaceQueryLocalInterface;
        }

        public static IHardKeyService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IHardKeyService iHardKeyService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iHardKeyService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iHardKeyService;
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
                registerHardKeyEvent(IHardKeyCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterHardKeyEvent(IHardKeyCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zEnableDispatch = enableDispatch(parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeInt(zEnableDispatch ? 1 : 0);
                return true;
            }
            if (i10 != 4) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            processHardKeyEvent(parcel.readInt() != 0 ? (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    boolean enableDispatch(boolean z);

    void processHardKeyEvent(KeyEvent keyEvent, int i10);

    void registerHardKeyEvent(IHardKeyCallback iHardKeyCallback);

    void unregisterHardKeyEvent(IHardKeyCallback iHardKeyCallback);
}
