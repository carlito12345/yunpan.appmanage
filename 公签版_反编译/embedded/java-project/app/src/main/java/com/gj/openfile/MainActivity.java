package com.gj.openfile;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.content.FileProvider;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.gj.openfile.MainActivity;
import java.io.File;

/* loaded from: classes.dex */
public class MainActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f58a = 0;

    public final void a() {
        Bundle extras = getIntent().getExtras();
        File file = new File(extras.getString("file_path"));
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            Uri uriB = FileProvider.b(this, getPackageName() + ".fileprovider", file);
            intent.addFlags(1);
            intent.addFlags(2);
            intent.addFlags(64);
            intent.addFlags(128);
            intent.setDataAndType(uriB, extras.getString("file_type"));
            intent.setComponent(new ComponentName(extras.getString("pkg"), extras.getString("cls")));
            startActivity(intent);
        } catch (Exception unused) {
            Toast.makeText(this, "调用第三方失败", 0).show();
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_home);
        ((Button) findViewById(R.id.v_btn)).setOnClickListener(new View.OnClickListener() { // from class: f.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = MainActivity.f58a;
                this.f90a.finish();
            }
        });
        try {
            if (checkPermission("android.permission.READ_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == 0 && checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) == 0) {
                a();
            } else {
                requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 168);
            }
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 168) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                finish();
            } else {
                a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
    }
}
