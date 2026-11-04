package w;

import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.widget.TextView;

/* loaded from: classes.dex */
public class f1 extends h1 {
    @Override // w.h1
    public void a(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(tb.a.c(i1.e("getTextDirectionHeuristic", textView, TextDirectionHeuristics.FIRSTSTRONG_LTR)));
    }
}
