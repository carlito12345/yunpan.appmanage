package c1;

import android.database.Cursor;
import android.widget.Filter;
import androidx.appcompat.widget.SearchView;
import w.a3;

/* loaded from: classes.dex */
public final class d extends Filter {

    /* renamed from: a, reason: collision with root package name */
    public final c f2853a;

    public d(c cVar) {
        this.f2853a = cVar;
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return ((a3) this.f2853a).c((Cursor) obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        String string;
        Cursor cursorG;
        a3 a3Var = (a3) this.f2853a;
        if (charSequence == null) {
            string = "";
        } else {
            a3Var.getClass();
            string = charSequence.toString();
        }
        SearchView searchView = a3Var.f17006k;
        if (searchView.getVisibility() == 0 && searchView.getWindowVisibility() == 0) {
            try {
                cursorG = a3Var.g(a3Var.l, string);
                if (cursorG != null) {
                    cursorG.getCount();
                }
            } catch (RuntimeException unused) {
            }
        } else {
            cursorG = null;
        }
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorG != null) {
            filterResults.count = cursorG.getCount();
            filterResults.values = cursorG;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        c cVar = this.f2853a;
        Cursor cursor = cVar.f2848c;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        ((a3) cVar).b((Cursor) obj);
    }
}
