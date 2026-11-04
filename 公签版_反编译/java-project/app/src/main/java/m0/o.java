package m0;

import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.graphics.drawable.RippleDrawable;
import android.hardware.camera2.CameraManager;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.telecom.TelecomManager;

/* loaded from: classes.dex */
public abstract /* synthetic */ class o {
    public static /* bridge */ /* synthetic */ Class A() {
        return JobScheduler.class;
    }

    public static /* bridge */ /* synthetic */ Class B() {
        return LauncherApps.class;
    }

    public static /* bridge */ /* synthetic */ Class C() {
        return MediaProjectionManager.class;
    }

    public static /* bridge */ /* synthetic */ Class D() {
        return PackageInstaller.class;
    }

    public static /* bridge */ /* synthetic */ PackageInstaller e(Object obj) {
        return (PackageInstaller) obj;
    }

    public static /* bridge */ /* synthetic */ Class h() {
        return MediaSessionManager.class;
    }

    public static /* bridge */ /* synthetic */ boolean s(Object obj) {
        return obj instanceof RippleDrawable;
    }

    public static /* bridge */ /* synthetic */ Class u() {
        return RestrictionsManager.class;
    }

    public static /* bridge */ /* synthetic */ Class w() {
        return TelecomManager.class;
    }

    public static /* bridge */ /* synthetic */ Class x() {
        return TvInputManager.class;
    }

    public static /* bridge */ /* synthetic */ Class y() {
        return UsageStatsManager.class;
    }

    public static /* bridge */ /* synthetic */ Class z() {
        return CameraManager.class;
    }
}
