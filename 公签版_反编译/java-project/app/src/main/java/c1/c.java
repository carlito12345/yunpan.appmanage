package c1;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import w.a3;

/* loaded from: classes.dex */
public abstract class c extends BaseAdapter implements Filterable {

    /* renamed from: g, reason: collision with root package name */
    public d f2852g;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2847b = true;

    /* renamed from: c, reason: collision with root package name */
    public Cursor f2848c = null;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2846a = false;

    /* renamed from: d, reason: collision with root package name */
    public int f2849d = -1;

    /* renamed from: e, reason: collision with root package name */
    public final a f2850e = new a(this);

    /* renamed from: f, reason: collision with root package name */
    public final b f2851f = new b(0, this);

    public c(Context context) {
    }

    public abstract void a(View view, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.f2848c;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.f2850e;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                b bVar = this.f2851f;
                if (bVar != null) {
                    cursor2.unregisterDataSetObserver(bVar);
                }
            }
            this.f2848c = cursor;
            if (cursor != null) {
                a aVar2 = this.f2850e;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                b bVar2 = this.f2851f;
                if (bVar2 != null) {
                    cursor.registerDataSetObserver(bVar2);
                }
                this.f2849d = cursor.getColumnIndexOrThrow("_id");
                this.f2846a = true;
                notifyDataSetChanged();
            } else {
                this.f2849d = -1;
                this.f2846a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract String c(Cursor cursor);

    public abstract View d(ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public final int getCount() {
        Cursor cursor;
        if (!this.f2846a || (cursor = this.f2848c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f2846a) {
            return null;
        }
        this.f2848c.moveToPosition(i10);
        if (view == null) {
            a3 a3Var = (a3) this;
            view = a3Var.f17005j.inflate(a3Var.f17004i, viewGroup, false);
        }
        a(view, this.f2848c);
        return view;
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        if (this.f2852g == null) {
            this.f2852g = new d(this);
        }
        return this.f2852g;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        Cursor cursor;
        if (!this.f2846a || (cursor = this.f2848c) == null) {
            return null;
        }
        cursor.moveToPosition(i10);
        return this.f2848c;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        Cursor cursor;
        if (this.f2846a && (cursor = this.f2848c) != null && cursor.moveToPosition(i10)) {
            return this.f2848c.getLong(this.f2849d);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f2846a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f2848c.moveToPosition(i10)) {
            throw new IllegalStateException(da.b.a(i10, "couldn't move cursor to position "));
        }
        if (view == null) {
            view = d(viewGroup);
        }
        a(view, this.f2848c);
        return view;
    }
}
