package com.desay_svautomotive.libsvcarinfo;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CarInfoHelper {
    public static final int MSG_ON_CHANGE_EVENT = 1;
    public static final int MSG_ON_CHANGE_EVENT_IN_TIMING = 2;
    public static final int MSG_ON_SERVICE_CONNECTED = 3;
    public static final int MSG_TIMING_ARRIVAL = 0;
    private static final int NOCHECK_COUNTER_VALUE = -1;
    public static final int TIMER_DELAY_DEFAULT_COUNT = 10;
    private static final int UPDATE_COUNTER_VALUE = 0;
    private CarInfoCallBack mCarInfoCallBack;
    private IServiceConnectListener mConnectCallBack;
    private Handler mHandler;
    private ISpiListener mSpiListener;
    private SparseArray<SparseArray<Integer>> mListenIDs = new SparseArray<>();
    private ArrayList<CacheItem> mCacheList = new ArrayList<>();

    public static class CacheItem {
        public int cmdId;
        public int[] data;
        public int moduleId;

        public CacheItem(int i10, int i11, int[] iArr) {
            this.moduleId = i10;
            this.cmdId = i11;
            this.data = iArr;
        }
    }

    public static class CarHandler extends Handler {
        private final WeakReference<CarInfoHelper> mHelper;

        public /* synthetic */ CarHandler(CarInfoHelper carInfoHelper, int i10) {
            this(carInfoHelper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.mHelper.get() != null) {
                if (message.what == 0) {
                    if (this.mHelper.get().getDelayCountByCmdId(message.arg1, message.arg2) > 0) {
                        return;
                    } else {
                        this.mHelper.get().removeCacheItem(message.arg1, message.arg2);
                    }
                }
                if (this.mHelper.get().mSpiListener != null) {
                    this.mHelper.get().mSpiListener.onReceiveSpi(message.what, message.arg1, message.arg2);
                }
            }
            super.handleMessage(message);
        }

        private CarHandler(CarInfoHelper carInfoHelper) {
            this.mHelper = new WeakReference<>(carInfoHelper);
        }
    }

    public static class CarInfoCallBack extends ICarInfoCallBack.Stub {
        private final WeakReference<CarInfoHelper> mHelper;

        public /* synthetic */ CarInfoCallBack(CarInfoHelper carInfoHelper, int i10) {
            this(carInfoHelper);
        }

        @Override // com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack
        public void onChangeEvent(int i10, int i11) {
            WeakReference<CarInfoHelper> weakReference = this.mHelper;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.mHelper.get().onReceiveData(i10, i11);
        }

        private CarInfoCallBack(CarInfoHelper carInfoHelper) {
            this.mHelper = new WeakReference<>(carInfoHelper);
        }
    }

    public interface ISpiListener {
        void onReceiveSpi(int i10, int i11, int i12);
    }

    public static class ServiceConnectListener implements IServiceConnectListener {
        private final WeakReference<CarInfoHelper> mHelper;

        public /* synthetic */ ServiceConnectListener(CarInfoHelper carInfoHelper, int i10) {
            this(carInfoHelper);
        }

        @Override // com.desay_svautomotive.libsvcarinfo.IServiceConnectListener
        public void onServiceConnectedChanged(int i10) {
            if (i10 != 1 || this.mHelper.get() == null) {
                return;
            }
            this.mHelper.get().onConnectSuccess();
        }

        private ServiceConnectListener(CarInfoHelper carInfoHelper) {
            this.mHelper = new WeakReference<>(carInfoHelper);
        }
    }

    public CarInfoHelper() {
        int i10 = 0;
        this.mHandler = new CarHandler(this, i10);
        this.mConnectCallBack = new ServiceConnectListener(this, i10);
        this.mCarInfoCallBack = new CarInfoCallBack(this, i10);
    }

    private void regCallBack() {
        for (int i10 = 0; i10 < this.mListenIDs.size(); i10++) {
            SparseArray<Integer> sparseArrayValueAt = this.mListenIDs.valueAt(i10);
            int[] iArr = new int[sparseArrayValueAt.size()];
            for (int i11 = 0; i11 < sparseArrayValueAt.size(); i11++) {
                iArr[i11] = sparseArrayValueAt.keyAt(i11);
            }
            CarInfoProxy.getInstance().regCallBack(this.mListenIDs.keyAt(i10), this.mCarInfoCallBack, iArr);
        }
    }

    public void end() {
        this.mSpiListener = null;
        synchronized (this.mListenIDs) {
            try {
                CarInfoTimer.getInstance().unRegTimerCallBack(this);
                CarInfoProxy.getInstance().unRegServiceConnectListener(this.mConnectCallBack);
                for (int i10 = 0; i10 < this.mListenIDs.size(); i10++) {
                    CarInfoProxy.getInstance().unRegCallBack(this.mListenIDs.keyAt(i10), this.mCarInfoCallBack);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int getDelayCountByCmdId(int i10, int i11) {
        synchronized (this.mListenIDs) {
            try {
                SparseArray<Integer> sparseArray = this.mListenIDs.get(i10);
                if (sparseArray == null) {
                    return 0;
                }
                if (sparseArray.get(i11) == null) {
                    return 0;
                }
                return sparseArray.get(i11).intValue();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int getItemValue(int i10, int i11) {
        int[] itemValues = getItemValues(i10, i11);
        if (itemValues == null || itemValues.length < 1) {
            return 0;
        }
        return itemValues[0];
    }

    public int[] getItemValues(int i10, int i11) {
        for (int i12 = 0; i12 < this.mCacheList.size(); i12++) {
            if (i10 == this.mCacheList.get(i12).moduleId && i11 == this.mCacheList.get(i12).cmdId) {
                return this.mCacheList.get(i12).data;
            }
        }
        return CarInfoProxy.getInstance().getItemValues(i10, i11);
    }

    public void listen(int i10, int[] iArr) {
        SparseArray<Integer> sparseArray = new SparseArray<>();
        for (int i11 : iArr) {
            sparseArray.put(i11, -1);
        }
        this.mListenIDs.put(i10, sparseArray);
    }

    public void onConnectSuccess() {
        regCallBack();
        Message messageObtain = Message.obtain();
        messageObtain.what = 3;
        this.mHandler.sendMessage(messageObtain);
    }

    public void onReceiveData(int i10, int i11) {
        int delayCountByCmdId = getDelayCountByCmdId(i10, i11);
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = i10;
        messageObtain.arg2 = i11;
        if (delayCountByCmdId <= 0) {
            messageObtain.what = 1;
        } else {
            messageObtain.what = 2;
        }
        this.mHandler.sendMessage(messageObtain);
    }

    public void onSVTimer() {
        for (int i10 = 0; i10 < this.mListenIDs.size(); i10++) {
            SparseArray<Integer> sparseArrayValueAt = this.mListenIDs.valueAt(i10);
            for (int i11 = 0; i11 < sparseArrayValueAt.size(); i11++) {
                int iKeyAt = sparseArrayValueAt.keyAt(i11);
                int iIntValue = sparseArrayValueAt.valueAt(i11).intValue() - 1;
                sparseArrayValueAt.put(iKeyAt, Integer.valueOf(iIntValue));
                if (iIntValue == 0) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 0;
                    messageObtain.arg1 = this.mListenIDs.keyAt(i10);
                    messageObtain.arg2 = iKeyAt;
                    this.mHandler.sendMessage(messageObtain);
                }
            }
        }
    }

    public void removeCacheItem(int i10, int i11) {
        for (int size = this.mCacheList.size() - 1; size >= 0; size--) {
            if (i10 == this.mCacheList.get(size).moduleId && i11 == this.mCacheList.get(size).cmdId) {
                this.mCacheList.remove(size);
            }
        }
    }

    public void setDelayResponse(int i10, int i11, int i12) {
        setDelayResponse(i10, i11, new int[]{i12}, 10);
    }

    public void setDelayTimerCount(int i10, int i11, int i12) {
        synchronized (this.mListenIDs) {
            try {
                if (this.mListenIDs.get(i10) != null) {
                    this.mListenIDs.get(i10).put(i11, Integer.valueOf(i12));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void start(ISpiListener iSpiListener) {
        this.mSpiListener = iSpiListener;
        regCallBack();
        CarInfoProxy.getInstance().regServiceConnectListener(this.mConnectCallBack);
        CarInfoTimer.getInstance().regTimerCallBack(this);
    }

    public void setDelayResponse(int i10, int i11, int i12, int i13) {
        setDelayResponse(i10, i11, new int[]{i12}, i13);
    }

    public void setDelayResponse(int i10, int i11, int[] iArr, int i12) {
        removeCacheItem(i10, i11);
        this.mCacheList.add(new CacheItem(i10, i11, iArr));
        setDelayTimerCount(i10, i11, i12);
    }
}
