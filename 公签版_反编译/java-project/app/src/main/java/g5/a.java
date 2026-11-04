package g5;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f6043c = {"_data"};

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f6044d = {"_data"};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6045a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentResolver f6046b;

    public /* synthetic */ a(ContentResolver contentResolver, int i10) {
        this.f6045a = i10;
        this.f6046b = contentResolver;
    }

    @Override // g5.c
    public final Cursor a(Uri uri) {
        switch (this.f6045a) {
            case 0:
                return this.f6046b.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f6043c, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
            default:
                return this.f6046b.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f6044d, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }
}
