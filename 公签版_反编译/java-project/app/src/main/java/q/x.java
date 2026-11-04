package q;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.PowerManager;
import com.hjq.permissions.permission.PermissionNames;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class x extends fe.c {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12898c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a0 f12899d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f12900e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(a0 a0Var, v3.f fVar) {
        super(a0Var);
        this.f12899d = a0Var;
        this.f12900e = fVar;
    }

    @Override // fe.c
    public final IntentFilter d() {
        switch (this.f12898c) {
            case 0:
                if (Build.VERSION.SDK_INT < 21) {
                    return null;
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @Override // fe.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int e() {
        boolean z;
        long j10;
        switch (this.f12898c) {
            case 0:
                if (Build.VERSION.SDK_INT < 21 || !((PowerManager) this.f12900e).isPowerSaveMode()) {
                }
                break;
            default:
                v3.f fVar = (v3.f) this.f12900e;
                j0 j0Var = (j0) fVar.f16476d;
                if (j0Var.f12847b > System.currentTimeMillis()) {
                    z = j0Var.f12846a;
                } else {
                    Context context = (Context) fVar.f16474b;
                    int iB = n0.g.b(context, PermissionNames.ACCESS_COARSE_LOCATION);
                    Location lastKnownLocation = null;
                    LocationManager locationManager = (LocationManager) fVar.f16475c;
                    if (iB == 0) {
                        Location lastKnownLocation2 = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                        if (n0.g.b(context, PermissionNames.ACCESS_FINE_LOCATION) == 0) {
                            try {
                                if (locationManager.isProviderEnabled("gps")) {
                                    lastKnownLocation = locationManager.getLastKnownLocation("gps");
                                }
                            } catch (Exception unused) {
                            }
                        }
                        if (lastKnownLocation == null || lastKnownLocation2 == null ? lastKnownLocation != null : lastKnownLocation.getTime() > lastKnownLocation2.getTime()) {
                            lastKnownLocation2 = lastKnownLocation;
                        }
                        if (lastKnownLocation2 != null) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (i0.f12842d == null) {
                                i0.f12842d = new i0();
                            }
                            i0 i0Var = i0.f12842d;
                            i0Var.a(jCurrentTimeMillis - 86400000, lastKnownLocation2.getLatitude(), lastKnownLocation2.getLongitude());
                            i0Var.a(jCurrentTimeMillis, lastKnownLocation2.getLatitude(), lastKnownLocation2.getLongitude());
                            z = i0Var.f12845c == 1;
                            long j11 = i0Var.f12844b;
                            long j12 = i0Var.f12843a;
                            i0Var.a(jCurrentTimeMillis + 86400000, lastKnownLocation2.getLatitude(), lastKnownLocation2.getLongitude());
                            long j13 = i0Var.f12844b;
                            if (j11 == -1 || j12 == -1) {
                                j10 = jCurrentTimeMillis + 43200000;
                            } else {
                                if (jCurrentTimeMillis <= j12) {
                                    j13 = jCurrentTimeMillis > j11 ? j12 : j11;
                                }
                                j10 = j13 + 60000;
                            }
                            j0Var.f12846a = z;
                            j0Var.f12847b = j10;
                        } else {
                            int i10 = Calendar.getInstance().get(11);
                            if (i10 < 6 || i10 >= 22) {
                                z = true;
                            }
                        }
                    }
                }
                if (z) {
                }
                break;
        }
        return 1;
    }

    @Override // fe.c
    public final void g() {
        switch (this.f12898c) {
            case 0:
                this.f12899d.l(true, true);
                break;
            default:
                this.f12899d.l(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(a0 a0Var, Context context) {
        super(a0Var);
        this.f12899d = a0Var;
        this.f12900e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
