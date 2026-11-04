package a5;

import android.os.Build;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.f0;
import androidx.recyclerview.widget.t;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.WeakHashMap;
import u4.x;
import x0.b1;
import x0.p0;

/* loaded from: classes.dex */
public final class a implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f398a;

    public /* synthetic */ a(int i10) {
        this.f398a = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00e1  */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int compare(Object obj, Object obj2) {
        int i10 = -1;
        switch (this.f398a) {
            case 0:
                Method method = (Method) obj;
                Method method2 = (Method) obj2;
                return (method.getDeclaringClass() + method.getName() + Arrays.toString(method.getParameterTypes()) + method.getReturnType()).compareTo(method2.getDeclaringClass() + method2.getName() + Arrays.toString(method2.getParameterTypes()) + method2.getReturnType());
            case 1:
                return ((t) obj).f2275a - ((t) obj2).f2275a;
            case 2:
                f0 f0Var = (f0) obj;
                f0 f0Var2 = (f0) obj2;
                RecyclerView recyclerView = f0Var.f2109d;
                if ((recyclerView == null) == (f0Var2.f2109d == null)) {
                    boolean z = f0Var.f2106a;
                    if (z == f0Var2.f2106a) {
                        i10 = f0Var2.f2107b - f0Var.f2107b;
                        if (i10 == 0) {
                            int i11 = f0Var.f2108c - f0Var2.f2108c;
                            if (i11 != 0) {
                                return i11;
                            }
                            return 0;
                        }
                    } else if (!z) {
                    }
                } else if (recyclerView == null) {
                    i10 = 1;
                }
                return i10;
            case 3:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            case 4:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                for (int i12 = 0; i12 < bArr.length && i12 < bArr2.length; i12++) {
                    int i13 = (bArr[i12] & 255) - (bArr2[i12] & 255);
                    if (i13 != 0) {
                        return i13;
                    }
                }
                return bArr.length - bArr2.length;
            case 5:
                return ((View) obj).getTop() - ((View) obj2).getTop();
            case 6:
                ((gf.a) obj).getClass();
                throw null;
            case 7:
                View view = (View) obj;
                View view2 = (View) obj2;
                WeakHashMap weakHashMap = b1.f17953a;
                int i14 = Build.VERSION.SDK_INT;
                float fM = i14 >= 21 ? p0.m(view) : 0.0f;
                float fM2 = i14 >= 21 ? p0.m(view2) : 0.0f;
                if (fM > fM2) {
                    return -1;
                }
                return fM < fM2 ? 1 : 0;
            case 8:
                return ((k4.c) obj).f10134b - ((k4.c) obj2).f10134b;
            case 9:
                k4.d dVar = (k4.d) ((View) obj).getLayoutParams();
                k4.d dVar2 = (k4.d) ((View) obj2).getLayoutParams();
                boolean z4 = dVar.f10138a;
                return z4 != dVar2.f10138a ? z4 ? 1 : -1 : dVar.f10142e - dVar2.f10142e;
            case 10:
                return ((int[]) obj)[0] - ((int[]) obj2)[0];
            case 11:
                return ((x) obj).b().compareTo(((x) obj2).b());
            default:
                return ((String) ((Map.Entry) obj2).getKey()).length() - ((String) ((Map.Entry) obj).getKey()).length();
        }
    }
}
