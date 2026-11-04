package q;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class e {
    public final int A;
    public final int B;
    public final boolean C;
    public final com.yunpan.appmanage.carsdk.u D;

    /* renamed from: a, reason: collision with root package name */
    public final Context f12808a;

    /* renamed from: b, reason: collision with root package name */
    public final g f12809b;

    /* renamed from: c, reason: collision with root package name */
    public final Window f12810c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f12811d;

    /* renamed from: e, reason: collision with root package name */
    public AlertController$RecycleListView f12812e;

    /* renamed from: f, reason: collision with root package name */
    public View f12813f;

    /* renamed from: h, reason: collision with root package name */
    public Button f12815h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f12816i;

    /* renamed from: j, reason: collision with root package name */
    public Message f12817j;

    /* renamed from: k, reason: collision with root package name */
    public Button f12818k;
    public CharSequence l;

    /* renamed from: m, reason: collision with root package name */
    public Message f12819m;

    /* renamed from: n, reason: collision with root package name */
    public Button f12820n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f12821o;

    /* renamed from: p, reason: collision with root package name */
    public Message f12822p;

    /* renamed from: q, reason: collision with root package name */
    public NestedScrollView f12823q;
    public Drawable r;

    /* renamed from: s, reason: collision with root package name */
    public ImageView f12824s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f12825t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f12826u;

    /* renamed from: v, reason: collision with root package name */
    public View f12827v;

    /* renamed from: w, reason: collision with root package name */
    public ListAdapter f12828w;

    /* renamed from: y, reason: collision with root package name */
    public final int f12830y;
    public final int z;

    /* renamed from: g, reason: collision with root package name */
    public boolean f12814g = false;

    /* renamed from: x, reason: collision with root package name */
    public int f12829x = -1;
    public final androidx.leanback.widget.h0 E = new androidx.leanback.widget.h0(4, this);

    public e(Context context, g gVar, Window window) {
        this.f12808a = context;
        this.f12809b = gVar;
        this.f12810c = window;
        this.D = new com.yunpan.appmanage.carsdk.u(gVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, p.a.f12519e, R.attr.alertDialogStyle, 0);
        this.f12830y = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.z = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.A = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.B = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.C = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        gVar.e().g(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void b(ViewGroup viewGroup, View view, View view2) {
        if (view != null) {
            view.setVisibility(viewGroup.canScrollVertically(-1) ? 0 : 4);
        }
        if (view2 != null) {
            view2.setVisibility(viewGroup.canScrollVertically(1) ? 0 : 4);
        }
    }

    public static ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void d(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.D.obtainMessage(i10, onClickListener) : null;
        if (i10 == -3) {
            this.f12821o = charSequence;
            this.f12822p = messageObtainMessage;
        } else if (i10 == -2) {
            this.l = charSequence;
            this.f12819m = messageObtainMessage;
        } else {
            if (i10 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f12816i = charSequence;
            this.f12817j = messageObtainMessage;
        }
    }
}
