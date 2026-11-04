package k2;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;

/* loaded from: classes.dex */
public final class d implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f10021a = new float[16];

    /* renamed from: b, reason: collision with root package name */
    public final float[] f10022b = new float[16];

    /* renamed from: c, reason: collision with root package name */
    public final float[] f10023c = new float[16];

    /* renamed from: d, reason: collision with root package name */
    public final float[] f10024d = new float[3];

    /* renamed from: e, reason: collision with root package name */
    public final Display f10025e;

    /* renamed from: f, reason: collision with root package name */
    public final c[] f10026f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f10027g;

    public d(Display display, c... cVarArr) {
        this.f10025e = display;
        this.f10026f = cVarArr;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        int i10;
        float[] fArr = sensorEvent.values;
        float[] fArr2 = this.f10021a;
        SensorManager.getRotationMatrixFromVector(fArr2, fArr);
        int rotation = this.f10025e.getRotation();
        float[] fArr3 = this.f10022b;
        if (rotation != 0) {
            int i11 = 129;
            if (rotation != 1) {
                i10 = 130;
                if (rotation != 2) {
                    if (rotation != 3) {
                        throw new IllegalStateException();
                    }
                    i11 = 130;
                    i10 = 1;
                }
            } else {
                i11 = 2;
                i10 = 129;
            }
            System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
            SensorManager.remapCoordinateSystem(fArr3, i11, i10, fArr2);
        }
        SensorManager.remapCoordinateSystem(fArr2, 1, 131, fArr3);
        float[] fArr4 = this.f10024d;
        SensorManager.getOrientation(fArr3, fArr4);
        float f10 = fArr4[2];
        Matrix.rotateM(fArr2, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        boolean z = this.f10027g;
        float[] fArr5 = this.f10023c;
        if (!z) {
            androidx.room.i.d(fArr5, fArr2);
            this.f10027g = true;
        }
        System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
        Matrix.multiplyMM(fArr2, 0, fArr3, 0, fArr5, 0);
        c[] cVarArr = this.f10026f;
        for (int i12 = 0; i12 < 2; i12++) {
            cVarArr[i12].a(fArr2, f10);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
