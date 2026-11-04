package w;

import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import com.yunpan.appmanage.R;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class a3 extends c1.c implements View.OnClickListener {
    public static final /* synthetic */ int z = 0;

    /* renamed from: h, reason: collision with root package name */
    public final int f17003h;

    /* renamed from: i, reason: collision with root package name */
    public final int f17004i;

    /* renamed from: j, reason: collision with root package name */
    public final LayoutInflater f17005j;

    /* renamed from: k, reason: collision with root package name */
    public final SearchView f17006k;
    public final SearchableInfo l;

    /* renamed from: m, reason: collision with root package name */
    public final Context f17007m;

    /* renamed from: n, reason: collision with root package name */
    public final WeakHashMap f17008n;

    /* renamed from: p, reason: collision with root package name */
    public final int f17009p;

    /* renamed from: q, reason: collision with root package name */
    public int f17010q;
    public ColorStateList r;

    /* renamed from: s, reason: collision with root package name */
    public int f17011s;

    /* renamed from: t, reason: collision with root package name */
    public int f17012t;

    /* renamed from: v, reason: collision with root package name */
    public int f17013v;

    /* renamed from: w, reason: collision with root package name */
    public int f17014w;

    /* renamed from: x, reason: collision with root package name */
    public int f17015x;

    /* renamed from: y, reason: collision with root package name */
    public int f17016y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a3(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        super(context);
        int suggestionRowLayout = searchView.getSuggestionRowLayout();
        this.f17004i = suggestionRowLayout;
        this.f17003h = suggestionRowLayout;
        this.f17005j = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f17010q = 1;
        this.f17011s = -1;
        this.f17012t = -1;
        this.f17013v = -1;
        this.f17014w = -1;
        this.f17015x = -1;
        this.f17016y = -1;
        this.f17006k = searchView;
        this.l = searchableInfo;
        this.f17009p = searchView.getSuggestionCommitIconResId();
        this.f17007m = context;
        this.f17008n = weakHashMap;
    }

    public static String h(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0125  */
    @Override // c1.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(View view, Cursor cursor) throws PackageManager.NameNotFoundException, NumberFormatException, IOException {
        Drawable drawableF;
        ActivityInfo activityInfo;
        int iconResource;
        String strH;
        z2 z2Var = (z2) view.getTag();
        int i10 = this.f17016y;
        int i11 = i10 != -1 ? cursor.getInt(i10) : 0;
        TextView textView = z2Var.f17338a;
        if (textView != null) {
            String strH2 = h(cursor, this.f17011s);
            textView.setText(strH2);
            if (TextUtils.isEmpty(strH2)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
            }
        }
        Context context = this.f17007m;
        TextView textView2 = z2Var.f17339b;
        if (textView2 != null) {
            String strH3 = h(cursor, this.f17013v);
            if (strH3 != null) {
                if (this.r == null) {
                    TypedValue typedValue = new TypedValue();
                    context.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
                    this.r = context.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(strH3);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.r, null), 0, strH3.length(), 33);
                strH = spannableString;
            } else {
                strH = h(cursor, this.f17012t);
            }
            if (TextUtils.isEmpty(strH)) {
                if (textView != null) {
                    textView.setSingleLine(false);
                    textView.setMaxLines(2);
                }
            } else if (textView != null) {
                textView.setSingleLine(true);
                textView.setMaxLines(1);
            }
            textView2.setText(strH);
            if (TextUtils.isEmpty(strH)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
            }
        }
        ImageView imageView = z2Var.f17340c;
        if (imageView != null) {
            int i12 = this.f17014w;
            if (i12 == -1) {
                drawableF = null;
            } else {
                drawableF = f(cursor.getString(i12));
                if (drawableF == null) {
                    ComponentName searchActivity = this.l.getSearchActivity();
                    String strFlattenToShortString = searchActivity.flattenToShortString();
                    WeakHashMap weakHashMap = this.f17008n;
                    if (weakHashMap.containsKey(strFlattenToShortString)) {
                        Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(strFlattenToShortString);
                        drawableF = constantState == null ? null : constantState.newDrawable(context.getResources());
                    } else {
                        PackageManager packageManager = context.getPackageManager();
                        try {
                            activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            iconResource = activityInfo.getIconResource();
                        } catch (PackageManager.NameNotFoundException e7) {
                            e7.toString();
                        }
                        if (iconResource != 0) {
                            Drawable drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                            if (drawable == null) {
                                searchActivity.flattenToShortString();
                                drawableF = null;
                                weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                            } else {
                                drawableF = drawable;
                                weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                            }
                        } else {
                            drawableF = null;
                            weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                        }
                    }
                    if (drawableF == null) {
                        drawableF = context.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            imageView.setImageDrawable(drawableF);
            if (drawableF == null) {
                imageView.setVisibility(4);
            } else {
                imageView.setVisibility(0);
                drawableF.setVisible(false, false);
                drawableF.setVisible(true, false);
            }
        }
        ImageView imageView2 = z2Var.f17341d;
        if (imageView2 != null) {
            int i13 = this.f17015x;
            Drawable drawableF2 = i13 == -1 ? null : f(cursor.getString(i13));
            imageView2.setImageDrawable(drawableF2);
            if (drawableF2 == null) {
                imageView2.setVisibility(8);
            } else {
                imageView2.setVisibility(0);
                drawableF2.setVisible(false, false);
                drawableF2.setVisible(true, false);
            }
        }
        int i14 = this.f17010q;
        ImageView imageView3 = z2Var.f17342e;
        if (i14 != 2 && (i14 != 1 || (i11 & 1) == 0)) {
            imageView3.setVisibility(8);
            return;
        }
        imageView3.setVisibility(0);
        imageView3.setTag(textView.getText());
        imageView3.setOnClickListener(this);
    }

    @Override // c1.c
    public final void b(Cursor cursor) {
        try {
            super.b(cursor);
            if (cursor != null) {
                this.f17011s = cursor.getColumnIndex("suggest_text_1");
                this.f17012t = cursor.getColumnIndex("suggest_text_2");
                this.f17013v = cursor.getColumnIndex("suggest_text_2_url");
                this.f17014w = cursor.getColumnIndex("suggest_icon_1");
                this.f17015x = cursor.getColumnIndex("suggest_icon_2");
                this.f17016y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception unused) {
        }
    }

    @Override // c1.c
    public final String c(Cursor cursor) {
        String strH;
        String strH2;
        if (cursor == null) {
            return null;
        }
        String strH3 = h(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strH3 != null) {
            return strH3;
        }
        SearchableInfo searchableInfo = this.l;
        if (searchableInfo.shouldRewriteQueryFromData() && (strH2 = h(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strH2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (strH = h(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strH;
    }

    @Override // c1.c
    public final View d(ViewGroup viewGroup) {
        View viewInflate = this.f17005j.inflate(this.f17003h, viewGroup, false);
        viewInflate.setTag(new z2(viewInflate));
        ((ImageView) viewInflate.findViewById(R.id.edit_query)).setImageResource(this.f17009p);
        return viewInflate;
    }

    public final Drawable e(Uri uri) throws PackageManager.NameNotFoundException, NumberFormatException, FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f17007m.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    public final Drawable f(String str) throws PackageManager.NameNotFoundException, NumberFormatException, IOException {
        WeakHashMap weakHashMap = this.f17008n;
        Context context = this.f17007m;
        Drawable drawableE = null;
        if (str != null && !str.isEmpty() && !"0".equals(str)) {
            try {
                int i10 = Integer.parseInt(str);
                String str2 = "android.resource://" + context.getPackageName() + "/" + i10;
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(str2);
                Drawable drawableNewDrawable = constantState == null ? null : constantState.newDrawable();
                if (drawableNewDrawable != null) {
                    return drawableNewDrawable;
                }
                Drawable drawableE2 = n0.g.e(context, i10);
                if (drawableE2 != null) {
                    weakHashMap.put(str2, drawableE2.getConstantState());
                }
                return drawableE2;
            } catch (Resources.NotFoundException unused) {
                return null;
            } catch (NumberFormatException unused2) {
                Drawable.ConstantState constantState2 = (Drawable.ConstantState) weakHashMap.get(str);
                Drawable drawableNewDrawable2 = constantState2 == null ? null : constantState2.newDrawable();
                if (drawableNewDrawable2 != null) {
                    return drawableNewDrawable2;
                }
                Uri uri = Uri.parse(str);
                try {
                    if ("android.resource".equals(uri.getScheme())) {
                        try {
                            drawableE = e(uri);
                        } catch (Resources.NotFoundException unused3) {
                            throw new FileNotFoundException("Resource does not exist: " + uri);
                        }
                    } else {
                        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                        if (inputStreamOpenInputStream == null) {
                            throw new FileNotFoundException("Failed to open " + uri);
                        }
                        try {
                            drawableE = Drawable.createFromStream(inputStreamOpenInputStream, null);
                        } finally {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException unused4) {
                                uri.toString();
                            }
                        }
                    }
                } catch (FileNotFoundException e7) {
                    if (uri != null) {
                        uri.toString();
                    }
                    e7.getMessage();
                }
                if (drawableE != null) {
                    weakHashMap.put(str, drawableE.getConstantState());
                }
            }
        }
        return drawableE;
    }

    public final Cursor g(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        builderFragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f17007m.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // c1.c, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e7) {
            View viewInflate = this.f17005j.inflate(this.f17004i, viewGroup, false);
            if (viewInflate != null) {
                ((z2) viewInflate.getTag()).f17338a.setText(e7.toString());
            }
            return viewInflate;
        }
    }

    @Override // c1.c, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e7) {
            View viewD = d(viewGroup);
            ((z2) viewD.getTag()).f17338a.setText(e7.toString());
            return viewD;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.f2848c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f2848c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f17006k.r((CharSequence) tag);
        }
    }
}
