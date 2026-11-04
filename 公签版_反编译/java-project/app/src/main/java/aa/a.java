package aa;

import a5.d;
import com.yunpan.appmanage.ui.ActivityTextAiOnYP;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import m7.e;
import nh.b;
import ua.i7;

/* loaded from: classes.dex */
public final class a implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f564a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f565b;

    public /* synthetic */ a(int i10, Object obj) {
        this.f564a = i10;
        this.f565b = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        Object obj2 = this.f565b;
        switch (this.f564a) {
            case 0:
                if ("onCabinChanged".equals(method.getName()) && objArr != null && objArr.length > 0) {
                    Object obj3 = objArr[0];
                    boolean zA = b.a(obj3, "isDriverDoorOpen");
                    boolean zA2 = b.a(obj3, "isPassengerDoorOpen");
                    boolean zA3 = b.a(obj3, "isRearDoorOpen");
                    boolean zA4 = b.a(obj3, "isHoodDoorOpen");
                    b.e(obj3, "getCabinRearDoorOpenStatus");
                    ActivityTextAiOnYP activityTextAiOnYP = ((i7) obj2).f15739a;
                    activityTextAiOnYP.C.setText("isDriverDoorOpen: " + zA);
                    activityTextAiOnYP.D.setText("isPassengerDoorOpen: " + zA2);
                    activityTextAiOnYP.E.setText("isRearDoorOpen: " + zA3);
                    activityTextAiOnYP.F.setText("isHoodDoorOpen: " + zA4);
                }
                return null;
            case 1:
                if ("onCarSensorDataChanged".equals(method.getName()) && objArr != null && objArr.length > 0) {
                    Object obj4 = objArr[0];
                    int iE = b.e(obj4, "getmCarLowBeamMode");
                    int iE2 = b.e(obj4, "getmCarHighBeamMode");
                    if (iE != 1 && iE2 != 1) {
                        z = false;
                    }
                    ActivityTextAiOnYP activityTextAiOnYP2 = ((i7) obj2).f15739a;
                    activityTextAiOnYP2.N.setText("大灯状态: ".concat(z ? "开启" : "关闭"));
                    activityTextAiOnYP2.O.setText("近光: " + iE + ", 远光: " + iE2);
                }
                return null;
            case 2:
                if ("onHvacChanged".equals(method.getName()) && objArr != null && objArr.length > 0) {
                    Object obj5 = objArr[0];
                    int iE3 = b.e(obj5, "getWindSpd");
                    int iE4 = b.e(obj5, "getPm25Value");
                    z = iE3 > 0;
                    ActivityTextAiOnYP activityTextAiOnYP3 = ((i7) obj2).f15739a;
                    activityTextAiOnYP3.P.setText("isHvacOn: " + z);
                    activityTextAiOnYP3.R.setText("风速: " + iE3 + ", PM2.5: " + iE4);
                }
                return null;
            default:
                String name = method.getName();
                name.getClass();
                e eVar = (e) obj2;
                if (name.equals("onTetheringStarted") || name.equals("onTetheringFailed")) {
                    eVar.getClass();
                } else {
                    Map map = d.f406h;
                    try {
                        obj.getClass().getMethod(d.c(method), method.getParameterTypes()).invoke(obj, objArr);
                    } catch (InvocationTargetException e7) {
                        throw e7.getCause();
                    }
                }
                return null;
        }
    }
}
