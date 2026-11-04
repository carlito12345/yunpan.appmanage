package com.yunpan.appmanage.shizuku;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.util.List;
import oa.a;
import oa.b;
import oa.h;

/* loaded from: classes.dex */
public interface IGjAdbFace extends IInterface {
    public static final String DESCRIPTOR = "com.yunpan.appmanage.shizuku.IGjAdbFace";

    public static class Default implements IGjAdbFace {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public CmdResult exec(String str, long j10) {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public void exit() {
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_canRead(String str) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_canReadAndWrite(String str) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_delete(String str) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_exists(String str) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public long file_length(String str) {
            return 0L;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public List<FileParcelable> file_listFiles(String str) {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_mkdirs(String str) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean file_rename(String str, String str2) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public void forceStop(String str, int i10) {
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getGroupMaxVolume(int i10) {
            return 0;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public b getNewProcess() {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public IBinder getService(String str) {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getUid() {
            return 0;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getUserId() {
            return 0;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public int getVersion() {
            return 0;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public boolean keyCode(int i10, boolean z) {
            return false;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public ParcelFileDescriptor openFileRead(String str) {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public ParcelFileDescriptor openFileWrite(String str) {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
        public byte[] transactRemote(String str, int i10, byte[] bArr, int i11) {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IGjAdbFace {
        static final int TRANSACTION_exec = 5;
        static final int TRANSACTION_exit = 2;
        static final int TRANSACTION_file_canRead = 14;
        static final int TRANSACTION_file_canReadAndWrite = 15;
        static final int TRANSACTION_file_delete = 19;
        static final int TRANSACTION_file_exists = 13;
        static final int TRANSACTION_file_length = 16;
        static final int TRANSACTION_file_listFiles = 17;
        static final int TRANSACTION_file_mkdirs = 18;
        static final int TRANSACTION_file_rename = 20;
        static final int TRANSACTION_forceStop = 9;
        static final int TRANSACTION_getGroupMaxVolume = 21;
        static final int TRANSACTION_getNewProcess = 10;
        static final int TRANSACTION_getService = 1;
        static final int TRANSACTION_getUid = 7;
        static final int TRANSACTION_getUserId = 8;
        static final int TRANSACTION_getVersion = 6;
        static final int TRANSACTION_keyCode = 3;
        static final int TRANSACTION_openFileRead = 12;
        static final int TRANSACTION_openFileWrite = 11;
        static final int TRANSACTION_transactRemote = 4;

        public static class Proxy implements IGjAdbFace {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public CmdResult exec(String str, long j10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j10);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (CmdResult) _Parcel.readTypedObject(parcelObtain2, CmdResult.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public void exit() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean file_canRead(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean file_canReadAndWrite(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean file_delete(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean file_exists(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public long file_length(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public List<FileParcelable> file_listFiles(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(FileParcelable.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean file_mkdirs(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean file_rename(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public void forceStop(String str, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public int getGroupMaxVolume(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IGjAdbFace.DESCRIPTOR;
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public b getNewProcess() {
                b aVar;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IBinder strongBinder = parcelObtain2.readStrongBinder();
                    int i10 = h.f11686i;
                    if (strongBinder == null) {
                        aVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.yunpan.appmanage.magica.IRemoteProcess");
                        aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(strongBinder) : (b) iInterfaceQueryLocalInterface;
                    }
                    return aVar;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public IBinder getService(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public int getUid() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public int getUserId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public int getVersion() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public boolean keyCode(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public ParcelFileDescriptor openFileRead(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) _Parcel.readTypedObject(parcelObtain2, ParcelFileDescriptor.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public ParcelFileDescriptor openFileWrite(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) _Parcel.readTypedObject(parcelObtain2, ParcelFileDescriptor.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IGjAdbFace
            public byte[] transactRemote(String str, int i10, byte[] bArr, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IGjAdbFace.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IGjAdbFace.DESCRIPTOR);
        }

        public static IGjAdbFace asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IGjAdbFace.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGjAdbFace)) ? new Proxy(iBinder) : (IGjAdbFace) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IGjAdbFace.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IGjAdbFace.DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    IBinder service = getService(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(service);
                    return true;
                case 2:
                    exit();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    boolean zKeyCode = keyCode(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zKeyCode ? 1 : 0);
                    return true;
                case 4:
                    byte[] bArrTransactRemote = transactRemote(parcel.readString(), parcel.readInt(), parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(bArrTransactRemote);
                    return true;
                case 5:
                    CmdResult cmdResultExec = exec(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, cmdResultExec, 1);
                    return true;
                case 6:
                    int version = getVersion();
                    parcel2.writeNoException();
                    parcel2.writeInt(version);
                    return true;
                case 7:
                    int uid = getUid();
                    parcel2.writeNoException();
                    parcel2.writeInt(uid);
                    return true;
                case 8:
                    int userId = getUserId();
                    parcel2.writeNoException();
                    parcel2.writeInt(userId);
                    return true;
                case 9:
                    forceStop(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    b newProcess = getNewProcess();
                    parcel2.writeNoException();
                    parcel2.writeStrongInterface(newProcess);
                    return true;
                case 11:
                    ParcelFileDescriptor parcelFileDescriptorOpenFileWrite = openFileWrite(parcel.readString());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, parcelFileDescriptorOpenFileWrite, 1);
                    return true;
                case 12:
                    ParcelFileDescriptor parcelFileDescriptorOpenFileRead = openFileRead(parcel.readString());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, parcelFileDescriptorOpenFileRead, 1);
                    return true;
                case 13:
                    boolean zFile_exists = file_exists(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFile_exists ? 1 : 0);
                    return true;
                case 14:
                    boolean zFile_canRead = file_canRead(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFile_canRead ? 1 : 0);
                    return true;
                case 15:
                    boolean zFile_canReadAndWrite = file_canReadAndWrite(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFile_canReadAndWrite ? 1 : 0);
                    return true;
                case 16:
                    long jFile_length = file_length(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeLong(jFile_length);
                    return true;
                case 17:
                    List<FileParcelable> listFile_listFiles = file_listFiles(parcel.readString());
                    parcel2.writeNoException();
                    _Parcel.writeTypedList(parcel2, listFile_listFiles, 1);
                    return true;
                case 18:
                    boolean zFile_mkdirs = file_mkdirs(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFile_mkdirs ? 1 : 0);
                    return true;
                case 19:
                    boolean zFile_delete = file_delete(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFile_delete ? 1 : 0);
                    return true;
                case 20:
                    boolean zFile_rename = file_rename(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zFile_rename ? 1 : 0);
                    return true;
                case 21:
                    int groupMaxVolume = getGroupMaxVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(groupMaxVolume);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedList(Parcel parcel, List<T> list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                writeTypedObject(parcel, list.get(i11), i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t10, int i10) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
            }
        }
    }

    CmdResult exec(String str, long j10);

    void exit();

    boolean file_canRead(String str);

    boolean file_canReadAndWrite(String str);

    boolean file_delete(String str);

    boolean file_exists(String str);

    long file_length(String str);

    List<FileParcelable> file_listFiles(String str);

    boolean file_mkdirs(String str);

    boolean file_rename(String str, String str2);

    void forceStop(String str, int i10);

    int getGroupMaxVolume(int i10);

    b getNewProcess();

    IBinder getService(String str);

    int getUid();

    int getUserId();

    int getVersion();

    boolean keyCode(int i10, boolean z);

    ParcelFileDescriptor openFileRead(String str);

    ParcelFileDescriptor openFileWrite(String str);

    byte[] transactRemote(String str, int i10, byte[] bArr, int i11);
}
