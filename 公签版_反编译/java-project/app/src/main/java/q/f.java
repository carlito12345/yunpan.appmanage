package q;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final c f12831a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12832b;

    public f(Context context) {
        this(context, g.g(context, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    public g create() {
        c cVar = this.f12831a;
        g gVar = new g(cVar.f12782a, this.f12832b);
        View view = cVar.f12786e;
        e eVar = gVar.f12836f;
        if (view != null) {
            eVar.f12827v = view;
        } else {
            CharSequence charSequence = cVar.f12785d;
            if (charSequence != null) {
                eVar.f12811d = charSequence;
                TextView textView = eVar.f12825t;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = cVar.f12784c;
            if (drawable != null) {
                eVar.r = drawable;
                ImageView imageView = eVar.f12824s;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    eVar.f12824s.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = cVar.f12787f;
        if (charSequence2 != null) {
            eVar.d(-1, charSequence2, cVar.f12788g);
        }
        CharSequence charSequence3 = cVar.f12789h;
        if (charSequence3 != null) {
            eVar.d(-2, charSequence3, cVar.f12790i);
        }
        if (cVar.f12792k != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) cVar.f12783b.inflate(eVar.z, (ViewGroup) null);
            int i10 = cVar.f12794n ? eVar.A : eVar.B;
            Object obj = cVar.f12792k;
            ?? dVar = obj;
            if (obj == null) {
                dVar = new d(cVar.f12782a, i10);
            }
            eVar.f12828w = dVar;
            eVar.f12829x = cVar.f12795o;
            if (cVar.l != null) {
                alertController$RecycleListView.setOnItemClickListener(new b(cVar, eVar));
            }
            if (cVar.f12794n) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            eVar.f12812e = alertController$RecycleListView;
        }
        View view2 = cVar.f12793m;
        if (view2 != null) {
            eVar.f12813f = view2;
            eVar.f12814g = false;
        }
        gVar.setCancelable(true);
        gVar.setCanceledOnTouchOutside(true);
        gVar.setOnCancelListener(null);
        gVar.setOnDismissListener(null);
        v.l lVar = cVar.f12791j;
        if (lVar != null) {
            gVar.setOnKeyListener(lVar);
        }
        return gVar;
    }

    public Context getContext() {
        return this.f12831a.f12782a;
    }

    public f setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
        c cVar = this.f12831a;
        cVar.f12789h = cVar.f12782a.getText(i10);
        cVar.f12790i = onClickListener;
        return this;
    }

    public f setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
        c cVar = this.f12831a;
        cVar.f12787f = cVar.f12782a.getText(i10);
        cVar.f12788g = onClickListener;
        return this;
    }

    public f setTitle(CharSequence charSequence) {
        this.f12831a.f12785d = charSequence;
        return this;
    }

    public f setView(View view) {
        this.f12831a.f12793m = view;
        return this;
    }

    public f(Context context, int i10) {
        this.f12831a = new c(new ContextThemeWrapper(context, g.g(context, i10)));
        this.f12832b = i10;
    }
}
