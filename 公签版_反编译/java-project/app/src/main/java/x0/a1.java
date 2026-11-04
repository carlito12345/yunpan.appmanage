package x0;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.yunpan.appmanage.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class a1 {

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f17947d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f17948a = null;

    /* renamed from: b, reason: collision with root package name */
    public SparseArray f17949b = null;

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f17950c = null;

    public final View a(View view) {
        int size;
        WeakHashMap weakHashMap = this.f17948a;
        if (weakHashMap != null && weakHashMap.containsKey(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View viewA = a(viewGroup.getChildAt(childCount));
                    if (viewA != null) {
                        return viewA;
                    }
                }
            }
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                arrayList.get(size).getClass();
                throw new ClassCastException();
            }
        }
        return null;
    }
}
