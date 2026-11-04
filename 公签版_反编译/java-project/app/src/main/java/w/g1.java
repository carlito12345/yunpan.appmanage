package w;

import android.text.StaticLayout;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class g1 extends f1 {
    @Override // w.f1, w.h1
    public void a(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(textView.getTextDirectionHeuristic());
    }

    @Override // w.h1
    public boolean b(TextView textView) {
        return textView.isHorizontallyScrollable();
    }
}
