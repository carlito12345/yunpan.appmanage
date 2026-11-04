package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.autolink.adapterinterface.IOtaStateListener;
import com.autolink.adapterinterface.IPkiServiceListener;
import com.autolink.adapterinterface.IRpaServiceListener;
import com.autolink.adapterinterface.ITBoxBaseListener;
import com.autolink.adapterinterface.ITBoxRemoteListner;

/* loaded from: classes.dex */
public interface ITBoxManager extends IInterface {

    public static class Default implements ITBoxManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void changeCallStateRequest(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void chargeReserveSetRequest(int i10, ChargeSetReqeust chargeSetReqeust) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void chargeReserveStatuReportResponse(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void chargeReserveSyncResponse(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void fotaUserComfirmResponse(int i10, FotaUserComfResp fotaUserComfResp) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public byte[] getCarModelConfig() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public GeneralInfo getGeneralInfo() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getHardwareVersion() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getICCID() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getIMEI() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getIMSI() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public int getManufactureDate() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public int getNetworkType() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getPartNumber() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getSN() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public int getSignalStrength() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getSoftVersion() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getSupplierIdertifier() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public String getVinCode() {
            return null;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void inquireChargeReserveRequest(int i10) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void lightShowCtrlResponse(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void networkStateRequest(int i10, boolean z, int i11) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void otaSubNodeRefreshNowResponse(int i10, long j10, String str) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public boolean registerFotaListener(int i10, IOtaStateListener iOtaStateListener) {
            return false;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public boolean registerPkiListner(int i10, IPkiServiceListener iPkiServiceListener) {
            return false;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public boolean registerRemoteListner(int i10, ITBoxRemoteListner iTBoxRemoteListner) {
            return false;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public boolean registerRpaListner(int i10, IRpaServiceListener iRpaServiceListener) {
            return false;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public boolean registerTBoxCallback(int i10, ITBoxBaseListener iTBoxBaseListener) {
            return false;
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void reportOtaSubNodeState(int i10, OtaSubNodeState otaSubNodeState) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendCertificateStatusResp(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendCommand(int i10, TBoxCommandMsg tBoxCommandMsg) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendDownloadCertificateRltReport(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendGetCertResp(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendGetGeneralInfoRequest(int i10) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendRpaReport(int i10, int i11, byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendRpaResp(int i10, int i11, boolean z) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendSlotReport1(int i10, int i11, byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendSlotReport2(int i10, int i11, byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendSubNodeEnterFactory(int i10, SubNodeEnter subNodeEnter) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void sendSubNodeStartFactory(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void unregisterFotaListener(int i10, IOtaStateListener iOtaStateListener) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void unregisterPkiListner(int i10, IPkiServiceListener iPkiServiceListener) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void unregisterRemoteListner(int i10, ITBoxRemoteListner iTBoxRemoteListner) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void unregisterRpaListner(int i10, IRpaServiceListener iRpaServiceListener) {
        }

        @Override // com.autolink.adapterinterface.ITBoxManager
        public void unregisterTBoxCallback(int i10, ITBoxBaseListener iTBoxBaseListener) {
        }
    }

    public static abstract class Stub extends Binder implements ITBoxManager {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.ITBoxManager";
        static final int TRANSACTION_changeCallStateRequest = 21;
        static final int TRANSACTION_chargeReserveSetRequest = 16;
        static final int TRANSACTION_chargeReserveStatuReportResponse = 18;
        static final int TRANSACTION_chargeReserveSyncResponse = 17;
        static final int TRANSACTION_fotaUserComfirmResponse = 14;
        static final int TRANSACTION_getCarModelConfig = 12;
        static final int TRANSACTION_getGeneralInfo = 26;
        static final int TRANSACTION_getHardwareVersion = 6;
        static final int TRANSACTION_getICCID = 5;
        static final int TRANSACTION_getIMEI = 11;
        static final int TRANSACTION_getIMSI = 10;
        static final int TRANSACTION_getManufactureDate = 3;
        static final int TRANSACTION_getNetworkType = 22;
        static final int TRANSACTION_getPartNumber = 9;
        static final int TRANSACTION_getSN = 4;
        static final int TRANSACTION_getSignalStrength = 23;
        static final int TRANSACTION_getSoftVersion = 7;
        static final int TRANSACTION_getSupplierIdertifier = 8;
        static final int TRANSACTION_getVinCode = 2;
        static final int TRANSACTION_inquireChargeReserveRequest = 19;
        static final int TRANSACTION_lightShowCtrlResponse = 20;
        static final int TRANSACTION_networkStateRequest = 24;
        static final int TRANSACTION_otaSubNodeRefreshNowResponse = 15;
        static final int TRANSACTION_registerFotaListener = 38;
        static final int TRANSACTION_registerPkiListner = 44;
        static final int TRANSACTION_registerRemoteListner = 40;
        static final int TRANSACTION_registerRpaListner = 42;
        static final int TRANSACTION_registerTBoxCallback = 36;
        static final int TRANSACTION_reportOtaSubNodeState = 13;
        static final int TRANSACTION_sendCertificateStatusResp = 35;
        static final int TRANSACTION_sendCommand = 1;
        static final int TRANSACTION_sendDownloadCertificateRltReport = 34;
        static final int TRANSACTION_sendGetCertResp = 33;
        static final int TRANSACTION_sendGetGeneralInfoRequest = 25;
        static final int TRANSACTION_sendRpaReport = 28;
        static final int TRANSACTION_sendRpaResp = 27;
        static final int TRANSACTION_sendSlotReport1 = 29;
        static final int TRANSACTION_sendSlotReport2 = 30;
        static final int TRANSACTION_sendSubNodeEnterFactory = 31;
        static final int TRANSACTION_sendSubNodeStartFactory = 32;
        static final int TRANSACTION_unregisterFotaListener = 39;
        static final int TRANSACTION_unregisterPkiListner = 45;
        static final int TRANSACTION_unregisterRemoteListner = 41;
        static final int TRANSACTION_unregisterRpaListner = 43;
        static final int TRANSACTION_unregisterTBoxCallback = 37;

        public static class Proxy implements ITBoxManager {
            public static ITBoxManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void changeCallStateRequest(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().changeCallStateRequest(i10, i11, i12);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void chargeReserveSetRequest(int i10, ChargeSetReqeust chargeSetReqeust) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (chargeSetReqeust != null) {
                        parcelObtain.writeInt(1);
                        chargeSetReqeust.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().chargeReserveSetRequest(i10, chargeSetReqeust);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void chargeReserveStatuReportResponse(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().chargeReserveStatuReportResponse(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void chargeReserveSyncResponse(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().chargeReserveSyncResponse(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void fotaUserComfirmResponse(int i10, FotaUserComfResp fotaUserComfResp) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (fotaUserComfResp != null) {
                        parcelObtain.writeInt(1);
                        fotaUserComfResp.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fotaUserComfirmResponse(i10, fotaUserComfResp);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public byte[] getCarModelConfig() {
                byte[] bArrCreateByteArray;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        bArrCreateByteArray = parcelObtain2.createByteArray();
                    } else {
                        bArrCreateByteArray = Stub.getDefaultImpl().getCarModelConfig();
                    }
                    return bArrCreateByteArray;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public GeneralInfo getGeneralInfo() {
                GeneralInfo generalInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        generalInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? GeneralInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        generalInfoCreateFromParcel = Stub.getDefaultImpl().getGeneralInfo();
                    }
                    return generalInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getHardwareVersion() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getHardwareVersion();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getICCID() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getICCID();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getIMEI() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getIMEI();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getIMSI() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getIMSI();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public int getManufactureDate() {
                int manufactureDate;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        manufactureDate = parcelObtain2.readInt();
                    } else {
                        manufactureDate = Stub.getDefaultImpl().getManufactureDate();
                    }
                    return manufactureDate;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public int getNetworkType() {
                int networkType;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        networkType = parcelObtain2.readInt();
                    } else {
                        networkType = Stub.getDefaultImpl().getNetworkType();
                    }
                    return networkType;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getPartNumber() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getPartNumber();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getSN() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getSN();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public int getSignalStrength() {
                int signalStrength;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        signalStrength = parcelObtain2.readInt();
                    } else {
                        signalStrength = Stub.getDefaultImpl().getSignalStrength();
                    }
                    return signalStrength;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getSoftVersion() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getSoftVersion();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getSupplierIdertifier() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getSupplierIdertifier();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public String getVinCode() {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = Stub.getDefaultImpl().getVinCode();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void inquireChargeReserveRequest(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().inquireChargeReserveRequest(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void lightShowCtrlResponse(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().lightShowCtrlResponse(i10, i11, i12);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void networkStateRequest(int i10, boolean z, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().networkStateRequest(i10, z, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void otaSubNodeRefreshNowResponse(int i10, long j10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeLong(j10);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().otaSubNodeRefreshNowResponse(i10, j10, str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public boolean registerFotaListener(int i10, IOtaStateListener iOtaStateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iOtaStateListener != null ? iOtaStateListener.asBinder() : null);
                    if (!this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean zRegisterFotaListener = Stub.getDefaultImpl().registerFotaListener(i10, iOtaStateListener);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zRegisterFotaListener;
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public boolean registerPkiListner(int i10, IPkiServiceListener iPkiServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iPkiServiceListener != null ? iPkiServiceListener.asBinder() : null);
                    if (!this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean zRegisterPkiListner = Stub.getDefaultImpl().registerPkiListner(i10, iPkiServiceListener);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zRegisterPkiListner;
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public boolean registerRemoteListner(int i10, ITBoxRemoteListner iTBoxRemoteListner) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iTBoxRemoteListner != null ? iTBoxRemoteListner.asBinder() : null);
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean zRegisterRemoteListner = Stub.getDefaultImpl().registerRemoteListner(i10, iTBoxRemoteListner);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zRegisterRemoteListner;
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public boolean registerRpaListner(int i10, IRpaServiceListener iRpaServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iRpaServiceListener != null ? iRpaServiceListener.asBinder() : null);
                    if (!this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean zRegisterRpaListner = Stub.getDefaultImpl().registerRpaListner(i10, iRpaServiceListener);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zRegisterRpaListner;
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public boolean registerTBoxCallback(int i10, ITBoxBaseListener iTBoxBaseListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iTBoxBaseListener != null ? iTBoxBaseListener.asBinder() : null);
                    if (!this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean zRegisterTBoxCallback = Stub.getDefaultImpl().registerTBoxCallback(i10, iTBoxBaseListener);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zRegisterTBoxCallback;
                    }
                    parcelObtain2.readException();
                    boolean z = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z;
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void reportOtaSubNodeState(int i10, OtaSubNodeState otaSubNodeState) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (otaSubNodeState != null) {
                        parcelObtain.writeInt(1);
                        otaSubNodeState.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().reportOtaSubNodeState(i10, otaSubNodeState);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendCertificateStatusResp(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendCertificateStatusResp(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendCommand(int i10, TBoxCommandMsg tBoxCommandMsg) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (tBoxCommandMsg != null) {
                        parcelObtain.writeInt(1);
                        tBoxCommandMsg.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendCommand(i10, tBoxCommandMsg);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendDownloadCertificateRltReport(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendDownloadCertificateRltReport(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendGetCertResp(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendGetCertResp(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendGetGeneralInfoRequest(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendGetGeneralInfoRequest(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendRpaReport(int i10, int i11, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendRpaReport(i10, i11, bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendRpaResp(int i10, int i11, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendRpaResp(i10, i11, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendSlotReport1(int i10, int i11, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendSlotReport1(i10, i11, bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendSlotReport2(int i10, int i11, byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendSlotReport2(i10, i11, bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendSubNodeEnterFactory(int i10, SubNodeEnter subNodeEnter) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (subNodeEnter != null) {
                        parcelObtain.writeInt(1);
                        subNodeEnter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendSubNodeEnterFactory(i10, subNodeEnter);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void sendSubNodeStartFactory(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendSubNodeStartFactory(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void unregisterFotaListener(int i10, IOtaStateListener iOtaStateListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iOtaStateListener != null ? iOtaStateListener.asBinder() : null);
                    if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterFotaListener(i10, iOtaStateListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void unregisterPkiListner(int i10, IPkiServiceListener iPkiServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iPkiServiceListener != null ? iPkiServiceListener.asBinder() : null);
                    if (this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterPkiListner(i10, iPkiServiceListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void unregisterRemoteListner(int i10, ITBoxRemoteListner iTBoxRemoteListner) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iTBoxRemoteListner != null ? iTBoxRemoteListner.asBinder() : null);
                    if (this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterRemoteListner(i10, iTBoxRemoteListner);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void unregisterRpaListner(int i10, IRpaServiceListener iRpaServiceListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iRpaServiceListener != null ? iRpaServiceListener.asBinder() : null);
                    if (this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterRpaListner(i10, iRpaServiceListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.ITBoxManager
            public void unregisterTBoxCallback(int i10, ITBoxBaseListener iTBoxBaseListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iTBoxBaseListener != null ? iTBoxBaseListener.asBinder() : null);
                    if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterTBoxCallback(i10, iTBoxBaseListener);
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

        public static ITBoxManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITBoxManager)) ? new Proxy(iBinder) : (ITBoxManager) iInterfaceQueryLocalInterface;
        }

        public static ITBoxManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITBoxManager iTBoxManager) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTBoxManager == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTBoxManager;
            return true;
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
                    sendCommand(parcel.readInt(), parcel.readInt() != 0 ? TBoxCommandMsg.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String vinCode = getVinCode();
                    parcel2.writeNoException();
                    parcel2.writeString(vinCode);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int manufactureDate = getManufactureDate();
                    parcel2.writeNoException();
                    parcel2.writeInt(manufactureDate);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sn = getSN();
                    parcel2.writeNoException();
                    parcel2.writeString(sn);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String iccid = getICCID();
                    parcel2.writeNoException();
                    parcel2.writeString(iccid);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String hardwareVersion = getHardwareVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(hardwareVersion);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    String softVersion = getSoftVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(softVersion);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String supplierIdertifier = getSupplierIdertifier();
                    parcel2.writeNoException();
                    parcel2.writeString(supplierIdertifier);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    String partNumber = getPartNumber();
                    parcel2.writeNoException();
                    parcel2.writeString(partNumber);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String imsi = getIMSI();
                    parcel2.writeNoException();
                    parcel2.writeString(imsi);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    String imei = getIMEI();
                    parcel2.writeNoException();
                    parcel2.writeString(imei);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] carModelConfig = getCarModelConfig();
                    parcel2.writeNoException();
                    parcel2.writeByteArray(carModelConfig);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportOtaSubNodeState(parcel.readInt(), parcel.readInt() != 0 ? OtaSubNodeState.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    fotaUserComfirmResponse(parcel.readInt(), parcel.readInt() != 0 ? FotaUserComfResp.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    otaSubNodeRefreshNowResponse(parcel.readInt(), parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    chargeReserveSetRequest(parcel.readInt(), parcel.readInt() != 0 ? ChargeSetReqeust.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    chargeReserveSyncResponse(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    chargeReserveStatuReportResponse(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    inquireChargeReserveRequest(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    lightShowCtrlResponse(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    changeCallStateRequest(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int networkType = getNetworkType();
                    parcel2.writeNoException();
                    parcel2.writeInt(networkType);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int signalStrength = getSignalStrength();
                    parcel2.writeNoException();
                    parcel2.writeInt(signalStrength);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    networkStateRequest(parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendGetGeneralInfoRequest(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    GeneralInfo generalInfo = getGeneralInfo();
                    parcel2.writeNoException();
                    if (generalInfo != null) {
                        parcel2.writeInt(1);
                        generalInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendRpaResp(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendRpaReport(parcel.readInt(), parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendSlotReport1(parcel.readInt(), parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendSlotReport2(parcel.readInt(), parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendSubNodeEnterFactory(parcel.readInt(), parcel.readInt() != 0 ? SubNodeEnter.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendSubNodeStartFactory(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendGetCertResp(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendDownloadCertificateRltReport(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendCertificateStatusResp(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterTBoxCallback = registerTBoxCallback(parcel.readInt(), ITBoxBaseListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterTBoxCallback ? 1 : 0);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterTBoxCallback(parcel.readInt(), ITBoxBaseListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterFotaListener = registerFotaListener(parcel.readInt(), IOtaStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterFotaListener ? 1 : 0);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterFotaListener(parcel.readInt(), IOtaStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterRemoteListner = registerRemoteListner(parcel.readInt(), ITBoxRemoteListner.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterRemoteListner ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRemoteListner(parcel.readInt(), ITBoxRemoteListner.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterRpaListner = registerRpaListner(parcel.readInt(), IRpaServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterRpaListner ? 1 : 0);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRpaListner(parcel.readInt(), IRpaServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterPkiListner = registerPkiListner(parcel.readInt(), IPkiServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterPkiListner ? 1 : 0);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPkiListner(parcel.readInt(), IPkiServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void changeCallStateRequest(int i10, int i11, int i12);

    void chargeReserveSetRequest(int i10, ChargeSetReqeust chargeSetReqeust);

    void chargeReserveStatuReportResponse(int i10, int i11);

    void chargeReserveSyncResponse(int i10, int i11);

    void fotaUserComfirmResponse(int i10, FotaUserComfResp fotaUserComfResp);

    byte[] getCarModelConfig();

    GeneralInfo getGeneralInfo();

    String getHardwareVersion();

    String getICCID();

    String getIMEI();

    String getIMSI();

    int getManufactureDate();

    int getNetworkType();

    String getPartNumber();

    String getSN();

    int getSignalStrength();

    String getSoftVersion();

    String getSupplierIdertifier();

    String getVinCode();

    void inquireChargeReserveRequest(int i10);

    void lightShowCtrlResponse(int i10, int i11, int i12);

    void networkStateRequest(int i10, boolean z, int i11);

    void otaSubNodeRefreshNowResponse(int i10, long j10, String str);

    boolean registerFotaListener(int i10, IOtaStateListener iOtaStateListener);

    boolean registerPkiListner(int i10, IPkiServiceListener iPkiServiceListener);

    boolean registerRemoteListner(int i10, ITBoxRemoteListner iTBoxRemoteListner);

    boolean registerRpaListner(int i10, IRpaServiceListener iRpaServiceListener);

    boolean registerTBoxCallback(int i10, ITBoxBaseListener iTBoxBaseListener);

    void reportOtaSubNodeState(int i10, OtaSubNodeState otaSubNodeState);

    void sendCertificateStatusResp(int i10, int i11);

    void sendCommand(int i10, TBoxCommandMsg tBoxCommandMsg);

    void sendDownloadCertificateRltReport(int i10, int i11);

    void sendGetCertResp(int i10, boolean z);

    void sendGetGeneralInfoRequest(int i10);

    void sendRpaReport(int i10, int i11, byte[] bArr);

    void sendRpaResp(int i10, int i11, boolean z);

    void sendSlotReport1(int i10, int i11, byte[] bArr);

    void sendSlotReport2(int i10, int i11, byte[] bArr);

    void sendSubNodeEnterFactory(int i10, SubNodeEnter subNodeEnter);

    void sendSubNodeStartFactory(int i10, boolean z);

    void unregisterFotaListener(int i10, IOtaStateListener iOtaStateListener);

    void unregisterPkiListner(int i10, IPkiServiceListener iPkiServiceListener);

    void unregisterRemoteListner(int i10, ITBoxRemoteListner iTBoxRemoteListner);

    void unregisterRpaListner(int i10, IRpaServiceListener iRpaServiceListener);

    void unregisterTBoxCallback(int i10, ITBoxBaseListener iTBoxBaseListener);
}
