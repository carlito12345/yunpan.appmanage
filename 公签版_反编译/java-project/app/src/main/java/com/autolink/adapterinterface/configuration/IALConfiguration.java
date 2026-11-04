package com.autolink.adapterinterface.configuration;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IALConfiguration extends IInterface {

    public static class Default implements IALConfiguration {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.configuration.IALConfiguration
        public void notifyUpdateTimeZone() {
        }

        @Override // com.autolink.adapterinterface.configuration.IALConfiguration
        public void updateCountryCodeForWifiAndTuner(int i10) {
        }
    }

    public static abstract class Stub extends Binder implements IALConfiguration {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.configuration.IALConfiguration";
        static final int TRANSACTION_notifyUpdateTimeZone = 2;
        static final int TRANSACTION_updateCountryCodeForWifiAndTuner = 1;

        public static class Proxy implements IALConfiguration {
            public static IALConfiguration sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.configuration.IALConfiguration
            public void notifyUpdateTimeZone() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().notifyUpdateTimeZone();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.configuration.IALConfiguration
            public void updateCountryCodeForWifiAndTuner(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateCountryCodeForWifiAndTuner(i10);
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

        public static IALConfiguration asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IALConfiguration)) ? new Proxy(iBinder) : (IALConfiguration) iInterfaceQueryLocalInterface;
        }

        public static IALConfiguration getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IALConfiguration iALConfiguration) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iALConfiguration == null) {
                return false;
            }
            Proxy.sDefaultImpl = iALConfiguration;
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
                updateCountryCodeForWifiAndTuner(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            notifyUpdateTimeZone();
            parcel2.writeNoException();
            return true;
        }
    }

    void notifyUpdateTimeZone();

    void updateCountryCodeForWifiAndTuner(int i10);
}
