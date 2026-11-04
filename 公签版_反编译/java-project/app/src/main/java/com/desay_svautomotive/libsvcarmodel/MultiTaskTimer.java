package com.desay_svautomotive.libsvcarmodel;

import android.util.SparseArray;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MultiTaskTimer {
    private ITimerTaskHandler mTimerTaskHandler;
    private String TAG = "Lib-MultiTaskTimer";
    private ScheduledThreadPoolExecutor mExecutor = new ScheduledThreadPoolExecutor(1);
    private SparseArray<Task> mTaskHashMap = new SparseArray<>();
    private SparseArray<ScheduledFuture<?>> mFutureHashMap = new SparseArray<>();
    private final int FIRST_TIMER_ID = -65535;

    public interface ITimerTaskHandler {
        void onTimerTaskHandle(int i10);
    }

    public class Task implements Runnable {
        private int taskId;

        public Task(int i10) {
            this.taskId = i10;
        }

        public int getTaskId() {
            return this.taskId;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MultiTaskTimer.this.mTaskHashMap.get(this.taskId) == null) {
                MultiTaskTimer.this.cancelTimeTask(this.taskId);
            } else if (MultiTaskTimer.this.mTimerTaskHandler != null) {
                if (-65535 != this.taskId) {
                    MultiTaskTimer.this.mTimerTaskHandler.onTimerTaskHandle(this.taskId);
                } else {
                    MultiTaskTimer.this.cancelTimeTask(-65535);
                }
            }
        }
    }

    public MultiTaskTimer(ITimerTaskHandler iTimerTaskHandler) {
        this.mTimerTaskHandler = iTimerTaskHandler;
        setTimeTask(-65535, 1);
    }

    public void cancelTimeTask(int i10) {
        ScheduledFuture<?> scheduledFuture = this.mFutureHashMap.get(i10);
        if (scheduledFuture != null) {
            if (scheduledFuture.cancel(true)) {
                this.mFutureHashMap.remove(i10);
            }
            if (this.mTaskHashMap.get(i10) != null) {
                this.mExecutor.remove(this.mTaskHashMap.get(i10));
                this.mTaskHashMap.remove(i10);
            }
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.mExecutor;
        if (scheduledThreadPoolExecutor != null) {
            scheduledThreadPoolExecutor.shutdown();
            this.mExecutor.purge();
            this.mExecutor = null;
        }
        this.mTimerTaskHandler = null;
    }

    public boolean isTaskExist(int i10) {
        ScheduledFuture<?> scheduledFuture = this.mFutureHashMap.get(i10);
        if (scheduledFuture == null) {
            return false;
        }
        if (!scheduledFuture.isCancelled()) {
            return true;
        }
        cancelTimeTask(i10);
        return false;
    }

    public void killTimer() {
        try {
            finalize();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void setTimeTask(int i10, int i11) {
        cancelTimeTask(i10);
        Task task = new Task(i10);
        long j10 = i11;
        this.mFutureHashMap.put(task.getTaskId(), this.mExecutor.scheduleWithFixedDelay(task, j10, j10, TimeUnit.MILLISECONDS));
        this.mTaskHashMap.put(task.getTaskId(), task);
    }
}
