package com.desay_svautomotive.libsvcarinfo;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.SparseArray;
import com.desay_svautomotive.libsvcarinfo.ICarLanCallBack;
import com.desay_svautomotive.libsvcarinfo.INetComm;
import com.desay_svautomotive.libsvcarinfo.INetCommCallBack;
import com.desay_svautomotive.libsvcarinfo.MultiTaskTimer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class NetCommProxy {
    private static final String AIDL_BINDSERVICE_PACKAGENAME = "com.desay_svautomotive.svcarinfo";
    private static final String AIDL_BINDSERVICE_SERVICENAME = "com.desay_svautomotive.svcarinfo.net.NetCommService";
    private static final int MSG_CARLAN_MSG_RECEIVE = 3;
    private static final int MSG_NET_CONNECT_CHANGED = 1;
    private static final int MSG_NET_MSG_RECEIVE = 2;
    private static final String TAG = "NetCommProxy";
    private static final int TIMER_ID_REBIND_SERVICE = 0;
    private static final int TIMER_TIME_REBIND_SERVICE = 5000;
    private static final int UPDATE_COUNTER_VALUE = 0;
    private static volatile NetCommProxy mInstance;
    private List<IServiceConnectListener> mConnectListeners;
    private MyHandler mHandler;
    private List<INetMsgListener> mNetMsgListeners;
    private Context mContext = null;
    private INetComm mAidl = null;
    private MultiTaskTimer mTimer = null;
    private boolean mIsServiceConnnected = false;
    private List<ICarLanListener> mCarLanListeners = new ArrayList();
    private INetCommCallBack mRemoteNetMsgCallBack = null;
    private ICarLanCallBack mRemoteCarLanCallBack = null;
    private SparseArray<Integer> mListenIDs = new SparseArray<>();
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.desay_svautomotive.libsvcarinfo.NetCommProxy.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (NetCommProxy.this.mTimer != null && NetCommProxy.this.mTimer.isTaskExist(0)) {
                NetCommProxy.this.mTimer.cancelTimeTask(0);
            }
            NetCommProxy.this.mAidl = INetComm.Stub.asInterface(iBinder);
            NetCommProxy.this.mIsServiceConnnected = true;
            synchronized (NetCommProxy.this.mConnectListeners) {
                for (int i10 = 0; i10 < NetCommProxy.this.mConnectListeners.size(); i10++) {
                    try {
                        ((IServiceConnectListener) NetCommProxy.this.mConnectListeners.get(i10)).onServiceConnectedChanged(1);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            NetCommProxy.this.regRemoteNetMsgCallBack();
            NetCommProxy.this.regRemoteCarLanCallBack();
            for (int i11 = 0; i11 < 3; i11++) {
                if (NetCommProxy.this.isNetMsgConnected(i11)) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    messageObtain.arg1 = i11;
                    messageObtain.arg2 = 1;
                    NetCommProxy.this.mHandler.sendMessage(messageObtain);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            NetCommProxy.this.mIsServiceConnnected = false;
            NetCommProxy.this.mAidl = null;
            synchronized (NetCommProxy.this.mConnectListeners) {
                for (int i10 = 0; i10 < NetCommProxy.this.mConnectListeners.size(); i10++) {
                    try {
                        ((IServiceConnectListener) NetCommProxy.this.mConnectListeners.get(i10)).onServiceConnectedChanged(0);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (NetCommProxy.this.mTimer != null) {
                NetCommProxy.this.mTimer.setTimeTask(0, 5000);
            }
        }
    };
    private MultiTaskTimer.ITimerTaskHandler timerTaskHandler = new MultiTaskTimer.ITimerTaskHandler() { // from class: com.desay_svautomotive.libsvcarinfo.NetCommProxy.2
        @Override // com.desay_svautomotive.libsvcarinfo.MultiTaskTimer.ITimerTaskHandler
        public void onTimerTaskHandle(int i10) {
            if (i10 != 0) {
                return;
            }
            if (NetCommProxy.this.mTimer != null && NetCommProxy.this.mTimer.isTaskExist(0)) {
                NetCommProxy.this.mTimer.cancelTimeTask(0);
            }
            NetCommProxy.this.bindService();
        }
    };

    public interface ICarLanListener {
        void onReceiveCarLanMsg(int i10, int i11, String str);
    }

    public interface INetMsgListener {
        void onConnectChanged(int i10, boolean z);

        void onReceiveMsg(int i10, int i11);
    }

    public class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            int i11 = 0;
            if (i10 == 2) {
                synchronized (NetCommProxy.this.mNetMsgListeners) {
                    while (i11 < NetCommProxy.this.mNetMsgListeners.size()) {
                        try {
                            ((INetMsgListener) NetCommProxy.this.mNetMsgListeners.get(i11)).onReceiveMsg(message.arg1, message.arg2);
                            i11++;
                        } finally {
                        }
                    }
                }
            } else if (i10 == 1) {
                synchronized (NetCommProxy.this.mNetMsgListeners) {
                    for (int i12 = 0; i12 < NetCommProxy.this.mNetMsgListeners.size(); i12++) {
                        try {
                            ((INetMsgListener) NetCommProxy.this.mNetMsgListeners.get(i12)).onConnectChanged(message.arg1, message.arg2 == 1);
                        } finally {
                        }
                    }
                }
            } else if (i10 == 3) {
                synchronized (NetCommProxy.this.mCarLanListeners) {
                    while (i11 < NetCommProxy.this.mCarLanListeners.size()) {
                        try {
                            ((ICarLanListener) NetCommProxy.this.mCarLanListeners.get(i11)).onReceiveCarLanMsg(message.arg1, message.arg2, (String) message.obj);
                            i11++;
                        } finally {
                        }
                    }
                }
            }
            super.handleMessage(message);
        }
    }

    public class RemoteCarLanCallBack extends ICarLanCallBack.Stub {
        public /* synthetic */ RemoteCarLanCallBack(NetCommProxy netCommProxy, int i10) {
            this();
        }

        @Override // com.desay_svautomotive.libsvcarinfo.ICarLanCallBack
        public void onReceiveCarLanMsg(int i10, int i11, String str) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            messageObtain.arg1 = i10;
            messageObtain.arg2 = i11;
            messageObtain.obj = str;
            NetCommProxy.this.mHandler.sendMessage(messageObtain);
        }

        private RemoteCarLanCallBack() {
        }
    }

    public class RemoteNetMsgCallBack extends INetCommCallBack.Stub {
        public /* synthetic */ RemoteNetMsgCallBack(NetCommProxy netCommProxy, int i10) {
            this();
        }

        @Override // com.desay_svautomotive.libsvcarinfo.INetCommCallBack
        public void onConnectChanged(int i10, boolean z) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.arg1 = i10;
            messageObtain.arg2 = z ? 1 : 0;
            NetCommProxy.this.mHandler.sendMessage(messageObtain);
        }

        @Override // com.desay_svautomotive.libsvcarinfo.INetCommCallBack
        public void onReceiveNetMsg(int i10, int i11) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = i10;
            messageObtain.arg2 = i11;
            NetCommProxy.this.mHandler.sendMessage(messageObtain);
        }

        private RemoteNetMsgCallBack() {
        }
    }

    public static NetCommProxy getInstance() {
        if (mInstance == null) {
            synchronized (NetCommProxy.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new NetCommProxy();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    private void regRemoteCallBack() {
        this.mNetMsgListeners.size();
    }

    private void unBindService() {
        Context context = this.mContext;
        if (context != null) {
            context.unbindService(this.serviceConnection);
        }
    }

    public void bindService() {
        MultiTaskTimer multiTaskTimer;
        MultiTaskTimer multiTaskTimer2;
        try {
            try {
                Intent intent = new Intent();
                intent.setClassName(AIDL_BINDSERVICE_PACKAGENAME, AIDL_BINDSERVICE_SERVICENAME);
                this.mContext.bindService(intent, this.serviceConnection, 1);
            } catch (Exception e7) {
                e7.toString();
            }
            if (this.mAidl != null || (multiTaskTimer2 = this.mTimer) == null) {
                return;
            }
            multiTaskTimer2.setTimeTask(0, 5000);
        } catch (Throwable th2) {
            if (this.mAidl == null && (multiTaskTimer = this.mTimer) != null) {
                multiTaskTimer.setTimeTask(0, 5000);
            }
            throw th2;
        }
    }

    public String getCarLanMsg(int i10, int i11) {
        INetComm iNetComm = this.mAidl;
        if (iNetComm == null) {
            return "";
        }
        try {
            return iNetComm.getCarLanMsg(i10, i11);
        } catch (RemoteException unused) {
            return "";
        }
    }

    public byte[] getNetMsgBytes(int i10) {
        INetComm iNetComm = this.mAidl;
        if (iNetComm == null) {
            return null;
        }
        try {
            return iNetComm.getNetMsg(i10);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getNetMsgString(int i10) {
        byte[] netMsgBytes = getNetMsgBytes(i10);
        if (netMsgBytes == null) {
            return "";
        }
        try {
            return new String(netMsgBytes);
        } catch (Exception unused) {
            return "";
        }
    }

    public void init(Context context) {
        if (this.mContext == null) {
            this.mContext = context;
            this.mConnectListeners = new CopyOnWriteArrayList();
            this.mNetMsgListeners = new CopyOnWriteArrayList();
            this.mHandler = new MyHandler(Looper.getMainLooper());
            this.mListenIDs = new SparseArray<>();
            this.mTimer = new MultiTaskTimer(this.timerTaskHandler);
            bindService();
        }
    }

    public boolean isNetMsgConnected(int i10) {
        INetComm iNetComm = this.mAidl;
        if (iNetComm == null) {
            return false;
        }
        try {
            return iNetComm.getNetMsgConnectStatus(i10);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isNetMsgInTiming(int i10) {
        synchronized (this.mListenIDs) {
            try {
                for (int size = this.mListenIDs.size() - 1; size >= 0; size--) {
                    if (this.mListenIDs.keyAt(size) == i10) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean isServiceConnnected() {
        return this.mIsServiceConnnected;
    }

    public void onSVTimer() {
        if (this.mContext == null) {
            return;
        }
        synchronized (this.mListenIDs) {
            try {
                for (int size = this.mListenIDs.size() - 1; size >= 0; size--) {
                    int iKeyAt = this.mListenIDs.keyAt(size);
                    if (this.mListenIDs.valueAt(size).intValue() - 1 == 0) {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 2;
                        messageObtain.arg1 = iKeyAt;
                        messageObtain.arg2 = -1;
                        this.mHandler.sendMessage(messageObtain);
                        this.mListenIDs.removeAt(size);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void regCarLanMsgCallBack(ICarLanListener iCarLanListener) {
        if (this.mRemoteCarLanCallBack == null) {
            this.mRemoteCarLanCallBack = new RemoteCarLanCallBack(this, 0);
        }
        synchronized (this.mCarLanListeners) {
            this.mCarLanListeners.add(iCarLanListener);
        }
    }

    public void regNetMsgCallBack(INetMsgListener iNetMsgListener) {
        if (this.mRemoteNetMsgCallBack == null) {
            this.mRemoteNetMsgCallBack = new RemoteNetMsgCallBack(this, 0);
            regRemoteNetMsgCallBack();
        }
        synchronized (this.mNetMsgListeners) {
            this.mNetMsgListeners.add(iNetMsgListener);
        }
    }

    public void regRemoteCarLanCallBack() {
        ICarLanCallBack iCarLanCallBack;
        INetComm iNetComm = this.mAidl;
        if (iNetComm == null || (iCarLanCallBack = this.mRemoteCarLanCallBack) == null) {
            return;
        }
        try {
            iNetComm.regCarLanMsgCallBack(iCarLanCallBack);
        } catch (RemoteException unused) {
        }
    }

    public void regRemoteNetMsgCallBack() {
        INetCommCallBack iNetCommCallBack;
        INetComm iNetComm = this.mAidl;
        if (iNetComm == null || (iNetCommCallBack = this.mRemoteNetMsgCallBack) == null) {
            return;
        }
        try {
            iNetComm.regCallBack(iNetCommCallBack);
        } catch (RemoteException unused) {
        }
    }

    public void regServiceConnectListener(IServiceConnectListener iServiceConnectListener) {
        if (iServiceConnectListener != null) {
            synchronized (this.mConnectListeners) {
                this.mConnectListeners.add(iServiceConnectListener);
            }
        }
    }

    public boolean sendCarLanMsg(int i10, int i11, String str) {
        return sendCarLanMsg(i10, i11, str, null, null);
    }

    public boolean sendNetMsg(int i10, byte[] bArr, int i11) {
        INetComm iNetComm = this.mAidl;
        if (iNetComm != null && bArr != null) {
            try {
                iNetComm.sendNetMsg(i10, bArr, i11);
                return true;
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
        return false;
    }

    public void setDelayTimerCount(int i10, int i11) {
        synchronized (this.mListenIDs) {
            this.mListenIDs.put(i10, Integer.valueOf(i11));
        }
    }

    public void unRegCarLanMsgCallBack(ICarLanListener iCarLanListener) {
        synchronized (this.mCarLanListeners) {
            this.mCarLanListeners.remove(iCarLanListener);
        }
    }

    public void unRegNetMsgCallBack(INetMsgListener iNetMsgListener) {
        synchronized (this.mNetMsgListeners) {
            this.mNetMsgListeners.remove(iNetMsgListener);
        }
    }

    public void unRegServiceConnectListener(IServiceConnectListener iServiceConnectListener) {
        if (iServiceConnectListener != null) {
            synchronized (this.mConnectListeners) {
                this.mConnectListeners.remove(iServiceConnectListener);
            }
        }
    }

    public boolean sendCarLanMsg(int i10, int i11, String str, String str2, byte[] bArr) {
        INetComm iNetComm = this.mAidl;
        if (iNetComm == null) {
            return false;
        }
        try {
            iNetComm.sendCarLanMsg(i10, i11, str, str2, bArr);
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean sendNetMsg(int i10, byte[] bArr) {
        return sendNetMsg(i10, bArr, 3);
    }

    public void setDelayTimerCount(int i10) {
        setDelayTimerCount(i10, 10);
    }

    public boolean sendNetMsg(int i10, String str) {
        if (str == null) {
            return false;
        }
        return sendNetMsg(i10, str.getBytes(), 3);
    }
}
