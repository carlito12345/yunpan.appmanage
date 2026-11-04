package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import i0.e;

/* loaded from: classes.dex */
public class Guideline extends View {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1031a;

    public Guideline(Context context) {
        super(context);
        this.f1031a = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z) {
        this.f1031a = z;
    }

    public void setGuidelineBegin(int i10) {
        e eVar = (e) getLayoutParams();
        if (this.f1031a && eVar.f8251a == i10) {
            return;
        }
        eVar.f8251a = i10;
        setLayoutParams(eVar);
    }

    public void setGuidelineEnd(int i10) {
        e eVar = (e) getLayoutParams();
        if (this.f1031a && eVar.f8253b == i10) {
            return;
        }
        eVar.f8253b = i10;
        setLayoutParams(eVar);
    }

    public void setGuidelinePercent(float f10) {
        e eVar = (e) getLayoutParams();
        if (this.f1031a && eVar.f8255c == f10) {
            return;
        }
        eVar.f8255c = f10;
        setLayoutParams(eVar);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1031a = true;
        super.setVisibility(8);
    }
}
