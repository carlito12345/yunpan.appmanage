package ha;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class h6 implements AdapterView.OnItemSelectedListener {
    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        adapterView.getItemAtPosition(i10).toString();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
