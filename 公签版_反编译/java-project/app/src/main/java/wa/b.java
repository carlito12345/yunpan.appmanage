package wa;

import android.accessibilityservice.GestureDescription;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import com.yunpan.appmanage.service.AccService;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class b {
    public static void a(AccService accService, float f10, float f11, long j10) {
        GestureDescription.Builder builder = new GestureDescription.Builder();
        Path path = new Path();
        path.moveTo(f10, f11);
        builder.addStroke(new GestureDescription.StrokeDescription(path, 0L, j10));
        accService.dispatchGesture(builder.build(), null, null);
    }

    public static void b(AccService accService, z7.s sVar) throws InterruptedException {
        int iE = sVar.o("int1").e();
        Point pointR = p000if.a.R(accService);
        if (iE == -1) {
            int iE2 = sVar.o("time").e();
            z7.o oVarP = sVar.p("points");
            if (oVarP.f19478a.size() == 1) {
                z7.s sVarG = oVarP.l(0).g();
                d(accService, sVarG.o("start_x").e(), sVarG.o("start_y").e(), sVarG.o("end_x").e(), sVarG.o("end_y").e(), iE2);
                return;
            }
            ArrayList arrayList = oVarP.f19478a;
            if (arrayList.size() == 2) {
                z7.s sVarG2 = oVarP.l(0).g();
                z7.s sVarG3 = oVarP.l(1).g();
                c(accService, new PointF[]{new PointF(sVarG2.o("start_x").e(), sVarG2.o("start_y").e()), new PointF(sVarG3.o("start_x").e(), sVarG3.o("start_y").e())}, new PointF[]{new PointF(sVarG2.o("end_x").e(), sVarG2.o("end_y").e()), new PointF(sVarG3.o("end_x").e(), sVarG3.o("end_y").e())}, iE2);
                return;
            } else {
                if (arrayList.size() == 3) {
                    z7.s sVarG4 = oVarP.l(0).g();
                    z7.s sVarG5 = oVarP.l(1).g();
                    z7.s sVarG6 = oVarP.l(2).g();
                    c(accService, new PointF[]{new PointF(sVarG4.o("start_x").e(), sVarG4.o("start_y").e()), new PointF(sVarG5.o("start_x").e(), sVarG5.o("start_y").e()), new PointF(sVarG6.o("start_x").e(), sVarG6.o("start_y").e())}, new PointF[]{new PointF(sVarG4.o("end_x").e(), sVarG4.o("end_y").e()), new PointF(sVarG5.o("end_x").e(), sVarG5.o("end_y").e()), new PointF(sVarG6.o("end_x").e(), sVarG6.o("end_y").e())}, iE2);
                    return;
                }
                return;
            }
        }
        if (iE == 10) {
            a(accService, pointR.x / 2, pointR.y / 2, 50L);
            return;
        }
        if (iE == 11) {
            try {
                a(accService, pointR.x / 2, pointR.y / 2, 50L);
                Thread.sleep(333L);
                a(accService, pointR.x / 2, pointR.y / 2, 50L);
                return;
            } catch (InterruptedException unused) {
                return;
            }
        }
        if (iE == 12) {
            a(accService, pointR.x / 2, pointR.y / 2, 900L);
            return;
        }
        if (iE == 100) {
            float f10 = pointR.x / 2;
            d(accService, f10, r1 * 3, f10, pointR.y / 4, 320L);
            return;
        }
        if (iE == 101) {
            float f11 = pointR.x / 2;
            d(accService, f11, pointR.y / 4, f11, r1 * 3, 320L);
            return;
        }
        if (iE == 102) {
            int i10 = pointR.x / 4;
            float f12 = pointR.y / 2;
            d(accService, i10 * 3, f12, i10, f12, 320L);
            return;
        }
        if (iE == 103) {
            int i11 = pointR.x / 4;
            float f13 = pointR.y / 2;
            d(accService, i11, f13, i11 * 3, f13, 320L);
            return;
        }
        if (iE == 200) {
            DisplayMetrics displayMetrics = accService.getResources().getDisplayMetrics();
            int i12 = displayMetrics.widthPixels / 2;
            int i13 = displayMetrics.heightPixels / 3;
            float f14 = i12 - 50;
            float f15 = i13 * 2;
            float f16 = i12;
            float f17 = i13;
            c(accService, new PointF[]{new PointF(f14, f15), new PointF(f16, f15)}, new PointF[]{new PointF(f14, f17), new PointF(f16, f17)}, 320L);
            return;
        }
        if (iE == 201) {
            DisplayMetrics displayMetrics2 = accService.getResources().getDisplayMetrics();
            int i14 = displayMetrics2.widthPixels / 2;
            int i15 = displayMetrics2.heightPixels / 3;
            float f18 = i15;
            float f19 = i15 * 2;
            c(accService, new PointF[]{new PointF(i14, f18), new PointF(i14 + 50, f18)}, new PointF[]{new PointF(10 + i14, f19), new PointF(i14 + 60, f19)}, 320L);
            return;
        }
        if (iE == 202) {
            DisplayMetrics displayMetrics3 = accService.getResources().getDisplayMetrics();
            int i16 = displayMetrics3.widthPixels / 3;
            int i17 = displayMetrics3.heightPixels / 2;
            float f20 = i16 * 2;
            float f21 = i16;
            c(accService, new PointF[]{new PointF(f20, i17 + 50), new PointF(f20, i17 - 50)}, new PointF[]{new PointF(f21, i17 + 60), new PointF(f21, i17 - 40)}, 320L);
            return;
        }
        if (iE == 203) {
            DisplayMetrics displayMetrics4 = accService.getResources().getDisplayMetrics();
            int i18 = displayMetrics4.widthPixels / 3;
            int i19 = displayMetrics4.heightPixels / 2;
            float f22 = i18;
            float f23 = i18 * 2;
            c(accService, new PointF[]{new PointF(f22, i19 + 50), new PointF(f22, i19 - 50)}, new PointF[]{new PointF(f23, i19 + 60), new PointF(f23, i19 - 40)}, 320L);
            return;
        }
        if (iE == 301) {
            DisplayMetrics displayMetrics5 = accService.getResources().getDisplayMetrics();
            int i20 = displayMetrics5.widthPixels / 2;
            int i21 = displayMetrics5.heightPixels / 4;
            float f24 = i20 - 66;
            float f25 = i21;
            float f26 = i20;
            float f27 = i20 + 66;
            float f28 = i21 * 3;
            c(accService, new PointF[]{new PointF(f24, f25), new PointF(f26, f25), new PointF(f27, f25)}, new PointF[]{new PointF(f24, f28), new PointF(f26, f28), new PointF(f27, f28)}, 320L);
            return;
        }
        if (iE == 300) {
            DisplayMetrics displayMetrics6 = accService.getResources().getDisplayMetrics();
            int i22 = displayMetrics6.widthPixels / 2;
            int i23 = displayMetrics6.heightPixels / 4;
            float f29 = i22 - 66;
            float f30 = i23 * 3;
            float f31 = i22;
            float f32 = i22 + 66;
            float f33 = i23;
            c(accService, new PointF[]{new PointF(f29, f30), new PointF(f31, f30), new PointF(f32, f30)}, new PointF[]{new PointF(f29, f33), new PointF(f31, f33), new PointF(f32, f33)}, 320L);
            return;
        }
        if (iE == 302) {
            DisplayMetrics displayMetrics7 = accService.getResources().getDisplayMetrics();
            int i24 = displayMetrics7.widthPixels / 3;
            int i25 = displayMetrics7.heightPixels / 2;
            float f34 = i24 * 2;
            float f35 = i25 - 50;
            float f36 = i25;
            float f37 = i25 + 50;
            float f38 = i24;
            c(accService, new PointF[]{new PointF(f34, f35), new PointF(f34, f36), new PointF(f34, f37)}, new PointF[]{new PointF(f38, f35), new PointF(f38, f36), new PointF(f38, f37)}, 320L);
            return;
        }
        if (iE == 303) {
            DisplayMetrics displayMetrics8 = accService.getResources().getDisplayMetrics();
            int i26 = displayMetrics8.widthPixels / 3;
            int i27 = displayMetrics8.heightPixels / 2;
            float f39 = i26;
            float f40 = i27 - 50;
            float f41 = i27;
            float f42 = i27 + 50;
            float f43 = i26 * 2;
            c(accService, new PointF[]{new PointF(f39, f40), new PointF(f39, f41), new PointF(f39, f42)}, new PointF[]{new PointF(f43, f40), new PointF(f43, f41), new PointF(f43, f42)}, 320L);
            return;
        }
        if (iE == 400) {
            float f44 = (pointR.x / 2) / 2;
            int i28 = pointR.y;
            d(accService, f44, 5.0f, f44, i28 - (((i28 / 2) / 2) / 2), 320L);
            return;
        }
        if (iE == 401) {
            float f45 = pointR.x / 2;
            int i29 = pointR.y;
            d(accService, f45, 5.0f, f45, i29 - (((i29 / 2) / 2) / 2), 320L);
            return;
        }
        if (iE == 402) {
            int i30 = pointR.x / 2;
            float f46 = (i30 / 2) + i30;
            int i31 = pointR.y;
            d(accService, f46, 5.0f, f46, i31 - (((i31 / 2) / 2) / 2), 320L);
            return;
        }
        if (iE == 403) {
            float f47 = (pointR.x / 2) / 2;
            int i32 = pointR.y;
            d(accService, f47, i32 - 5, f47, ((i32 / 2) / 2) / 2, 320L);
            return;
        }
        if (iE == 404) {
            float f48 = pointR.x / 2;
            int i33 = pointR.y;
            d(accService, f48, i33 - 5, f48, ((i33 / 2) / 2) / 2, 320L);
            return;
        }
        if (iE == 405) {
            int i34 = pointR.x / 2;
            float f49 = (i34 / 2) + i34;
            int i35 = pointR.y;
            d(accService, f49, i35 - 5, f49, ((i35 / 2) / 2) / 2, 320L);
            return;
        }
        if (iE == 406) {
            float f50 = (pointR.y / 2) / 2;
            d(accService, 5.0f, f50, 400.0f, f50, 320L);
        } else if (iE == 407) {
            float f51 = pointR.y / 2;
            d(accService, 5.0f, f51, 400.0f, f51, 320L);
        } else if (iE == 408) {
            int i36 = pointR.y / 2;
            float f52 = ((i36 / 2) / 2) + i36;
            d(accService, 5.0f, f52, 400.0f, f52, 320L);
        }
    }

    public static void c(AccService accService, PointF[] pointFArr, PointF[] pointFArr2, long j10) {
        GestureDescription.Builder builder = new GestureDescription.Builder();
        for (int i10 = 0; i10 < pointFArr.length; i10++) {
            Path path = new Path();
            PointF pointF = pointFArr[i10];
            path.moveTo(pointF.x, pointF.y);
            PointF pointF2 = pointFArr2[i10];
            path.lineTo(pointF2.x, pointF2.y);
            builder.addStroke(new GestureDescription.StrokeDescription(path, 0L, j10));
        }
        accService.dispatchGesture(builder.build(), null, null);
    }

    public static void d(AccService accService, float f10, float f11, float f12, float f13, long j10) {
        Path path = new Path();
        path.moveTo(f10, f11);
        path.lineTo(f12, f13);
        GestureDescription.Builder builder = new GestureDescription.Builder();
        builder.addStroke(new GestureDescription.StrokeDescription(path, 0L, j10));
        accService.dispatchGesture(builder.build(), null, null);
    }
}
