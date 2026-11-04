package androidx.leanback.widget;

import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.WeakHashMap;
import x0.b1;

/* loaded from: classes.dex */
public final class a0 extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1619a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(int i10) {
        super(Float.class, "alpha");
        this.f1619a = i10;
        switch (i10) {
            case 1:
                super(Float.class, "diameter");
                break;
            case 2:
                super(Float.class, "translation_x");
                break;
            case 3:
                super(Integer.class, "streamPosition");
                break;
            case 4:
                super(PointF.class, "topLeft");
                break;
            case 5:
                super(PointF.class, "bottomRight");
                break;
            case 6:
                super(PointF.class, "bottomRight");
                break;
            case 7:
                super(PointF.class, "topLeft");
                break;
            case 8:
                super(PointF.class, RequestParameters.POSITION);
                break;
            case 9:
                super(Float.class, "translationAlpha");
                break;
            case 10:
                super(Rect.class, "clipBounds");
                break;
            default:
                break;
        }
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f1619a) {
            case 0:
                return Float.valueOf(((b0) obj).f1620a);
            case 1:
                return Float.valueOf(((b0) obj).f1624e);
            case 2:
                return Float.valueOf(((b0) obj).f1622c);
            case 3:
                return Integer.valueOf(((u0) obj).getStreamPosition());
            case 4:
                return null;
            case 5:
                return null;
            case 6:
                return null;
            case 7:
                return null;
            case 8:
                return null;
            case 9:
                return Float.valueOf(h4.d0.f6422a.C((View) obj));
            default:
                View view = (View) obj;
                WeakHashMap weakHashMap = b1.f17953a;
                if (Build.VERSION.SDK_INT >= 18) {
                    return x0.l0.a(view);
                }
                return null;
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f1619a) {
            case 0:
                b0 b0Var = (b0) obj;
                b0Var.f1620a = ((Float) obj2).floatValue();
                b0Var.a();
                b0Var.f1629j.invalidate();
                break;
            case 1:
                b0 b0Var2 = (b0) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                b0Var2.f1624e = fFloatValue;
                float f10 = fFloatValue / 2.0f;
                b0Var2.f1625f = f10;
                PagingIndicator pagingIndicator = b0Var2.f1629j;
                b0Var2.f1626g = f10 * pagingIndicator.f1535x;
                pagingIndicator.invalidate();
                break;
            case 2:
                b0 b0Var3 = (b0) obj;
                b0Var3.f1622c = ((Float) obj2).floatValue() * b0Var3.f1627h * b0Var3.f1628i;
                b0Var3.f1629j.invalidate();
                break;
            case 3:
                ((u0) obj).setStreamPosition(((Integer) obj2).intValue());
                break;
            case 4:
                h4.f fVar = (h4.f) obj;
                PointF pointF = (PointF) obj2;
                fVar.getClass();
                fVar.f6426a = Math.round(pointF.x);
                int iRound = Math.round(pointF.y);
                fVar.f6427b = iRound;
                int i10 = fVar.f6431f + 1;
                fVar.f6431f = i10;
                if (i10 == fVar.f6432g) {
                    h4.d0.a(fVar.f6430e, fVar.f6426a, iRound, fVar.f6428c, fVar.f6429d);
                    fVar.f6431f = 0;
                    fVar.f6432g = 0;
                    break;
                }
                break;
            case 5:
                h4.f fVar2 = (h4.f) obj;
                PointF pointF2 = (PointF) obj2;
                fVar2.getClass();
                fVar2.f6428c = Math.round(pointF2.x);
                int iRound2 = Math.round(pointF2.y);
                fVar2.f6429d = iRound2;
                int i11 = fVar2.f6432g + 1;
                fVar2.f6432g = i11;
                if (fVar2.f6431f == i11) {
                    h4.d0.a(fVar2.f6430e, fVar2.f6426a, fVar2.f6427b, fVar2.f6428c, iRound2);
                    fVar2.f6431f = 0;
                    fVar2.f6432g = 0;
                    break;
                }
                break;
            case 6:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                h4.d0.a(view, view.getLeft(), view.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                break;
            case 7:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                h4.d0.a(view2, Math.round(pointF4.x), Math.round(pointF4.y), view2.getRight(), view2.getBottom());
                break;
            case 8:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int iRound3 = Math.round(pointF5.x);
                int iRound4 = Math.round(pointF5.y);
                h4.d0.a(view3, iRound3, iRound4, view3.getWidth() + iRound3, view3.getHeight() + iRound4);
                break;
            case 9:
                float fFloatValue2 = ((Float) obj2).floatValue();
                h4.d0.f6422a.H((View) obj, fFloatValue2);
                break;
            default:
                View view4 = (View) obj;
                Rect rect = (Rect) obj2;
                WeakHashMap weakHashMap = b1.f17953a;
                if (Build.VERSION.SDK_INT >= 18) {
                    x0.l0.c(view4, rect);
                    break;
                }
                break;
        }
    }
}
