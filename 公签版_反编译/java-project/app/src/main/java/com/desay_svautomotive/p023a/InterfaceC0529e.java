package com.desay_svautomotive.p023a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface InterfaceC0529e extends IInterface {

    public static abstract class a extends Binder implements InterfaceC0529e {

        public static class C0864a implements InterfaceC0529e {
            private IBinder f308a;

            public C0864a(IBinder iBinder) {
                this.f308a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f308a;
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0529e
            public void mo216a(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.f308a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        public a() {
            attachInterface(this, "com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack");
        }

        public static InterfaceC0529e m250a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0529e)) ? new C0864a(iBinder) : (InterfaceC0529e) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack");
                return true;
            }
            parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack");
            mo216a(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void mo216a(int i10, int i11);
}
