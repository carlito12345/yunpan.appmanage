package z6;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n2;
import androidx.recyclerview.widget.v1;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class b extends v1 {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f19439a;

    /* renamed from: b, reason: collision with root package name */
    public final List f19440b;

    public b() {
        Paint paint = new Paint();
        this.f19439a = paint;
        this.f19440b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // androidx.recyclerview.widget.v1
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, n2 n2Var) {
        super.onDrawOver(canvas, recyclerView, n2Var);
        Paint paint = this.f19439a;
        paint.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
        Iterator it = this.f19440b.iterator();
        while (it.hasNext()) {
            ((f) it.next()).getClass();
            ThreadLocal threadLocal = p0.a.f12538a;
            float f10 = 1.0f - 0.0f;
            paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f10)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f10)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f10)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f10))));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).a()) {
                canvas.drawLine(0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3513a.e(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3513a.a(), paint);
            } else {
                canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).f3513a.b(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f3513a.c(), 0.0f, paint);
            }
        }
    }
}
