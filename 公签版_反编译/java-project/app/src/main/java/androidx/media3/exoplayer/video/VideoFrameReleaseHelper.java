package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;

/* loaded from: classes.dex */
public final class VideoFrameReleaseHelper {
    private static final long MAX_ALLOWED_ADJUSTMENT_NS = 20000000;
    private static final int MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE = 30;
    private static final long MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS = 5000000000L;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE = 0.1f;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE = 1.0f;
    private static final String TAG = "VideoFrameReleaseHelper";
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    public static final long VSYNC_SAMPLE_UPDATE_PERIOD_MS = 500;
    private final Context context;
    private long frameIndex;
    private long lastAdjustedFrameIndex;
    private long lastAdjustedPresentationTimeUs;
    private long lastAdjustedReleaseTimeNs;
    private long lastVsyncHysteresisOffsetNs;
    private long pendingLastAdjustedFrameIndex;
    private long pendingLastAdjustedReleaseTimeNs;
    private long pendingLastPresentationTimeUs;
    private long pendingVsyncHysteresisOffsetNs;
    private boolean started;
    private Surface surface;
    private float surfaceMediaFrameRate;
    private float surfacePlaybackFrameRate;
    private boolean vsyncSampleBuilt;
    private VSyncSampler vsyncSampler;
    private final f frameRateEstimator = new f();
    private float formatFrameRate = -1.0f;
    private float playbackSpeed = MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE;
    private int changeFrameRateStrategy = 0;

    public static final class Api30 {
        private Api30() {
        }

        public static void setSurfaceFrameRate(Surface surface, float f10) {
            try {
                surface.setFrameRate(f10, f10 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e7) {
                u1.a.g("Failed to call Surface.setFrameRate", e7);
            }
        }
    }

    public static abstract class VSyncSampler implements DisplayManager.DisplayListener {
        final Choreographer choreographer;
        final DisplayManager displayManager;
        volatile long sampledVsyncTimeNs;
        volatile long vsyncDurationNs;

        /* JADX INFO: Access modifiers changed from: private */
        public static VSyncSampler maybeBuildInstance(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                return null;
            }
            try {
                Choreographer choreographer = Choreographer.getInstance();
                return Build.VERSION.SDK_INT >= 33 ? new VSyncSamplerV33(choreographer, displayManager) : new VSyncSamplerBase(choreographer, displayManager);
            } catch (RuntimeException e7) {
                u1.a.q("Vsync sampling disabled due to platform error", e7);
                return null;
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i10) {
        }

        public void register() {
            this.displayManager.registerDisplayListener(this, u1.f0.k(null));
        }

        public void unregister() {
            this.displayManager.unregisterDisplayListener(this);
        }

        private VSyncSampler(Choreographer choreographer, DisplayManager displayManager) {
            this.choreographer = choreographer;
            this.displayManager = displayManager;
            this.sampledVsyncTimeNs = -9223372036854775807L;
            this.vsyncDurationNs = -9223372036854775807L;
        }
    }

    public static final class VSyncSamplerBase extends VSyncSampler implements Choreographer.FrameCallback {
        private static long getVsyncDurationNsFromDefaultDisplay(DisplayManager displayManager) {
            Display display = displayManager.getDisplay(0);
            if (display == null) {
                u1.a.p("Unable to query display refresh rate");
                return -9223372036854775807L;
            }
            double refreshRate = display.getRefreshRate();
            Double.isNaN(refreshRate);
            return (long) (1.0E9d / refreshRate);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            this.sampledVsyncTimeNs = j10;
            this.choreographer.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            if (i10 == 0) {
                this.choreographer.postFrameCallback(this);
                this.vsyncDurationNs = getVsyncDurationNsFromDefaultDisplay(this.displayManager);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void register() {
            super.register();
            this.choreographer.postFrameCallback(this);
            this.vsyncDurationNs = getVsyncDurationNsFromDefaultDisplay(this.displayManager);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void unregister() {
            super.unregister();
            this.choreographer.removeFrameCallback(this);
            this.sampledVsyncTimeNs = -9223372036854775807L;
            this.vsyncDurationNs = -9223372036854775807L;
        }

        private VSyncSamplerBase(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
        }
    }

    public static final class VSyncSamplerV33 extends VSyncSampler implements Choreographer.VsyncCallback {
        private final Handler handler;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onVsync$0() {
            this.choreographer.postVsyncCallback(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            if (i10 == 0) {
                this.choreographer.postVsyncCallback(this);
            }
        }

        @Override // android.view.Choreographer.VsyncCallback
        public void onVsync(Choreographer.FrameData frameData) {
            this.sampledVsyncTimeNs = frameData.getFrameTimeNanos();
            Choreographer.FrameTimeline[] frameTimelines = frameData.getFrameTimelines();
            if (frameTimelines.length >= 2) {
                long expectedPresentationTimeNanos = frameTimelines[1].getExpectedPresentationTimeNanos() - frameTimelines[0].getExpectedPresentationTimeNanos();
                this.vsyncDurationNs = expectedPresentationTimeNanos != 0 ? expectedPresentationTimeNanos : -9223372036854775807L;
            } else {
                this.vsyncDurationNs = -9223372036854775807L;
            }
            this.handler.postDelayed(new c0(0, this), 500L);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void register() {
            super.register();
            this.choreographer.postVsyncCallback(this);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void unregister() {
            super.unregister();
            this.handler.removeCallbacksAndMessages(null);
            this.choreographer.removeVsyncCallback(this);
            this.sampledVsyncTimeNs = -9223372036854775807L;
            this.vsyncDurationNs = -9223372036854775807L;
        }

        private VSyncSamplerV33(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
            this.handler = u1.f0.k(null);
        }
    }

    public VideoFrameReleaseHelper(Context context) {
        this.context = context;
    }

    private static boolean adjustmentAllowed(long j10, long j11) {
        return Math.abs(j10 - j11) <= MAX_ALLOWED_ADJUSTMENT_NS;
    }

    private void clearSurfaceFrameRate() {
        Surface surface;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || this.surfacePlaybackFrameRate == 0.0f || !surface.isValid()) {
            return;
        }
        this.surfacePlaybackFrameRate = 0.0f;
        Api30.setSurfaceFrameRate(this.surface, 0.0f);
    }

    private long findClosestVsyncAndUpdateHysteresis(long j10, long j11, long j12) {
        long j13;
        long j14 = (((j10 - j11) / j12) * j12) + j11;
        if (j10 <= j14) {
            j13 = j14 - j12;
        } else {
            j14 += j12;
            j13 = j14;
        }
        long j15 = j14 - j10;
        long j16 = j10 - j13;
        long jAbs = Math.abs(j15 - j16);
        if (jAbs < j12 / 2) {
            long j17 = j12 / 4;
            if (jAbs < j17) {
                long j18 = this.lastVsyncHysteresisOffsetNs;
                if (j18 != 0) {
                    this.pendingVsyncHysteresisOffsetNs = j18;
                } else {
                    if (j15 < j16) {
                        j17 = -j17;
                    }
                    this.pendingVsyncHysteresisOffsetNs = j17;
                }
            } else {
                this.pendingVsyncHysteresisOffsetNs = 0L;
            }
        } else {
            this.pendingVsyncHysteresisOffsetNs = this.lastVsyncHysteresisOffsetNs;
        }
        return j15 + this.pendingVsyncHysteresisOffsetNs < j16 ? j14 : j13;
    }

    private void resetAdjustment() {
        this.frameIndex = 0L;
        this.lastAdjustedFrameIndex = -1L;
        this.pendingLastAdjustedFrameIndex = -1L;
        this.lastVsyncHysteresisOffsetNs = 0L;
        this.pendingVsyncHysteresisOffsetNs = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateSurfaceMediaFrameRate() {
        float f10;
        if (Build.VERSION.SDK_INT < 30 || this.surface == null) {
            return;
        }
        if (this.frameRateEstimator.f1892a.a()) {
            f fVar = this.frameRateEstimator;
            if (fVar.f1892a.a()) {
                e eVar = fVar.f1892a;
                long j10 = eVar.f1884e;
                double d10 = j10 != 0 ? eVar.f1885f / j10 : 0L;
                Double.isNaN(d10);
                f10 = (float) (1.0E9d / d10);
            } else {
                f10 = -1.0f;
            }
        } else {
            f10 = this.formatFrameRate;
        }
        float f11 = this.surfaceMediaFrameRate;
        if (f10 == f11) {
            return;
        }
        if (f10 == -1.0f || f11 == -1.0f) {
            if (f10 == -1.0f && this.frameRateEstimator.f1896e < 30) {
                return;
            }
        } else if (this.frameRateEstimator.f1892a.a()) {
            f fVar2 = this.frameRateEstimator;
            float f12 = (fVar2.f1892a.a() ? fVar2.f1892a.f1885f : -9223372036854775807L) >= MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS ? MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE : MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE;
            if (Math.abs(f10 - this.surfaceMediaFrameRate) < f12) {
                return;
            }
        }
        this.surfaceMediaFrameRate = f10;
        updateSurfacePlaybackFrameRate(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateSurfacePlaybackFrameRate(boolean z) {
        Surface surface;
        float f10;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || !surface.isValid()) {
            return;
        }
        if (this.started) {
            float f11 = this.surfaceMediaFrameRate;
            f10 = f11 != -1.0f ? f11 * this.playbackSpeed : 0.0f;
        }
        if (z || this.surfacePlaybackFrameRate != f10) {
            this.surfacePlaybackFrameRate = f10;
            Api30.setSurfaceFrameRate(this.surface, f10);
        }
    }

    public long adjustReleaseTime(long j10, long j11) {
        long j12;
        float f10;
        float f11;
        long j13;
        if (this.lastAdjustedFrameIndex != -1) {
            if (this.frameRateEstimator.f1892a.a()) {
                f fVar = this.frameRateEstimator;
                if (fVar.f1892a.a()) {
                    e eVar = fVar.f1892a;
                    long j14 = eVar.f1884e;
                    j13 = 0;
                    if (j14 != 0) {
                        j13 = eVar.f1885f / j14;
                    }
                } else {
                    j13 = -9223372036854775807L;
                }
                f10 = (this.frameIndex - this.lastAdjustedFrameIndex) * j13;
                f11 = this.playbackSpeed;
            } else {
                f10 = (j11 - this.lastAdjustedPresentationTimeUs) * 1000;
                f11 = this.playbackSpeed;
            }
            long j15 = this.lastAdjustedReleaseTimeNs + ((long) (f10 / f11));
            j12 = j10;
            if (adjustmentAllowed(j10, j15)) {
                j12 = j15;
            } else {
                resetAdjustment();
            }
        } else {
            j12 = j10;
        }
        this.pendingLastAdjustedFrameIndex = this.frameIndex;
        this.pendingLastAdjustedReleaseTimeNs = j12;
        this.pendingLastPresentationTimeUs = j11;
        VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler == null) {
            return j12;
        }
        long j16 = vSyncSampler.sampledVsyncTimeNs;
        long j17 = this.vsyncSampler.vsyncDurationNs;
        return (j16 == -9223372036854775807L || j17 == -9223372036854775807L) ? j12 : findClosestVsyncAndUpdateHysteresis(j12, j16, j17) - ((j17 * VSYNC_OFFSET_PERCENTAGE) / 100);
    }

    public void onFormatChanged(float f10) {
        this.formatFrameRate = f10;
        f fVar = this.frameRateEstimator;
        fVar.f1892a.c();
        fVar.f1893b.c();
        fVar.f1894c = false;
        fVar.f1895d = -9223372036854775807L;
        fVar.f1896e = 0;
        updateSurfaceMediaFrameRate();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onNextFrame(long j10) {
        long j11 = this.pendingLastAdjustedFrameIndex;
        if (j11 != -1) {
            this.lastAdjustedFrameIndex = j11;
            this.lastAdjustedReleaseTimeNs = this.pendingLastAdjustedReleaseTimeNs;
            this.lastAdjustedPresentationTimeUs = this.pendingLastPresentationTimeUs;
            this.lastVsyncHysteresisOffsetNs = this.pendingVsyncHysteresisOffsetNs;
        }
        this.frameIndex++;
        f fVar = this.frameRateEstimator;
        long j12 = j10 * 1000;
        fVar.f1892a.b(j12);
        if (fVar.f1892a.a()) {
            fVar.f1894c = false;
        } else if (fVar.f1895d != -9223372036854775807L) {
            if (fVar.f1894c) {
                e eVar = fVar.f1893b;
                long j13 = eVar.f1883d;
                if (j13 == 0 ? false : eVar.f1886g[(int) ((j13 - 1) % 15)]) {
                    fVar.f1893b.c();
                    fVar.f1893b.b(fVar.f1895d);
                }
                fVar.f1894c = true;
                fVar.f1893b.b(j12);
            }
        }
        if (fVar.f1894c && fVar.f1893b.a()) {
            e eVar2 = fVar.f1892a;
            fVar.f1892a = fVar.f1893b;
            fVar.f1893b = eVar2;
            fVar.f1894c = false;
        }
        fVar.f1895d = j12;
        fVar.f1896e = fVar.f1892a.a() ? 0 : fVar.f1896e + 1;
        updateSurfaceMediaFrameRate();
    }

    public void onPlaybackSpeed(float f10) {
        this.playbackSpeed = f10;
        updateSurfacePlaybackFrameRate(false);
    }

    public void onPositionReset() {
        resetAdjustment();
    }

    public void onStarted() {
        this.started = true;
        resetAdjustment();
        if (!this.vsyncSampleBuilt) {
            this.vsyncSampler = VSyncSampler.maybeBuildInstance(this.context);
        }
        VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler != null) {
            vSyncSampler.register();
        }
        updateSurfacePlaybackFrameRate(false);
    }

    public void onStopped() {
        this.started = false;
        VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler != null) {
            vSyncSampler.unregister();
        }
        clearSurfaceFrameRate();
    }

    public void onSurfaceChanged(Surface surface) {
        if (this.surface == surface) {
            return;
        }
        clearSurfaceFrameRate();
        this.surface = surface;
        updateSurfacePlaybackFrameRate(true);
    }

    public void setChangeFrameRateStrategy(int i10) {
        if (this.changeFrameRateStrategy == i10) {
            return;
        }
        this.changeFrameRateStrategy = i10;
        updateSurfacePlaybackFrameRate(true);
    }

    public void setVsyncData(long j10, long j11) {
        VSyncSampler vSyncSampler = this.vsyncSampler;
        vSyncSampler.getClass();
        vSyncSampler.sampledVsyncTimeNs = j10;
        this.vsyncSampler.vsyncDurationNs = j11;
    }
}
