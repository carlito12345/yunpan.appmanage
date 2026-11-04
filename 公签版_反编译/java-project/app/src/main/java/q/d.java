package q;

import android.R;
import android.view.ContextThemeWrapper;
import android.widget.ArrayAdapter;

/* loaded from: classes.dex */
public final class d extends ArrayAdapter {
    public d(ContextThemeWrapper contextThemeWrapper, int i10) {
        super(contextThemeWrapper, i10, R.id.text1, (Object[]) null);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
