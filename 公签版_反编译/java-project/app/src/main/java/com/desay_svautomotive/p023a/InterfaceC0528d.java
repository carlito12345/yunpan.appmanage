package com.desay_svautomotive.p023a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.desay_svautomotive.p023a.InterfaceC0529e;

/* loaded from: classes.dex */
public interface InterfaceC0528d extends IInterface {

    public static abstract class a extends Binder implements InterfaceC0528d {

        public static class C0863a implements InterfaceC0528d {
            private IBinder f307a;

            public C0863a(IBinder iBinder) {
                this.f307a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f307a;
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0528d
            public void mo244a(int i10, int i11, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeIntArray(iArr);
                    this.f307a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0528d
            public void mo245a(int i10, InterfaceC0529e interfaceC0529e) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(interfaceC0529e != null ? interfaceC0529e.asBinder() : null);
                    this.f307a.transact(2, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0528d
            public void mo246a(int i10, InterfaceC0529e interfaceC0529e, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(interfaceC0529e != null ? interfaceC0529e.asBinder() : null);
                    parcelObtain.writeIntArray(iArr);
                    this.f307a.transact(1, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0528d
            public void mo247a(int i10, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeIntArray(iArr);
                    this.f307a.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0528d
            public int[] mo248a(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.f307a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static InterfaceC0528d m249a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.desay_svautomotive.libsvcarinfo.ICarInfo");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0528d)) ? new C0863a(iBinder) : (InterfaceC0528d) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1598968902) {
                parcel2.writeString("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                return true;
            }
            if (i10 == 1) {
                parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                mo246a(parcel.readInt(), InterfaceC0529e.a.m250a(parcel.readStrongBinder()), parcel.createIntArray());
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                mo245a(parcel.readInt(), InterfaceC0529e.a.m250a(parcel.readStrongBinder()));
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                int[] iArrMo248a = mo248a(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeIntArray(iArrMo248a);
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarInfo");
                mo244a(parcel.readInt(), parcel.readInt(), parcel.createIntArray());
                return true;
            }
            if (i10 != 5) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarInfo");
            mo247a(parcel.readInt(), parcel.createIntArray());
            return true;
        }
    }

    void mo244a(int i10, int i11, int[] iArr);

    void mo245a(int i10, InterfaceC0529e interfaceC0529e);

    void mo246a(int i10, InterfaceC0529e interfaceC0529e, int[] iArr);

    void mo247a(int i10, int[] iArr);

    int[] mo248a(int i10, int i11);
}
