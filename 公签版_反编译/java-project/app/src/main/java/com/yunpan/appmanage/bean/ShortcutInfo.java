package com.yunpan.appmanage.bean;

import android.content.Intent;

/* loaded from: classes.dex */
public class ShortcutInfo {
    private String className;
    private int iconResId;

    /* renamed from: id, reason: collision with root package name */
    private String f3781id;
    private Intent intent;
    private String label;
    private String packageName;

    public ShortcutInfo() {
    }

    public String getClassName() {
        return this.className;
    }

    public int getIconResId() {
        return this.iconResId;
    }

    public String getId() {
        return this.f3781id;
    }

    public Intent getIntent() {
        return this.intent;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public void setIconResId(int i10) {
        this.iconResId = i10;
    }

    public void setId(String str) {
        this.f3781id = str;
    }

    public void setIntent(Intent intent) {
        this.intent = intent;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public ShortcutInfo(String str, Intent intent) {
        this.label = str;
        this.intent = intent;
        if (intent == null || intent.getComponent() == null) {
            return;
        }
        this.packageName = intent.getComponent().getPackageName();
        this.className = intent.getComponent().getClassName();
    }
}
