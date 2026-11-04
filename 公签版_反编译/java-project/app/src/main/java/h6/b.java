package h6;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import gf.g;
import ue.d;

/* loaded from: classes.dex */
public final class b extends RecyclerView.ViewHolder implements f6.a {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f6680b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f6681a;

    static {
        new g(29);
    }

    public b(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        g.x(frameLayout);
        d.e(viewGroup, "parent");
        super(frameLayout);
        this.f6681a = frameLayout;
    }
}
