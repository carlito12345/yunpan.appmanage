package ha;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.yunpan.appmanage.service.AccService;

/* loaded from: classes.dex */
public final class u implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7844a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7845b;

    public /* synthetic */ u(int i10, Object obj) {
        this.f7844a = i10;
        this.f7845b = obj;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
        int i11 = this.f7844a;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        switch (this.f7844a) {
            case 0:
                if (sensorEvent.sensor.getType() == 5) {
                    ((w) this.f7845b).f7971j.setText(String.valueOf((int) sensorEvent.values[0]));
                    break;
                }
                break;
            case 1:
                if (sensorEvent.sensor.getType() == 5) {
                    ((f0) this.f7845b).l.setText(String.valueOf((int) sensorEvent.values[0]));
                    break;
                }
                break;
            default:
                if (sensorEvent.sensor.getType() == 5) {
                    float f10 = sensorEvent.values[0];
                    AccService accService = (AccService) this.f7845b;
                    float f11 = accService.f3944s;
                    if (f11 == -1.0f) {
                        accService.f3944s = f10;
                        break;
                    } else if (Math.abs(f10 - f11) >= 5.0f) {
                        if (f10 > accService.f3944s) {
                            for (Integer num : wa.s.c().f17721s.keySet()) {
                                float fIntValue = num.intValue();
                                if (fIntValue <= f10 && fIntValue > accService.f3944s) {
                                    accService.b((z7.o) wa.s.c().f17721s.get(num));
                                }
                            }
                        } else {
                            for (Integer num2 : wa.s.c().f17722t.keySet()) {
                                float fIntValue2 = num2.intValue();
                                if (fIntValue2 >= f10 && fIntValue2 < accService.f3944s) {
                                    accService.b((z7.o) wa.s.c().f17722t.get(num2));
                                }
                            }
                        }
                        accService.f3944s = f10;
                        break;
                    }
                }
                break;
        }
    }

    private final void a(Sensor sensor, int i10) {
    }

    private final void b(Sensor sensor, int i10) {
    }

    private final void c(Sensor sensor, int i10) {
    }
}
