package v3;

import android.text.Html;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class i0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f16488a = Pattern.compile("(&#13;)?&#10;");

    public static String a(CharSequence charSequence) {
        return f16488a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
