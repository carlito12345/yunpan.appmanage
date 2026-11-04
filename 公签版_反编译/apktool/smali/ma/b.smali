.class public final synthetic Lma/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lcom/android/apksig/internal/compat/IntConsumerCompat;
.implements Lha/ea;
.implements Lha/cf;
.implements Lha/af;
.implements Lc6/e;
.implements Lea/f;
.implements Lha/ia;
.implements Lha/y6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lma/b;->a:I

    iput-object p1, p0, Lma/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lma/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e(Lmc/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lma/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx9/w3;

    .line 4
    .line 5
    sget v1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->E:I

    .line 6
    .line 7
    iget-object v1, p0, Lma/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v2, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 28
    .line 29
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 30
    .line 31
    filled-new-array {v2, v3}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    aget v3, v2, v3

    .line 37
    .line 38
    aget v2, v2, v4

    .line 39
    .line 40
    if-eq v3, v2, :cond_0

    .line 41
    .line 42
    const-string v0, "\u56fe\u6807\u7684\u5bbd\u9ad8\u5fc5\u987b\u4e00\u81f4"

    .line 43
    .line 44
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/Exception;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v2, 0x12c

    .line 57
    .line 58
    if-le v3, v2, :cond_1

    .line 59
    .line 60
    const-string v0, "\u56fe\u6807\u5c3a\u5bf8\u4e0d\u8981\u8d85\u8fc7 300*300"

    .line 61
    .line 62
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/Exception;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    :try_start_1
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v1, v1, Lda/g;->A:Lda/g;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, "/FloatButtonIco"

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    const-string p1, "\u590d\u5236\u56fe\u6807\u6587\u4ef6\u5931\u8d25"

    .line 118
    .line 119
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_1
    const-string v0, "\u65e0\u6cd5\u5206\u8fa8\u56fe\u7247\u5c3a\u5bf8"

    .line 124
    .line 125
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/lang/Exception;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method

.method private final f(Lmc/b;)V
    .locals 4

    .line 1
    const-string v0, "policy_control"

    .line 2
    .line 3
    iget-object v1, p0, Lma/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    sget v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;->N:I

    .line 8
    .line 9
    iget-object v2, p0, Lma/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityImmersive;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-eqz v2, :cond_0

    .line 27
    .line 28
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 29
    .line 30
    iput-object v1, v2, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;

    .line 31
    .line 32
    :try_start_1
    iget-object v3, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 33
    .line 34
    invoke-virtual {v3, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    :catch_1
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, La2/w0;->P()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 56
    .line 57
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 58
    .line 59
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v0, "\u65e0\u6743\u9650\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e\uff01\u9700\u8981\u6388\u4e88(WRITE_SECURE_SETTINGS)\u6743\u9650\uff0croot\u6216adb\u6216\u516c\u7b7e\u7cfb\u7edf\u90fd\u53ef\u4ee5\uff01"

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "settings put global policy_control "

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget v2, v2, Lfa/a0;->a:I

    .line 86
    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 90
    .line 91
    iput-object v1, v2, Lcom/yunpan/appmanage/util/w;->s:Ljava/lang/String;

    .line 92
    .line 93
    :try_start_2
    iget-object v3, v2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 94
    .line 95
    invoke-virtual {v3, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    .line 97
    .line 98
    :catch_2
    invoke-virtual {v2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 106
    .line 107
    :goto_2
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    return-void
.end method

.method private final h(Lmc/b;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lma/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    sget v1, Lcom/yunpan/appmanage/ui/ActivityInputMethod;->C:I

    .line 6
    .line 7
    iget-object v1, p0, Lma/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityInputMethod;

    .line 10
    .line 11
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "default_input_method"

    .line 18
    .line 19
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string v3, "null"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    :cond_0
    const-string v2, ""

    .line 34
    .line 35
    :cond_1
    const-string v3, "input_method"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    :try_start_0
    new-instance v7, Lcom/yunpan/appmanage/bean/InputMethodBean;

    .line 72
    .line 73
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-interface {v8, v6}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    iget-object v8, v8, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-direct {v7, v8, v6, v5, v9}, Lcom/yunpan/appmanage/bean/InputMethodBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    new-instance v7, Lcom/yunpan/appmanage/bean/InputMethodBean;

    .line 99
    .line 100
    iget-object v8, v1, Lda/g;->A:Lda/g;

    .line 101
    .line 102
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v4, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-direct {v7, v4, v6, v5, v8}, Lcom/yunpan/appmanage/bean/InputMethodBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method private final i(Lmc/b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lma/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/bean/InputMethodBean;

    .line 4
    .line 5
    sget v1, Lcom/yunpan/appmanage/ui/ActivityInputMethod;->C:I

    .line 6
    .line 7
    iget-object v1, p0, Lma/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityInputMethod;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget-object v3, v1, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "enabled_input_methods"

    .line 22
    .line 23
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/InputMethodBean;->className:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lda/g;->A:Lda/g;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "default_input_method"

    .line 35
    .line 36
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/InputMethodBean;->className:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    nop

    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_0
    if-nez v1, :cond_1

    .line 46
    .line 47
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "settings get secure enabled_input_methods \'"

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/InputMethodBean;->className:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, "\'"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "settings put secure default_input_method \'"

    .line 79
    .line 80
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/InputMethodBean;->className:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget v0, v0, Lfa/a0;->a:I

    .line 100
    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    :cond_0
    move v1, v2

    .line 105
    :cond_1
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const-string v0, "\u8bbe\u7f6e\u5931\u8d25"

    .line 112
    .line 113
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void
.end method

.method private final j(Lmc/b;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lma/b;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v3, Landroid/net/Uri;

    .line 7
    .line 8
    sget v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->P:I

    .line 9
    .line 10
    iget-object v4, p0, Lma/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 22
    .line 23
    .line 24
    new-instance v5, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string v7, "1.tmp"

    .line 31
    .line 32
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v4, v3, v5}, Lcom/yunpan/appmanage/ui/ActivityInstaller;->x(Landroid/net/Uri;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 36
    .line 37
    .line 38
    :try_start_2
    new-instance v3, Lef/b;

    .line 39
    .line 40
    invoke-direct {v3, v5}, Lef/b;-><init>(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->G:Lef/b;

    .line 44
    .line 45
    invoke-virtual {v3}, Lef/b;->M()V

    .line 46
    .line 47
    .line 48
    iget-object v3, v3, Lef/b;->e:Lff/c;

    .line 49
    .line 50
    iput-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 51
    .line 52
    iget-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    new-instance v6, Lha/db;

    .line 55
    .line 56
    const/16 v7, 0x1b

    .line 57
    .line 58
    invoke-direct {v6, v7, v4}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 65
    .line 66
    iget v6, v3, Lcom/yunpan/appmanage/util/w;->T:I

    .line 67
    .line 68
    const/4 v7, 0x3

    .line 69
    if-eq v6, v2, :cond_4

    .line 70
    .line 71
    if-ne v6, v7, :cond_0

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_0
    iget-boolean v6, v3, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 76
    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 80
    .line 81
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 82
    .line 83
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/k;->h:Z

    .line 84
    .line 85
    if-nez v6, :cond_5

    .line 86
    .line 87
    sget-object v6, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    invoke-static {}, Lv9/c;->a()Lv9/i;

    .line 90
    .line 91
    .line 92
    iget-object v6, v3, Lcom/yunpan/appmanage/util/w;->U:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_1

    .line 99
    .line 100
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityNezha;->y()Z

    .line 101
    .line 102
    .line 103
    :cond_1
    iget v6, v3, Lcom/yunpan/appmanage/util/w;->V:I

    .line 104
    .line 105
    const/4 v8, -0x1

    .line 106
    if-ne v6, v8, :cond_3

    .line 107
    .line 108
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 109
    .line 110
    const-string v8, "MTK"

    .line 111
    .line 112
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 119
    .line 120
    const-string v8, "xecarx"

    .line 121
    .line 122
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    new-array v6, v1, [Ljava/lang/String;

    .line 129
    .line 130
    const-string v8, "getprop ro.ecarx.version.platform"

    .line 131
    .line 132
    aput-object v8, v6, v0

    .line 133
    .line 134
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Landroidx/room/s;->q()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_2

    .line 147
    .line 148
    invoke-virtual {v6}, Landroidx/room/s;->k()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    check-cast v6, Ljava/lang/String;

    .line 157
    .line 158
    const-string v8, "ECARX_E02_"

    .line 159
    .line 160
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_2

    .line 165
    .line 166
    invoke-virtual {v3, v1}, Lcom/yunpan/appmanage/util/w;->z(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v1}, Lcom/yunpan/appmanage/util/w;->s(Z)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v3, v0}, Lcom/yunpan/appmanage/util/w;->z(I)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_0
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 177
    .line 178
    invoke-virtual {v0}, Lfa/h0;->e()V

    .line 179
    .line 180
    .line 181
    :catch_1
    :goto_1
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 182
    .line 183
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->h:Z

    .line 184
    .line 185
    if-nez v0, :cond_5

    .line 186
    .line 187
    iget-boolean v0, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->F:Z

    .line 188
    .line 189
    if-nez v0, :cond_5

    .line 190
    .line 191
    const-wide/16 v0, 0x1f4

    .line 192
    .line 193
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    :goto_2
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 198
    .line 199
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/k;->g()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 205
    .line 206
    if-nez v0, :cond_5

    .line 207
    .line 208
    const-string v0, "\u6b63\u5728\u8fde\u63a5[\u591a\u5c4f\u4e92\u52a8]\u670d\u52a1"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Lcom/yunpan/appmanage/ui/ActivityHome;->G()V

    .line 214
    .line 215
    .line 216
    iput-boolean v1, v4, Lcom/yunpan/appmanage/ui/ActivityInstaller;->O:Z

    .line 217
    .line 218
    const-wide/16 v0, 0x3e8

    .line 219
    .line 220
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 221
    .line 222
    .line 223
    :cond_5
    const-string v0, "\u6b63\u5728\u5b89\u88c5\u4e2d"

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 229
    .line 230
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->T:I

    .line 231
    .line 232
    const-string v3, "\u5b89\u88c5\u5931\u8d25\uff1a"

    .line 233
    .line 234
    const-string v6, "\u5b89\u88c5\u6210\u529f"

    .line 235
    .line 236
    if-eq v1, v2, :cond_e

    .line 237
    .line 238
    if-ne v1, v7, :cond_6

    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :cond_6
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/w;->y:Z

    .line 243
    .line 244
    const-string v2, "\u5b89\u88c5\u5668\uff1a\u6b63\u5728\u5b89\u88c5\u4e2d...."

    .line 245
    .line 246
    const v7, 0x7f13016f

    .line 247
    .line 248
    .line 249
    if-nez v1, :cond_b

    .line 250
    .line 251
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {}, La2/w0;->P()Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_7

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_7
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 264
    .line 265
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 266
    .line 267
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 268
    .line 269
    if-eqz v1, :cond_b

    .line 270
    .line 271
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 272
    .line 273
    const/16 v8, 0x17

    .line 274
    .line 275
    if-ge v1, v8, :cond_b

    .line 276
    .line 277
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 282
    .line 283
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 284
    .line 285
    iget v8, v8, Lcom/yunpan/appmanage/util/k;->n:I

    .line 286
    .line 287
    invoke-static {v8, v1}, La2/w0;->Y(ILjava/lang/String;)Lfa/x;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-boolean v8, v1, Lfa/x;->a:Z

    .line 292
    .line 293
    if-nez v8, :cond_a

    .line 294
    .line 295
    iget v8, v1, Lfa/x;->b:I

    .line 296
    .line 297
    const/16 v9, -0x6f

    .line 298
    .line 299
    if-eq v8, v9, :cond_a

    .line 300
    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v9, "pm\u547d\u4ee4\u6a21\u5f0f\u5b89\u88c5\u5931\u8d25,\u4ea4\u7531\u5b89\u88c5\u5668\u6765\u5b89\u88c5\n"

    .line 304
    .line 305
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v1, Lfa/x;->c:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 321
    .line 322
    if-nez v0, :cond_9

    .line 323
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    iget-object v1, v4, Lda/g;->A:Lda/g;

    .line 330
    .line 331
    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lma/h;->a:Lma/i;

    .line 349
    .line 350
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_8

    .line 363
    .line 364
    invoke-virtual {p1, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_5

    .line 368
    .line 369
    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :cond_9
    iget-object v0, v4, Lda/g;->A:Lda/g;

    .line 379
    .line 380
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_a
    iget-object v0, v1, Lfa/x;->c:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_b
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 396
    .line 397
    if-nez v0, :cond_d

    .line 398
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    iget-object v1, v4, Lda/g;->A:Lda/g;

    .line 405
    .line 406
    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    sget-object v0, Lma/h;->a:Lma/i;

    .line 424
    .line 425
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_c

    .line 438
    .line 439
    invoke-virtual {p1, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_d
    const-string v0, "\u5df2\u4ea4\u7ed9\u5176\u5b83\u5b89\u88c5\u5668\u5b89\u88c5"

    .line 452
    .line 453
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    iget-object v0, v4, Lda/g;->A:Lda/g;

    .line 457
    .line 458
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_e
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    new-instance v1, Lha/ne;

    .line 471
    .line 472
    invoke-direct {v1, p1, v2}, Lha/ne;-><init>(Lmc/b;I)V

    .line 473
    .line 474
    .line 475
    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->G(Ljava/lang/String;Lma/k;)Lma/l;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lma/l;->a()Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_f

    .line 484
    .line 485
    invoke-virtual {p1, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v0, v0, Lma/l;->c:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    :goto_5
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 507
    .line 508
    .line 509
    goto :goto_7

    .line 510
    :catch_2
    const-string v0, "\u5931\u8d25\uff1a\u590d\u5236\u6587\u4ef6\u5931\u8d25"

    .line 511
    .line 512
    :goto_6
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 513
    .line 514
    .line 515
    goto :goto_7

    .line 516
    :catch_3
    const-string v0, "\u5931\u8d25\uff1a\u4e0d\u5b58\u5728sd\u5361"

    .line 517
    .line 518
    goto :goto_6

    .line 519
    :goto_7
    return-void
.end method

.method private final k(Lmc/b;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->E:I

    .line 4
    .line 5
    iget-object v2, p0, Lma/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v3, "id"

    .line 18
    .line 19
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v4, v3, Lfa/a0;->a:I

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const-string v0, "\u83b7\u53d6uid\u5931\u8d25"

    .line 28
    .line 29
    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_a

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "uid=0("

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    const-string v0, "\u65e0\u6743\u9650\uff0c\u8bf7\u5148\u63d0\u6743"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v4, Ljava/io/File;

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v6, Lfa/g0;->a:Lfa/h0;

    .line 62
    .line 63
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v6, "/."

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, v2, Lda/g;->A:Lda/g;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, "/ls123.xml"

    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 101
    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v5, "\\cp -R \'/data/user_de/0/com.android.systemui/shared_prefs/com.incall.apps.common.utils.SharePrefrecenceUtil.xml\' \'"

    .line 106
    .line 107
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, "\'"

    .line 118
    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget v2, v2, Lfa/a0;->a:I

    .line 131
    .line 132
    if-nez v2, :cond_5

    .line 133
    .line 134
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 135
    .line 136
    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .line 138
    .line 139
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const-string v5, "UTF-8"

    .line 148
    .line 149
    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    :goto_1
    if-eq v5, v1, :cond_4

    .line 157
    .line 158
    const/4 v6, 0x2

    .line 159
    if-ne v5, v6, :cond_3

    .line 160
    .line 161
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const-string v6, "int"

    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_3

    .line 172
    .line 173
    const-string v5, "name"

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    const-string v7, "value"

    .line 181
    .line 182
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    if-eqz v5, :cond_3

    .line 187
    .line 188
    if-eqz v6, :cond_3

    .line 189
    .line 190
    const-string v7, "0"

    .line 191
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-nez v7, :cond_2

    .line 197
    .line 198
    const-string v7, "2"

    .line 199
    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_3

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :catchall_0
    move-exception v3

    .line 208
    goto :goto_3

    .line 209
    :cond_2
    :goto_2
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 213
    .line 214
    .line 215
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    goto :goto_1

    .line 217
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :catchall_1
    move-exception v2

    .line 226
    :try_start_4
    const-class v4, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 227
    .line 228
    :try_start_5
    const-string v5, "addSuppressed"

    .line 229
    .line 230
    new-array v6, v1, [Ljava/lang/Class;

    .line 231
    .line 232
    aput-object v4, v6, v0

    .line 233
    .line 234
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    new-array v1, v1, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object v2, v1, v0

    .line 241
    .line 242
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 243
    .line 244
    .line 245
    :catch_0
    :goto_4
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 246
    :catch_1
    const-string v0, "\u8bfb\u53d6\u914d\u7f6e\u65f6\u51fa\u73b0\u9519\u8bef"

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_5
    :goto_5
    new-instance v2, Lua/p2;

    .line 251
    .line 252
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 253
    .line 254
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 255
    .line 256
    iget-object v5, v4, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 257
    .line 258
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-direct {v2, v5, v4, v6}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    iget-object v4, p0, Lma/b;->c:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v4, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_6

    .line 295
    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 301
    .line 302
    new-instance v6, Lua/p2;

    .line 303
    .line 304
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 305
    .line 306
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    invoke-direct {v6, v7, v5, v8}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_6
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/AppDao;->get_app_NoCanStart()Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_9

    .line 340
    .line 341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 346
    .line 347
    :try_start_7
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 348
    .line 349
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 350
    .line 351
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 358
    .line 359
    if-eqz v6, :cond_7

    .line 360
    .line 361
    array-length v7, v6

    .line 362
    const/4 v8, 0x0

    .line 363
    :goto_8
    if-ge v8, v7, :cond_7

    .line 364
    .line 365
    aget-object v9, v6, v8

    .line 366
    .line 367
    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 368
    .line 369
    if-eqz v9, :cond_8

    .line 370
    .line 371
    new-instance v6, Lua/p2;

    .line 372
    .line 373
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 374
    .line 375
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    invoke-direct {v6, v7, v5, v8}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :catch_2
    move-exception v5

    .line 389
    goto :goto_9

    .line 390
    :cond_8
    add-int/2addr v8, v1

    .line 391
    goto :goto_8

    .line 392
    :goto_9
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 393
    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_9
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 397
    .line 398
    .line 399
    :goto_a
    return-void
.end method

.method private final l(Lmc/b;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->F:I

    .line 4
    .line 5
    iget-object v2, p0, Lma/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Ljava/io/File;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v6, Lfa/g0;->a:Lfa/h0;

    .line 25
    .line 26
    invoke-virtual {v6}, Lfa/h0;->d()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v6, "/."

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v6, v2, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v6, "/ls123.xml"

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 64
    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "\\cp -R \'/data/user_de/0/com.android.systemui/shared_prefs/com.incall.apps.common.utils.SharePrefrecenceUtil.xml\' \'"

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, "\'"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget v5, v5, Lfa/a0;->a:I

    .line 99
    .line 100
    if-nez v5, :cond_3

    .line 101
    .line 102
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 103
    .line 104
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .line 106
    .line 107
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v6, "UTF-8"

    .line 116
    .line 117
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    :goto_0
    if-eq v6, v1, :cond_2

    .line 125
    .line 126
    const/4 v7, 0x2

    .line 127
    if-ne v6, v7, :cond_1

    .line 128
    .line 129
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string v7, "int"

    .line 134
    .line 135
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_1

    .line 140
    .line 141
    const-string v6, "name"

    .line 142
    .line 143
    const/4 v7, 0x0

    .line 144
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const-string v8, "value"

    .line 149
    .line 150
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    if-eqz v6, :cond_1

    .line 155
    .line 156
    if-eqz v7, :cond_1

    .line 157
    .line 158
    const-string v8, "0"

    .line 159
    .line 160
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_0

    .line 165
    .line 166
    const-string v8, "2"

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v2

    .line 176
    goto :goto_2

    .line 177
    :cond_0
    :goto_1
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    iput-boolean v1, v2, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :catchall_1
    move-exception v4

    .line 196
    :try_start_4
    const-class v5, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 197
    .line 198
    :try_start_5
    const-string v6, "addSuppressed"

    .line 199
    .line 200
    new-array v7, v1, [Ljava/lang/Class;

    .line 201
    .line 202
    aput-object v5, v7, v0

    .line 203
    .line 204
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    new-array v6, v1, [Ljava/lang/Object;

    .line 209
    .line 210
    aput-object v4, v6, v0

    .line 211
    .line 212
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 213
    .line 214
    .line 215
    :catch_0
    :goto_3
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 216
    :catch_1
    :cond_3
    :goto_4
    new-instance v2, Lua/p2;

    .line 217
    .line 218
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 219
    .line 220
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 221
    .line 222
    iget-object v5, v4, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    invoke-direct {v2, v5, v4, v6}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    iget-object v4, p0, Lma/b;->c:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v4, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_4

    .line 261
    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 267
    .line 268
    new-instance v6, Lua/p2;

    .line 269
    .line 270
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    invoke-direct {v6, v7, v5, v8}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_4
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/AppDao;->get_app_NoCanStart()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    :cond_5
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-eqz v5, :cond_7

    .line 306
    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 312
    .line 313
    :try_start_7
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 314
    .line 315
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 316
    .line 317
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 324
    .line 325
    if-eqz v6, :cond_5

    .line 326
    .line 327
    array-length v7, v6

    .line 328
    const/4 v8, 0x0

    .line 329
    :goto_7
    if-ge v8, v7, :cond_5

    .line 330
    .line 331
    aget-object v9, v6, v8

    .line 332
    .line 333
    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 334
    .line 335
    if-eqz v9, :cond_6

    .line 336
    .line 337
    new-instance v6, Lua/p2;

    .line 338
    .line 339
    iget-object v7, v5, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 340
    .line 341
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    invoke-direct {v6, v7, v5, v8}, Lua/p2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :catch_2
    move-exception v5

    .line 355
    goto :goto_8

    .line 356
    :cond_6
    add-int/2addr v8, v1

    .line 357
    goto :goto_7

    .line 358
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_7
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method private final m(Lmc/b;)V
    .locals 8

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lma/b;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 27
    .line 28
    invoke-virtual {v3}, Lc6/g;->v()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, ""

    .line 37
    .line 38
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 49
    .line 50
    invoke-static {v4}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v6, v5, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->content:Ljava/lang/String;

    .line 55
    .line 56
    const-string v7, ","

    .line 57
    .line 58
    invoke-static {v6, v7, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->content:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    const-string v0, "\u5df2\u5b58\u5728"

    .line 71
    .line 72
    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_1
    invoke-static {v4, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    .line 82
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->F:Landroid/content/ContentResolver;

    .line 83
    .line 84
    const-string v5, "OUSHANG_WHILTE_APP_LIST"

    .line 85
    .line 86
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    nop

    .line 96
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 103
    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v5, "settings put global OUSHANG_WHILTE_APP_LIST \'"

    .line 107
    .line 108
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v3, "\'"

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget v0, v0, Lfa/a0;->a:I

    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    const-string v0, "\u6dfb\u52a0\u5931\u8d25"

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const-string v3, "\u672a\u5b89\u88c5"

    .line 145
    .line 146
    :goto_2
    if-eqz v1, :cond_4

    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const/4 v1, 0x0

    .line 151
    :goto_3
    invoke-direct {v0, v3, v2, v1}, Lcom/yunpan/appmanage/bean/NameContentSelectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 158
    .line 159
    .line 160
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 6

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->V:I

    .line 2
    .line 3
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, ".png"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "\u8bf7\u9009\u62e9png\u683c\u5f0f\u7684\u56fe\u6807"

    .line 25
    .line 26
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-wide v1, p1, Lx9/w3;->d:J

    .line 30
    .line 31
    const-wide/32 v3, 0xa6800

    .line 32
    .line 33
    .line 34
    cmp-long v5, v1, v3

    .line 35
    .line 36
    if-lez v5, :cond_1

    .line 37
    .line 38
    const-string p1, "\u56fe\u6807\u5927\u5c0f\u4e0d\u80fd\u8d85\u8fc7600KB"

    .line 39
    .line 40
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-wide/16 v3, 0x1

    .line 45
    .line 46
    cmp-long v5, v1, v3

    .line 47
    .line 48
    if-gez v5, :cond_2

    .line 49
    .line 50
    const-string p1, "\u8bf7\u9009\u62e9\u6b63\u5e38\u7684png\u56fe\u7247\u6587\u4ef6"

    .line 51
    .line 52
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v1, p0, Lma/b;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const v3, 0x7f0b04b8

    .line 65
    .line 66
    .line 67
    if-eq v2, v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const v2, 0x7f0b03b5

    .line 74
    .line 75
    .line 76
    if-ne v1, v2, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 80
    .line 81
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->R:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->D:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 94
    .line 95
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->P:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityGjDiy;->C:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public accept(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/apksig/internal/compat/IntConsumerCompat;

    iget-object v1, p0, Lma/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/apksig/internal/compat/IntConsumerCompat;

    invoke-static {v0, v1, p1}, Ln4/a;->b(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;I)V

    return-void
.end method

.method public synthetic andThen(Lcom/android/apksig/internal/compat/IntConsumerCompat;)Lcom/android/apksig/internal/compat/IntConsumerCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln4/a;->a(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;)Lcom/android/apksig/internal/compat/IntConsumerCompat;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 14

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/16 v2, 0xb

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    iget-object v4, p0, Lma/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v5, p0, Lma/b;->b:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    iget v8, p0, Lma/b;->a:I

    .line 13
    .line 14
    sparse-switch v8, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;->F:I

    .line 18
    .line 19
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBarNoRoot;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast v4, Lua/p2;

    .line 25
    .line 26
    const-string v0, "am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName \'"

    .line 27
    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v4, Lua/p2;->b:Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "\' --ei appCentered 1"

    .line 40
    .line 41
    invoke-static {v0, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ls5/c;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ls5/c;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v4, Lua/p2;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "\' --ei appCentered "

    .line 67
    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v3, 0x0

    .line 75
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v0, Ls9/a;

    .line 83
    .line 84
    invoke-direct {v0, v2, v7}, Ls9/a;-><init>(IZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1, v0}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void

    .line 91
    :sswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 92
    .line 93
    move-object v9, v5

    .line 94
    check-cast v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    check-cast v4, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    sub-int/2addr v2, v6

    .line 106
    const-string v5, "name"

    .line 107
    .line 108
    if-ne p1, v2, :cond_4

    .line 109
    .line 110
    iget-object p1, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 111
    .line 112
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    const-string p1, "\u6ca1\u6709\u5176\u5b83\u65b9\u6848\uff0c\u65e0\u9700\u5220\u9664"

    .line 121
    .line 122
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_5

    .line 126
    .line 127
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    :goto_2
    iget-object p1, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 133
    .line 134
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-ge v7, p1, :cond_3

    .line 141
    .line 142
    iget-object p1, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 143
    .line 144
    invoke-virtual {p1, v7}, Lz7/o;->l(I)Lz7/p;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/2addr v7, v6

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    new-instance p1, Lha/ja;

    .line 166
    .line 167
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 168
    .line 169
    iget-object v11, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 170
    .line 171
    new-instance v13, Lua/k3;

    .line 172
    .line 173
    invoke-direct {v13, v9, v1}, Lua/k3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 174
    .line 175
    .line 176
    move-object v8, p1

    .line 177
    invoke-direct/range {v8 .. v13}, Lha/ja;-><init>(Landroid/app/Activity;Lda/g;Landroid/view/View;Ljava/util/ArrayList;Lua/k3;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    sub-int/2addr v2, v3

    .line 190
    if-ne p1, v2, :cond_5

    .line 191
    .line 192
    invoke-virtual {v9, v6}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->y(Z)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    sub-int/2addr v2, v1

    .line 202
    if-ne p1, v2, :cond_6

    .line 203
    .line 204
    invoke-virtual {v9, v7}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->y(Z)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    sub-int/2addr v1, v0

    .line 214
    if-ne p1, v1, :cond_7

    .line 215
    .line 216
    new-instance p1, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    new-instance v1, Lha/a3;

    .line 222
    .line 223
    invoke-direct {v1, v0, p1}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lmc/c;

    .line 227
    .line 228
    invoke-direct {v0, v7, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v1, Lha/h3;

    .line 246
    .line 247
    const/16 v2, 0xc

    .line 248
    .line 249
    invoke-direct {v1, v9, v2, p1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_5

    .line 256
    .line 257
    :cond_7
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 258
    .line 259
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    const-string v1, "\u6b64\u65b9\u6848\u6ca1\u6709\u6309\u952e\u8bb0\u5f55\uff0c\u6216\u51fa\u9519"

    .line 266
    .line 267
    const-string v2, "keys"

    .line 268
    .line 269
    if-ge p1, v0, :cond_a

    .line 270
    .line 271
    new-instance v12, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .line 275
    .line 276
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 277
    .line 278
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    :goto_3
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-ge v7, v0, :cond_8

    .line 297
    .line 298
    invoke-virtual {p1, v7}, Lz7/o;->l(I)Lz7/p;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    add-int/2addr v7, v6

    .line 318
    goto :goto_3

    .line 319
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_9

    .line 324
    .line 325
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_5

    .line 329
    .line 330
    :cond_9
    new-instance v0, Lha/ja;

    .line 331
    .line 332
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 333
    .line 334
    iget-object v11, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 335
    .line 336
    new-instance v13, Lua/l3;

    .line 337
    .line 338
    invoke-direct {v13, v9, p1, v6}, Lua/l3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;Lz7/o;I)V

    .line 339
    .line 340
    .line 341
    move-object v8, v0

    .line 342
    invoke-direct/range {v8 .. v13}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 346
    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_a
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 350
    .line 351
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    sub-int v0, p1, v0

    .line 358
    .line 359
    iget-object v3, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 360
    .line 361
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-ge v0, v3, :cond_d

    .line 368
    .line 369
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->H:Lz7/o;

    .line 370
    .line 371
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    sub-int/2addr p1, v0

    .line 378
    new-instance v12, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    iget-object v0, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 384
    .line 385
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    const/4 v0, 0x0

    .line 398
    :goto_4
    iget-object v2, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-ge v0, v2, :cond_b

    .line 405
    .line 406
    invoke-virtual {p1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v2, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    add-int/2addr v0, v6

    .line 426
    goto :goto_4

    .line 427
    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_c

    .line 432
    .line 433
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 434
    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_c
    new-instance v0, Lha/ja;

    .line 438
    .line 439
    iget-object v10, v9, Lda/g;->A:Lda/g;

    .line 440
    .line 441
    iget-object v11, v9, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->K:Landroid/view/View;

    .line 442
    .line 443
    new-instance v13, Lua/l3;

    .line 444
    .line 445
    invoke-direct {v13, v9, p1, v7}, Lua/l3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;Lz7/o;I)V

    .line 446
    .line 447
    .line 448
    move-object v8, v0

    .line 449
    invoke-direct/range {v8 .. v13}, Lha/ja;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lha/ia;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 453
    .line 454
    .line 455
    :cond_d
    :goto_5
    return-void

    .line 456
    :sswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 457
    .line 458
    check-cast v5, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 459
    .line 460
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    check-cast v4, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    check-cast p1, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 470
    .line 471
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 472
    .line 473
    new-instance v0, Lma/b;

    .line 474
    .line 475
    const/16 v1, 0xa

    .line 476
    .line 477
    invoke-direct {v0, v5, v1, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    new-instance p1, Lmc/c;

    .line 481
    .line 482
    invoke-direct {p1, v7, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 486
    .line 487
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    new-instance v0, Lua/j1;

    .line 500
    .line 501
    invoke-direct {v0, v5, v6}, Lua/j1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    nop

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 3

    .line 1
    iget v0, p0, Lma/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/t1;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 14
    .line 15
    iget-object v2, p0, Lma/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lx9/n5;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/util/d0;->a(Lx9/n5;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 23
    .line 24
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->Z:Lx9/n5;

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lua/t1;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 35
    .line 36
    iget-object v2, p0, Lma/b;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lx9/n5;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/util/d0;->a(Lx9/n5;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 44
    .line 45
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->Y:Lx9/n5;

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lua/q1;

    .line 4
    .line 5
    iget-object v0, v0, Lua/q1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 10
    .line 11
    new-instance v8, Lx9/u5;

    .line 12
    .line 13
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-instance v5, Lx9/b6;

    .line 18
    .line 19
    iget-object v2, p0, Lma/b;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Lx9/b6;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p2}, Lcom/yunpan/appmanage/ui/ActivityDownload;->x(Lcom/yunpan/appmanage/ui/ActivityDownload;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    move-object v2, v8

    .line 46
    move-object v4, p1

    .line 47
    move v6, p2

    .line 48
    invoke-direct/range {v2 .. v7}, Lx9/u5;-><init>(ILjava/lang/String;Lx9/b6;ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->t0:Ljava/util/concurrent/ExecutorService;

    .line 55
    .line 56
    new-instance p2, Landroidx/emoji2/text/j;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 59
    .line 60
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    const/4 v2, 0x5

    .line 67
    invoke-direct {p2, v1, v2, v0}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v4, ":"

    .line 6
    .line 7
    const-string v5, "\u8bbe\u7f6e\u5931\u8d25"

    .line 8
    .line 9
    const/4 v8, 0x5

    .line 10
    const-string v9, ""

    .line 11
    .line 12
    const/4 v11, 0x3

    .line 13
    const/4 v12, 0x4

    .line 14
    iget-object v14, v1, Lma/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v15, v1, Lma/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iget v0, v1, Lma/b;->a:I

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 24
    .line 25
    iget v0, v15, Lcom/yunpan/appmanage/ui/ActivityPermissions;->H:I

    .line 26
    .line 27
    check-cast v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 28
    .line 29
    const-string v7, "ignore"

    .line 30
    .line 31
    move-object/from16 v16, v7

    .line 32
    .line 33
    const-wide/16 v6, 0x7d0

    .line 34
    .line 35
    if-ne v0, v11, :cond_1

    .line 36
    .line 37
    iget-boolean v0, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "cmd deviceidle whitelist +"

    .line 44
    .line 45
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto/16 :goto_10

    .line 58
    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "cmd deviceidle whitelist -"

    .line 62
    .line 63
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto/16 :goto_10

    .line 76
    .line 77
    :cond_1
    const-string v11, "revoke"

    .line 78
    .line 79
    const-string v17, "grant"

    .line 80
    .line 81
    const-string v3, "pm "

    .line 82
    .line 83
    const-string v18, "allow"

    .line 84
    .line 85
    const-string v13, "appops set "

    .line 86
    .line 87
    const-string v10, " "

    .line 88
    .line 89
    const-string v19, "cmd "

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 99
    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    move-object/from16 v11, v17

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 111
    .line 112
    const-string v4, " android.permission.SYSTEM_ALERT_WINDOW"

    .line 113
    .line 114
    invoke-static {v3, v4, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v6, v7, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 124
    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 132
    .line 133
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 134
    .line 135
    if-eqz v3, :cond_3

    .line 136
    .line 137
    move-object/from16 v9, v19

    .line 138
    .line 139
    :cond_3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, " SYSTEM_ALERT_WINDOW "

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 156
    .line 157
    if-eqz v3, :cond_4

    .line 158
    .line 159
    move-object/from16 v3, v18

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    move-object/from16 v3, v16

    .line 163
    .line 164
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto/16 :goto_10

    .line 172
    .line 173
    :cond_5
    if-ne v0, v12, :cond_8

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 181
    .line 182
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 183
    .line 184
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 185
    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    move-object/from16 v9, v19

    .line 189
    .line 190
    :cond_6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v3, " WRITE_SETTINGS "

    .line 202
    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 207
    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    move-object/from16 v3, v18

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_7
    move-object/from16 v3, v16

    .line 214
    .line 215
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto/16 :goto_10

    .line 223
    .line 224
    :cond_8
    if-ne v0, v8, :cond_a

    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 232
    .line 233
    if-eqz v3, :cond_9

    .line 234
    .line 235
    move-object/from16 v11, v17

    .line 236
    .line 237
    :cond_9
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 244
    .line 245
    const-string v4, " android.permission.WRITE_SECURE_SETTINGS"

    .line 246
    .line 247
    :goto_2
    invoke-static {v3, v4, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto/16 :goto_10

    .line 252
    .line 253
    :cond_a
    const/4 v8, 0x2

    .line 254
    if-ne v0, v8, :cond_18

    .line 255
    .line 256
    iget-object v0, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->packageAndClass:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    array-length v3, v0

    .line 263
    if-lez v3, :cond_17

    .line 264
    .line 265
    iget-object v3, v15, Lcom/yunpan/appmanage/ui/ActivityPermissions;->E:Lx9/x4;

    .line 266
    .line 267
    invoke-virtual {v3}, Lc6/g;->v()Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    move-object v8, v9

    .line 276
    :cond_b
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    if-eqz v11, :cond_c

    .line 281
    .line 282
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    check-cast v11, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;

    .line 287
    .line 288
    iget-boolean v12, v11, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 289
    .line 290
    if-eqz v12, :cond_b

    .line 291
    .line 292
    invoke-static {v8}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->packageAndClass:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v11, v4, v8}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    goto :goto_3

    .line 303
    :cond_c
    const-string v3, "::"

    .line 304
    .line 305
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_d

    .line 314
    .line 315
    const/4 v4, 0x1

    .line 316
    const/4 v8, 0x0

    .line 317
    invoke-static {v4, v8, v3}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    :cond_d
    :try_start_0
    iget-object v4, v15, Lda/g;->A:Lda/g;

    .line 322
    .line 323
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    const-string v8, "enabled_notification_listeners"

    .line 328
    .line 329
    invoke-static {v4, v8, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_4

    .line 334
    :catch_0
    nop

    .line 335
    const/4 v4, 0x0

    .line 336
    :goto_4
    if-nez v4, :cond_f

    .line 337
    .line 338
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 339
    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v11, "settings put secure enabled_notification_listeners "

    .line 343
    .line 344
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-static {v6, v7, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    iget v3, v3, Lfa/a0;->a:I

    .line 362
    .line 363
    if-nez v3, :cond_e

    .line 364
    .line 365
    const/4 v3, 0x1

    .line 366
    goto :goto_5

    .line 367
    :cond_e
    const/4 v3, 0x0

    .line 368
    :goto_5
    move v4, v3

    .line 369
    :cond_f
    :try_start_1
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 370
    .line 371
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 372
    .line 373
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 374
    .line 375
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    const-string v8, "notification_enabled"

    .line 380
    .line 381
    const/4 v11, 0x1

    .line 382
    invoke-static {v3, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    .line 384
    .line 385
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    goto :goto_6

    .line 387
    :catch_1
    nop

    .line 388
    :goto_6
    if-nez v4, :cond_11

    .line 389
    .line 390
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    const-string v3, "settings put secure notification_enabled 1"

    .line 396
    .line 397
    invoke-static {v6, v7, v3}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    iget v3, v3, Lfa/a0;->a:I

    .line 402
    .line 403
    if-nez v3, :cond_10

    .line 404
    .line 405
    const/4 v3, 0x1

    .line 406
    goto :goto_7

    .line 407
    :cond_10
    const/4 v3, 0x0

    .line 408
    :goto_7
    move v4, v3

    .line 409
    :cond_11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 410
    .line 411
    const/16 v8, 0x1c

    .line 412
    .line 413
    if-lt v3, v8, :cond_15

    .line 414
    .line 415
    array-length v3, v0

    .line 416
    const/4 v8, 0x0

    .line 417
    :goto_8
    if-ge v8, v3, :cond_15

    .line 418
    .line 419
    aget-object v4, v0, v8

    .line 420
    .line 421
    sget-object v11, Lfa/b0;->a:La2/w0;

    .line 422
    .line 423
    new-instance v12, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    sget-object v13, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 429
    .line 430
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 431
    .line 432
    iget-boolean v13, v13, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 433
    .line 434
    if-eqz v13, :cond_12

    .line 435
    .line 436
    move-object/from16 v13, v19

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_12
    move-object v13, v9

    .line 440
    :goto_9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v13, "notification "

    .line 444
    .line 445
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    iget-boolean v13, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 449
    .line 450
    if-eqz v13, :cond_13

    .line 451
    .line 452
    const-string v13, "allow_listener"

    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_13
    const-string v13, "disallow_listener"

    .line 456
    .line 457
    :goto_a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    invoke-static {v6, v7, v4}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    iget v4, v4, Lfa/a0;->a:I

    .line 478
    .line 479
    if-nez v4, :cond_14

    .line 480
    .line 481
    const/4 v4, 0x1

    .line 482
    :goto_b
    const/4 v11, 0x1

    .line 483
    goto :goto_c

    .line 484
    :cond_14
    const/4 v4, 0x0

    .line 485
    goto :goto_b

    .line 486
    :goto_c
    add-int/2addr v8, v11

    .line 487
    goto :goto_8

    .line 488
    :cond_15
    if-eqz v4, :cond_16

    .line 489
    .line 490
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_11

    .line 494
    .line 495
    :cond_16
    :goto_d
    invoke-static {v5, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_11

    .line 499
    .line 500
    :cond_17
    const-string v0, "\u8bbe\u7f6e\u5931\u8d25\uff1a\u670d\u52a1\u7c7b\u65e0\u6548"

    .line 501
    .line 502
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_11

    .line 506
    .line 507
    :cond_18
    const/4 v4, 0x6

    .line 508
    if-ne v0, v4, :cond_1b

    .line 509
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 516
    .line 517
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 518
    .line 519
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 520
    .line 521
    if-eqz v3, :cond_19

    .line 522
    .line 523
    move-object/from16 v9, v19

    .line 524
    .line 525
    :cond_19
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v3, " GET_USAGE_STATS "

    .line 537
    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 542
    .line 543
    if-eqz v3, :cond_1a

    .line 544
    .line 545
    move-object/from16 v3, v18

    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_1a
    move-object/from16 v3, v16

    .line 549
    .line 550
    :goto_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    goto :goto_10

    .line 558
    :cond_1b
    const/4 v4, 0x7

    .line 559
    if-ne v0, v4, :cond_1d

    .line 560
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 567
    .line 568
    if-eqz v3, :cond_1c

    .line 569
    .line 570
    move-object/from16 v11, v17

    .line 571
    .line 572
    :cond_1c
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 579
    .line 580
    const-string v4, " android.permission.READ_LOGS"

    .line 581
    .line 582
    goto/16 :goto_2

    .line 583
    .line 584
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 590
    .line 591
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 592
    .line 593
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 594
    .line 595
    if-eqz v3, :cond_1e

    .line 596
    .line 597
    move-object/from16 v9, v19

    .line 598
    .line 599
    :cond_1e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    iget-object v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->pack:Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const-string v3, " REQUEST_INSTALL_PACKAGES "

    .line 611
    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    iget-boolean v3, v14, Lcom/yunpan/appmanage/bean/SpecialPermissionsBean;->isGrant:Z

    .line 616
    .line 617
    if-eqz v3, :cond_1f

    .line 618
    .line 619
    move-object/from16 v3, v18

    .line 620
    .line 621
    goto :goto_f

    .line 622
    :cond_1f
    move-object/from16 v3, v16

    .line 623
    .line 624
    :goto_f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    :goto_10
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 632
    .line 633
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-static {v6, v7, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    iget v3, v3, Lfa/a0;->a:I

    .line 641
    .line 642
    if-eqz v3, :cond_20

    .line 643
    .line 644
    move-object/from16 v4, v16

    .line 645
    .line 646
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    if-eqz v4, :cond_20

    .line 651
    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    sub-int/2addr v4, v12

    .line 662
    const/4 v8, 0x0

    .line 663
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v0, "deny"

    .line 671
    .line 672
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-static {v6, v7, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    iget v3, v0, Lfa/a0;->a:I

    .line 684
    .line 685
    :cond_20
    if-eqz v3, :cond_21

    .line 686
    .line 687
    goto/16 :goto_d

    .line 688
    .line 689
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 690
    .line 691
    .line 692
    :goto_11
    return-void

    .line 693
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lma/b;->m(Lmc/b;)V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lma/b;->l(Lmc/b;)V

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lma/b;->k(Lmc/b;)V

    .line 702
    .line 703
    .line 704
    return-void

    .line 705
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lma/b;->j(Lmc/b;)V

    .line 706
    .line 707
    .line 708
    return-void

    .line 709
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lma/b;->i(Lmc/b;)V

    .line 710
    .line 711
    .line 712
    return-void

    .line 713
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lma/b;->h(Lmc/b;)V

    .line 714
    .line 715
    .line 716
    return-void

    .line 717
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lma/b;->f(Lmc/b;)V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lma/b;->e(Lmc/b;)V

    .line 722
    .line 723
    .line 724
    return-void

    .line 725
    :pswitch_9
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 726
    .line 727
    check-cast v15, Lx9/b6;

    .line 728
    .line 729
    iget-object v0, v15, Lx9/b6;->b:Landroidx/emoji2/text/q;

    .line 730
    .line 731
    check-cast v14, Lba/r;

    .line 732
    .line 733
    if-eqz v0, :cond_22

    .line 734
    .line 735
    new-instance v6, Lba/r;

    .line 736
    .line 737
    iget-object v0, v0, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v0, Ljava/lang/String;

    .line 740
    .line 741
    iget-object v3, v14, Lba/r;->c:Ljava/lang/String;

    .line 742
    .line 743
    iget-object v4, v14, Lba/r;->d:Ljava/lang/String;

    .line 744
    .line 745
    invoke-direct {v6, v0, v3, v4}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .line 752
    .line 753
    iget-object v3, v15, Lx9/b6;->b:Landroidx/emoji2/text/q;

    .line 754
    .line 755
    iget v3, v3, Landroidx/emoji2/text/q;->a:I

    .line 756
    .line 757
    invoke-static {v0, v3, v9}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 762
    .line 763
    iget v0, v14, Lba/r;->a:I

    .line 764
    .line 765
    iput v0, v6, Lba/r;->a:I

    .line 766
    .line 767
    iget-object v0, v14, Lba/r;->f:Ljava/lang/String;

    .line 768
    .line 769
    iput-object v0, v6, Lba/r;->f:Ljava/lang/String;

    .line 770
    .line 771
    iget-boolean v0, v14, Lba/r;->e:Z

    .line 772
    .line 773
    iput-boolean v0, v6, Lba/r;->e:Z

    .line 774
    .line 775
    const/4 v3, 0x1

    .line 776
    iput v3, v6, Lba/r;->n:I

    .line 777
    .line 778
    invoke-static {v6}, Lqf/c;->v(Lba/r;)Ljava/util/ArrayList;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    goto/16 :goto_12

    .line 783
    .line 784
    :cond_22
    iget-object v0, v15, Lx9/b6;->j:Lba/g;

    .line 785
    .line 786
    if-eqz v0, :cond_23

    .line 787
    .line 788
    new-instance v6, Lba/r;

    .line 789
    .line 790
    iget-object v3, v14, Lba/r;->c:Ljava/lang/String;

    .line 791
    .line 792
    iget-object v4, v14, Lba/r;->d:Ljava/lang/String;

    .line 793
    .line 794
    iget-object v5, v0, Lba/g;->b:Ljava/lang/String;

    .line 795
    .line 796
    invoke-direct {v6, v5, v3, v4}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    iget v3, v14, Lba/r;->a:I

    .line 800
    .line 801
    iput v3, v6, Lba/r;->a:I

    .line 802
    .line 803
    iget-object v3, v14, Lba/r;->f:Ljava/lang/String;

    .line 804
    .line 805
    iput-object v3, v6, Lba/r;->f:Ljava/lang/String;

    .line 806
    .line 807
    iget-boolean v3, v14, Lba/r;->e:Z

    .line 808
    .line 809
    iput-boolean v3, v6, Lba/r;->e:Z

    .line 810
    .line 811
    iget-object v3, v14, Lba/r;->h:Ljava/lang/String;

    .line 812
    .line 813
    iput-object v3, v6, Lba/r;->h:Ljava/lang/String;

    .line 814
    .line 815
    const/4 v3, 0x1

    .line 816
    iput v3, v6, Lba/r;->n:I

    .line 817
    .line 818
    iget-object v0, v0, Lba/g;->a:Ljava/lang/String;

    .line 819
    .line 820
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 821
    .line 822
    invoke-static {v6}, Ls1/g;->x(Lba/r;)Ljava/util/ArrayList;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    goto/16 :goto_12

    .line 827
    .line 828
    :cond_23
    iget-object v0, v15, Lx9/b6;->i:Lba/n;

    .line 829
    .line 830
    const-string v3, "/"

    .line 831
    .line 832
    if-eqz v0, :cond_24

    .line 833
    .line 834
    new-instance v6, Lba/r;

    .line 835
    .line 836
    iget-object v4, v0, Lba/n;->d:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v4, Ljava/lang/String;

    .line 839
    .line 840
    iget-object v5, v14, Lba/r;->c:Ljava/lang/String;

    .line 841
    .line 842
    iget-object v7, v14, Lba/r;->d:Ljava/lang/String;

    .line 843
    .line 844
    invoke-direct {v6, v4, v5, v7}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    iget v4, v14, Lba/r;->a:I

    .line 848
    .line 849
    iput v4, v6, Lba/r;->a:I

    .line 850
    .line 851
    iget-object v4, v14, Lba/r;->f:Ljava/lang/String;

    .line 852
    .line 853
    iput-object v4, v6, Lba/r;->f:Ljava/lang/String;

    .line 854
    .line 855
    iget-boolean v4, v14, Lba/r;->e:Z

    .line 856
    .line 857
    iput-boolean v4, v6, Lba/r;->e:Z

    .line 858
    .line 859
    iget-object v4, v14, Lba/r;->i:Ljava/lang/String;

    .line 860
    .line 861
    iput-object v4, v6, Lba/r;->i:Ljava/lang/String;

    .line 862
    .line 863
    const/4 v4, 0x1

    .line 864
    iput v4, v6, Lba/r;->n:I

    .line 865
    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    iget-object v5, v14, Lba/r;->m:Ljava/lang/String;

    .line 872
    .line 873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    iget-object v0, v0, Lba/n;->d:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast v0, Ljava/lang/String;

    .line 882
    .line 883
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 891
    .line 892
    invoke-static {v6, v9}, Lq4/a;->m(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    goto/16 :goto_12

    .line 897
    .line 898
    :cond_24
    iget-object v0, v15, Lx9/b6;->a:Lba/i;

    .line 899
    .line 900
    if-eqz v0, :cond_25

    .line 901
    .line 902
    new-instance v6, Lba/r;

    .line 903
    .line 904
    iget-object v3, v0, Lba/i;->a:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v3, Ljava/lang/String;

    .line 907
    .line 908
    iget-object v0, v0, Lba/i;->f:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v0, Ljava/lang/String;

    .line 911
    .line 912
    iget-object v4, v14, Lba/r;->d:Ljava/lang/String;

    .line 913
    .line 914
    invoke-direct {v6, v3, v0, v4}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    iget v0, v14, Lba/r;->a:I

    .line 918
    .line 919
    iput v0, v6, Lba/r;->a:I

    .line 920
    .line 921
    iget-object v0, v14, Lba/r;->f:Ljava/lang/String;

    .line 922
    .line 923
    iput-object v0, v6, Lba/r;->f:Ljava/lang/String;

    .line 924
    .line 925
    iget-boolean v0, v14, Lba/r;->e:Z

    .line 926
    .line 927
    iput-boolean v0, v6, Lba/r;->e:Z

    .line 928
    .line 929
    const/4 v3, 0x1

    .line 930
    iput v3, v6, Lba/r;->n:I

    .line 931
    .line 932
    invoke-static {v6}, Lcom/bumptech/glide/c;->R(Lba/r;)Ljava/util/ArrayList;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    goto/16 :goto_12

    .line 937
    .line 938
    :cond_25
    iget-object v0, v15, Lx9/b6;->c:Lba/j;

    .line 939
    .line 940
    if-eqz v0, :cond_26

    .line 941
    .line 942
    new-instance v6, Lba/r;

    .line 943
    .line 944
    iget-object v3, v0, Lba/j;->g:Ljava/lang/String;

    .line 945
    .line 946
    iget-object v4, v14, Lba/r;->c:Ljava/lang/String;

    .line 947
    .line 948
    iget-object v5, v14, Lba/r;->d:Ljava/lang/String;

    .line 949
    .line 950
    invoke-direct {v6, v3, v4, v5}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    .line 954
    .line 955
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .line 957
    .line 958
    iget-wide v4, v0, Lba/j;->f:J

    .line 959
    .line 960
    invoke-static {v3, v4, v5, v9}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 965
    .line 966
    iget-object v0, v14, Lba/r;->f:Ljava/lang/String;

    .line 967
    .line 968
    iput-object v0, v6, Lba/r;->f:Ljava/lang/String;

    .line 969
    .line 970
    iget v0, v14, Lba/r;->a:I

    .line 971
    .line 972
    iput v0, v6, Lba/r;->a:I

    .line 973
    .line 974
    iget-object v0, v14, Lba/r;->f:Ljava/lang/String;

    .line 975
    .line 976
    iput-object v0, v6, Lba/r;->f:Ljava/lang/String;

    .line 977
    .line 978
    iget-boolean v0, v14, Lba/r;->e:Z

    .line 979
    .line 980
    iput-boolean v0, v6, Lba/r;->e:Z

    .line 981
    .line 982
    const/4 v3, 0x1

    .line 983
    iput v3, v6, Lba/r;->n:I

    .line 984
    .line 985
    invoke-static {v6}, Lcom/bumptech/glide/d;->W(Lba/r;)Ljava/util/ArrayList;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    goto/16 :goto_12

    .line 990
    .line 991
    :cond_26
    iget-object v0, v15, Lx9/b6;->e:Lba/s;

    .line 992
    .line 993
    if-eqz v0, :cond_27

    .line 994
    .line 995
    new-instance v6, Lba/r;

    .line 996
    .line 997
    iget-object v3, v14, Lba/r;->c:Ljava/lang/String;

    .line 998
    .line 999
    iget-object v4, v14, Lba/r;->d:Ljava/lang/String;

    .line 1000
    .line 1001
    iget-object v5, v0, Lba/s;->b:Ljava/lang/String;

    .line 1002
    .line 1003
    invoke-direct {v6, v5, v3, v4}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    iget v0, v0, Lba/s;->g:I

    .line 1012
    .line 1013
    invoke-static {v3, v0, v9}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 1018
    .line 1019
    iget v0, v14, Lba/r;->a:I

    .line 1020
    .line 1021
    iput v0, v6, Lba/r;->a:I

    .line 1022
    .line 1023
    iget-object v0, v14, Lba/r;->f:Ljava/lang/String;

    .line 1024
    .line 1025
    iput-object v0, v6, Lba/r;->f:Ljava/lang/String;

    .line 1026
    .line 1027
    iget-boolean v0, v14, Lba/r;->e:Z

    .line 1028
    .line 1029
    iput-boolean v0, v6, Lba/r;->e:Z

    .line 1030
    .line 1031
    const/4 v3, 0x1

    .line 1032
    iput v3, v6, Lba/r;->n:I

    .line 1033
    .line 1034
    invoke-static {v6}, Ls1/g;->y(Lba/r;)Ljava/util/ArrayList;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    goto :goto_12

    .line 1039
    :cond_27
    iget-object v0, v15, Lx9/b6;->f:Lba/l;

    .line 1040
    .line 1041
    if-eqz v0, :cond_28

    .line 1042
    .line 1043
    new-instance v6, Lba/r;

    .line 1044
    .line 1045
    iget-object v3, v14, Lba/r;->c:Ljava/lang/String;

    .line 1046
    .line 1047
    iget-object v4, v14, Lba/r;->d:Ljava/lang/String;

    .line 1048
    .line 1049
    iget-object v5, v0, Lba/l;->a:Ljava/lang/String;

    .line 1050
    .line 1051
    invoke-direct {v6, v5, v3, v4}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-boolean v3, v14, Lba/r;->e:Z

    .line 1055
    .line 1056
    iput-boolean v3, v6, Lba/r;->e:Z

    .line 1057
    .line 1058
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    iget-object v0, v0, Lba/l;->d:Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-static {v0, v9, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 1070
    .line 1071
    iget v0, v14, Lba/r;->a:I

    .line 1072
    .line 1073
    iput v0, v6, Lba/r;->a:I

    .line 1074
    .line 1075
    iget-object v0, v14, Lba/r;->f:Ljava/lang/String;

    .line 1076
    .line 1077
    iput-object v0, v6, Lba/r;->f:Ljava/lang/String;

    .line 1078
    .line 1079
    const/4 v3, 0x1

    .line 1080
    iput v3, v6, Lba/r;->n:I

    .line 1081
    .line 1082
    invoke-static {v6}, Lif/a;->I(Lba/r;)Ljava/util/ArrayList;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    goto :goto_12

    .line 1087
    :cond_28
    iget-object v0, v15, Lx9/b6;->h:Lba/k;

    .line 1088
    .line 1089
    if-eqz v0, :cond_29

    .line 1090
    .line 1091
    new-instance v6, Lba/r;

    .line 1092
    .line 1093
    iget-object v4, v0, Lba/k;->a:Ljava/lang/String;

    .line 1094
    .line 1095
    iget-object v5, v14, Lba/r;->c:Ljava/lang/String;

    .line 1096
    .line 1097
    invoke-direct {v6, v4, v5, v9}, Lba/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    iget-object v4, v14, Lba/r;->d:Ljava/lang/String;

    .line 1101
    .line 1102
    iput-object v4, v6, Lba/r;->d:Ljava/lang/String;

    .line 1103
    .line 1104
    iget v4, v14, Lba/r;->a:I

    .line 1105
    .line 1106
    iput v4, v6, Lba/r;->a:I

    .line 1107
    .line 1108
    iget-object v4, v14, Lba/r;->f:Ljava/lang/String;

    .line 1109
    .line 1110
    iput-object v4, v6, Lba/r;->f:Ljava/lang/String;

    .line 1111
    .line 1112
    iget-boolean v4, v14, Lba/r;->e:Z

    .line 1113
    .line 1114
    iput-boolean v4, v6, Lba/r;->e:Z

    .line 1115
    .line 1116
    const/4 v4, 0x1

    .line 1117
    iput v4, v6, Lba/r;->n:I

    .line 1118
    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .line 1123
    .line 1124
    iget-object v5, v14, Lba/r;->m:Ljava/lang/String;

    .line 1125
    .line 1126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    iget-object v0, v0, Lba/k;->a:Ljava/lang/String;

    .line 1133
    .line 1134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    const-string v4, "//"

    .line 1142
    .line 1143
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    iput-object v0, v6, Lba/r;->m:Ljava/lang/String;

    .line 1148
    .line 1149
    invoke-static {v6}, Ld/b;->B(Lba/r;)Ljava/util/ArrayList;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    goto :goto_12

    .line 1154
    :cond_29
    const/4 v0, 0x0

    .line 1155
    const/4 v6, 0x0

    .line 1156
    :goto_12
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1163
    .line 1164
    .line 1165
    return-void

    .line 1166
    :pswitch_a
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 1167
    .line 1168
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 1169
    .line 1170
    iget-object v0, v15, Lda/g;->A:Lda/g;

    .line 1171
    .line 1172
    check-cast v14, Ljava/lang/String;

    .line 1173
    .line 1174
    invoke-static {v0, v14}, Lqf/c;->G(Lda/g;Ljava/lang/String;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v3

    .line 1178
    if-eqz v3, :cond_2a

    .line 1179
    .line 1180
    :goto_13
    const/4 v6, 0x1

    .line 1181
    goto/16 :goto_1c

    .line 1182
    .line 1183
    :cond_2a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1184
    .line 1185
    const/16 v4, 0x1d

    .line 1186
    .line 1187
    if-ge v3, v4, :cond_2b

    .line 1188
    .line 1189
    goto/16 :goto_19

    .line 1190
    .line 1191
    :cond_2b
    :try_start_2
    const-string v3, "role"

    .line 1192
    .line 1193
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    invoke-static {v3}, La2/c;->c(Ljava/lang/Object;)Landroid/app/role/RoleManager;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3

    .line 1201
    if-nez v3, :cond_2c

    .line 1202
    .line 1203
    goto/16 :goto_19

    .line 1204
    .line 1205
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v4

    .line 1209
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v4

    .line 1213
    array-length v6, v4

    .line 1214
    const/4 v7, 0x0

    .line 1215
    :goto_14
    if-ge v7, v6, :cond_2e

    .line 1216
    .line 1217
    aget-object v10, v4, v7

    .line 1218
    .line 1219
    const-string v13, "addRoleHolderAsUser"

    .line 1220
    .line 1221
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v15

    .line 1225
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v13

    .line 1229
    if-eqz v13, :cond_2d

    .line 1230
    .line 1231
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v13

    .line 1235
    array-length v13, v13

    .line 1236
    const/4 v15, 0x6

    .line 1237
    if-ne v13, v15, :cond_2d

    .line 1238
    .line 1239
    goto :goto_15

    .line 1240
    :cond_2d
    const/4 v10, 0x1

    .line 1241
    add-int/2addr v7, v10

    .line 1242
    goto :goto_14

    .line 1243
    :cond_2e
    const/4 v10, 0x0

    .line 1244
    :goto_15
    if-nez v10, :cond_2f

    .line 1245
    .line 1246
    goto :goto_19

    .line 1247
    :cond_2f
    const-class v4, Ljava/lang/Process;

    .line 1248
    .line 1249
    const-string v6, "myUserHandle"

    .line 1250
    .line 1251
    const/4 v7, 0x0

    .line 1252
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v4

    .line 1256
    invoke-virtual {v4, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v4

    .line 1260
    check-cast v4, Landroid/os/UserHandle;

    .line 1261
    .line 1262
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1263
    .line 1264
    const/16 v13, 0x1c

    .line 1265
    .line 1266
    if-lt v6, v13, :cond_30

    .line 1267
    .line 1268
    invoke-static {v0}, Landroidx/emoji2/text/b;->r(Lda/g;)Ljava/util/concurrent/Executor;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v6

    .line 1272
    goto :goto_16

    .line 1273
    :cond_30
    new-instance v6, La2/y0;

    .line 1274
    .line 1275
    const/4 v13, 0x1

    .line 1276
    invoke-direct {v6, v13, v0}, La2/y0;-><init>(ILjava/lang/Object;)V

    .line 1277
    .line 1278
    .line 1279
    :goto_16
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v13

    .line 1283
    aget-object v13, v13, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1284
    .line 1285
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Class;->isInterface()Z

    .line 1286
    .line 1287
    .line 1288
    move-result v15

    .line 1289
    if-eqz v15, :cond_31

    .line 1290
    .line 1291
    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v15

    .line 1295
    const/4 v7, 0x1

    .line 1296
    new-array v8, v7, [Ljava/lang/Class;

    .line 1297
    .line 1298
    const/4 v7, 0x0

    .line 1299
    aput-object v13, v8, v7

    .line 1300
    .line 1301
    new-instance v7, Lcom/yunpan/appmanage/util/x;

    .line 1302
    .line 1303
    invoke-direct {v7}, Lcom/yunpan/appmanage/util/x;-><init>()V

    .line 1304
    .line 1305
    .line 1306
    invoke-static {v15, v8, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1310
    :goto_17
    const/4 v8, 0x0

    .line 1311
    goto :goto_18

    .line 1312
    :catchall_0
    :cond_31
    const/4 v7, 0x0

    .line 1313
    goto :goto_17

    .line 1314
    :goto_18
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v13

    .line 1318
    const/4 v15, 0x6

    .line 1319
    new-array v15, v15, [Ljava/lang/Object;

    .line 1320
    .line 1321
    const-string v17, "android.app.role.HOME"

    .line 1322
    .line 1323
    aput-object v17, v15, v8

    .line 1324
    .line 1325
    const/4 v8, 0x1

    .line 1326
    aput-object v14, v15, v8

    .line 1327
    .line 1328
    const/4 v8, 0x2

    .line 1329
    aput-object v13, v15, v8

    .line 1330
    .line 1331
    aput-object v4, v15, v11

    .line 1332
    .line 1333
    aput-object v6, v15, v12

    .line 1334
    .line 1335
    const/4 v4, 0x5

    .line 1336
    aput-object v7, v15, v4

    .line 1337
    .line 1338
    invoke-virtual {v10, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    const-wide/16 v3, 0xc8

    .line 1342
    .line 1343
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1344
    .line 1345
    .line 1346
    invoke-static {v0, v14}, Lqf/c;->G(Lda/g;Ljava/lang/String;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v3

    .line 1350
    if-eqz v3, :cond_32

    .line 1351
    .line 1352
    goto/16 :goto_13

    .line 1353
    .line 1354
    :catchall_1
    :cond_32
    :goto_19
    const-string v3, "cmd role add-role-holder android.app.role.HOME "

    .line 1355
    .line 1356
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v3

    .line 1368
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 1369
    .line 1370
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1371
    .line 1372
    .line 1373
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v3

    .line 1377
    iget v3, v3, Lfa/a0;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1378
    .line 1379
    if-nez v3, :cond_33

    .line 1380
    .line 1381
    invoke-static {v0, v14}, Lqf/c;->G(Lda/g;Ljava/lang/String;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v3

    .line 1385
    if-eqz v3, :cond_33

    .line 1386
    .line 1387
    goto/16 :goto_13

    .line 1388
    .line 1389
    :catchall_2
    :cond_33
    const-string v3, "android.intent.category.HOME"

    .line 1390
    .line 1391
    const-string v4, "android.intent.action.MAIN"

    .line 1392
    .line 1393
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v6

    .line 1397
    new-instance v7, Landroid/content/Intent;

    .line 1398
    .line 1399
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v7, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    .line 1404
    .line 1405
    const/high16 v8, 0x10000

    .line 1406
    .line 1407
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v7

    .line 1411
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1412
    .line 1413
    .line 1414
    move-result v8

    .line 1415
    if-eqz v8, :cond_34

    .line 1416
    .line 1417
    goto/16 :goto_1b

    .line 1418
    .line 1419
    :cond_34
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1420
    .line 1421
    .line 1422
    move-result v8

    .line 1423
    new-array v8, v8, [Landroid/content/ComponentName;

    .line 1424
    .line 1425
    const/4 v10, 0x0

    .line 1426
    const/4 v13, 0x0

    .line 1427
    const/16 v16, 0x0

    .line 1428
    .line 1429
    :goto_1a
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1430
    .line 1431
    .line 1432
    move-result v15

    .line 1433
    if-ge v10, v15, :cond_37

    .line 1434
    .line 1435
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v15

    .line 1439
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1440
    .line 1441
    new-instance v11, Landroid/content/ComponentName;

    .line 1442
    .line 1443
    iget-object v12, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1444
    .line 1445
    iget-object v1, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1446
    .line 1447
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1448
    .line 1449
    invoke-direct {v11, v1, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    aput-object v11, v8, v10

    .line 1453
    .line 1454
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1455
    .line 1456
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1457
    .line 1458
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1459
    .line 1460
    .line 1461
    move-result v1

    .line 1462
    if-eqz v1, :cond_35

    .line 1463
    .line 1464
    aget-object v1, v8, v10

    .line 1465
    .line 1466
    move-object/from16 v16, v1

    .line 1467
    .line 1468
    :cond_35
    iget v1, v15, Landroid/content/pm/ResolveInfo;->match:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1469
    .line 1470
    if-le v1, v13, :cond_36

    .line 1471
    .line 1472
    move v13, v1

    .line 1473
    :cond_36
    const/4 v1, 0x1

    .line 1474
    add-int/2addr v10, v1

    .line 1475
    move-object/from16 v1, p0

    .line 1476
    .line 1477
    const/4 v11, 0x3

    .line 1478
    const/4 v12, 0x4

    .line 1479
    goto :goto_1a

    .line 1480
    :cond_37
    if-nez v16, :cond_38

    .line 1481
    .line 1482
    goto :goto_1b

    .line 1483
    :cond_38
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v1

    .line 1487
    const-string v7, "replacePreferredActivity"

    .line 1488
    .line 1489
    const/4 v10, 0x4

    .line 1490
    new-array v11, v10, [Ljava/lang/Class;

    .line 1491
    .line 1492
    const-class v10, Landroid/content/IntentFilter;

    .line 1493
    .line 1494
    const/4 v12, 0x0

    .line 1495
    aput-object v10, v11, v12

    .line 1496
    .line 1497
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1498
    .line 1499
    const/4 v12, 0x1

    .line 1500
    aput-object v10, v11, v12

    .line 1501
    .line 1502
    const-class v10, [Landroid/content/ComponentName;

    .line 1503
    .line 1504
    const/4 v12, 0x2

    .line 1505
    aput-object v10, v11, v12

    .line 1506
    .line 1507
    const-class v10, Landroid/content/ComponentName;

    .line 1508
    .line 1509
    const/4 v12, 0x3

    .line 1510
    aput-object v10, v11, v12

    .line 1511
    .line 1512
    invoke-virtual {v1, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v1

    .line 1516
    new-instance v7, Landroid/content/IntentFilter;

    .line 1517
    .line 1518
    invoke-direct {v7, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    const-string v3, "android.intent.category.DEFAULT"

    .line 1525
    .line 1526
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v3

    .line 1533
    const/4 v4, 0x4

    .line 1534
    new-array v4, v4, [Ljava/lang/Object;

    .line 1535
    .line 1536
    const/4 v10, 0x0

    .line 1537
    aput-object v7, v4, v10

    .line 1538
    .line 1539
    const/4 v7, 0x1

    .line 1540
    aput-object v3, v4, v7

    .line 1541
    .line 1542
    const/4 v3, 0x2

    .line 1543
    aput-object v8, v4, v3

    .line 1544
    .line 1545
    const/4 v3, 0x3

    .line 1546
    aput-object v16, v4, v3

    .line 1547
    .line 1548
    invoke-virtual {v1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1549
    .line 1550
    .line 1551
    goto :goto_1b

    .line 1552
    :catch_2
    :try_start_8
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 1553
    .line 1554
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    .line 1558
    .line 1559
    const-string v4, "cmd package set-home-activity "

    .line 1560
    .line 1561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v4

    .line 1568
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v3

    .line 1575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1576
    .line 1577
    .line 1578
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1579
    .line 1580
    .line 1581
    :catchall_3
    :goto_1b
    invoke-static {v0, v14}, Lqf/c;->G(Lda/g;Ljava/lang/String;)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v6

    .line 1585
    :goto_1c
    if-eqz v6, :cond_39

    .line 1586
    .line 1587
    const-string v0, "\u8bbe\u7f6e\u6210\u529f"

    .line 1588
    .line 1589
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v2, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1593
    .line 1594
    .line 1595
    goto :goto_1d

    .line 1596
    :cond_39
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1597
    .line 1598
    .line 1599
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1600
    .line 1601
    .line 1602
    return-void

    .line 1603
    :pswitch_b
    check-cast v14, Ljava/lang/String;

    .line 1604
    .line 1605
    sget v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 1606
    .line 1607
    check-cast v15, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 1608
    .line 1609
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1610
    .line 1611
    .line 1612
    :try_start_9
    invoke-virtual {v15, v14}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v0

    .line 1616
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1617
    .line 1618
    .line 1619
    move-result v1

    .line 1620
    iput v1, v15, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 1621
    .line 1622
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1623
    .line 1624
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1631
    .line 1632
    .line 1633
    goto :goto_1e

    .line 1634
    :catch_3
    move-exception v0

    .line 1635
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1636
    .line 1637
    .line 1638
    :goto_1e
    return-void

    .line 1639
    :pswitch_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1640
    .line 1641
    check-cast v15, Ll5/y;

    .line 1642
    .line 1643
    iget-object v1, v15, Ll5/y;->b:Ljava/lang/Object;

    .line 1644
    .line 1645
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 1646
    .line 1647
    check-cast v14, Lx9/y;

    .line 1648
    .line 1649
    const/16 v3, 0x1a

    .line 1650
    .line 1651
    if-lt v0, v3, :cond_3a

    .line 1652
    .line 1653
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 1654
    .line 1655
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 1656
    .line 1657
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1658
    .line 1659
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->e:Ljava/util/UUID;

    .line 1660
    .line 1661
    invoke-static {v0, v1, v14}, Ld/b;->w(Lda/g;Ljava/util/UUID;Lx9/y;)V

    .line 1662
    .line 1663
    .line 1664
    goto :goto_1f

    .line 1665
    :cond_3a
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 1666
    .line 1667
    iget-object v0, v1, Lda/g;->A:Lda/g;

    .line 1668
    .line 1669
    invoke-static {v0, v14}, Ld/b;->G(Lda/g;Lx9/y;)V

    .line 1670
    .line 1671
    .line 1672
    const-wide/16 v0, 0x61e

    .line 1673
    .line 1674
    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1675
    .line 1676
    .line 1677
    :catch_4
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1678
    .line 1679
    .line 1680
    return-void

    .line 1681
    :pswitch_d
    const/4 v13, 0x0

    .line 1682
    :goto_20
    move-object v0, v15

    .line 1683
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 1684
    .line 1685
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 1686
    .line 1687
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 1688
    .line 1689
    .line 1690
    move-result v1

    .line 1691
    if-ge v13, v1, :cond_3e

    .line 1692
    .line 1693
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 1694
    .line 1695
    invoke-virtual {v1, v13}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v1

    .line 1699
    check-cast v1, Lx9/y;

    .line 1700
    .line 1701
    iget-object v1, v1, Lx9/y;->a:Lcom/yunpan/appmanage/db/AppBean;

    .line 1702
    .line 1703
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1704
    .line 1705
    move-object v3, v14

    .line 1706
    check-cast v3, Lja/a;

    .line 1707
    .line 1708
    iget-object v4, v3, Lja/a;->b:Ljava/lang/Object;

    .line 1709
    .line 1710
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v1

    .line 1714
    if-eqz v1, :cond_3d

    .line 1715
    .line 1716
    iget v1, v3, Lja/a;->a:I

    .line 1717
    .line 1718
    const/16 v4, 0xb

    .line 1719
    .line 1720
    if-ne v1, v4, :cond_3b

    .line 1721
    .line 1722
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v0

    .line 1726
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1727
    .line 1728
    .line 1729
    goto :goto_22

    .line 1730
    :cond_3b
    const/16 v4, 0xc

    .line 1731
    .line 1732
    if-ne v1, v4, :cond_3e

    .line 1733
    .line 1734
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v1

    .line 1738
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v1

    .line 1742
    iget-object v3, v3, Lja/a;->b:Ljava/lang/Object;

    .line 1743
    .line 1744
    check-cast v3, Ljava/lang/String;

    .line 1745
    .line 1746
    invoke-interface {v1, v3}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v1

    .line 1750
    if-eqz v1, :cond_3e

    .line 1751
    .line 1752
    new-instance v3, Lx9/y;

    .line 1753
    .line 1754
    invoke-direct {v3, v1}, Lx9/y;-><init>(Lcom/yunpan/appmanage/db/AppBean;)V

    .line 1755
    .line 1756
    .line 1757
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1758
    .line 1759
    const/16 v4, 0x1a

    .line 1760
    .line 1761
    if-lt v1, v4, :cond_3c

    .line 1762
    .line 1763
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 1764
    .line 1765
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 1766
    .line 1767
    iget-object v1, v1, Lcom/yunpan/appmanage/util/w;->e:Ljava/util/UUID;

    .line 1768
    .line 1769
    invoke-static {v0, v1, v3}, Ld/b;->w(Lda/g;Ljava/util/UUID;Lx9/y;)V

    .line 1770
    .line 1771
    .line 1772
    goto :goto_21

    .line 1773
    :cond_3c
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 1774
    .line 1775
    invoke-static {v0, v3}, Ld/b;->G(Lda/g;Lx9/y;)V

    .line 1776
    .line 1777
    .line 1778
    :goto_21
    const-wide/16 v0, 0x29a

    .line 1779
    .line 1780
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1781
    .line 1782
    .line 1783
    new-instance v0, Lja/f;

    .line 1784
    .line 1785
    invoke-direct {v0, v13, v3}, Lja/f;-><init>(ILx9/y;)V

    .line 1786
    .line 1787
    .line 1788
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1789
    .line 1790
    .line 1791
    goto :goto_22

    .line 1792
    :cond_3d
    const/4 v1, 0x1

    .line 1793
    const/16 v4, 0x1a

    .line 1794
    .line 1795
    add-int/2addr v13, v1

    .line 1796
    goto :goto_20

    .line 1797
    :cond_3e
    :goto_22
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1798
    .line 1799
    .line 1800
    return-void

    .line 1801
    :pswitch_e
    check-cast v14, Ljava/util/HashMap;

    .line 1802
    .line 1803
    check-cast v15, Lg0/e;

    .line 1804
    .line 1805
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1806
    .line 1807
    .line 1808
    invoke-static {}, Lq4/a;->c()V

    .line 1809
    .line 1810
    .line 1811
    invoke-static {}, Lq4/a;->u()I

    .line 1812
    .line 1813
    .line 1814
    move-result v0

    .line 1815
    const/4 v1, 0x4

    .line 1816
    if-le v0, v1, :cond_3f

    .line 1817
    .line 1818
    const-string v0, "\u68c0\u6d4b\u5230\u60a8\u7684\u7cfb\u7edf\u65e5\u5fd7\u7b49\u7ea7\u8fc7\u4f4e"

    .line 1819
    .line 1820
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1821
    .line 1822
    .line 1823
    :cond_3f
    invoke-static {}, Lq4/a;->D()Z

    .line 1824
    .line 1825
    .line 1826
    move-result v0

    .line 1827
    if-nez v0, :cond_40

    .line 1828
    .line 1829
    const-string v0, "\u68c0\u6d4b\u5230\u60a8\u53ef\u80fd\u672a\u5f00\u542f\u7cfb\u7edf\u65e5\u5fd7"

    .line 1830
    .line 1831
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1832
    .line 1833
    .line 1834
    :cond_40
    const/4 v1, 0x0

    .line 1835
    iput-boolean v1, v15, Lg0/e;->a:Z

    .line 1836
    .line 1837
    iput-boolean v1, v15, Lg0/e;->b:Z

    .line 1838
    .line 1839
    :try_start_b
    const-string v0, "sh"

    .line 1840
    .line 1841
    invoke-virtual {v15, v0}, Lg0/e;->f(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1842
    .line 1843
    .line 1844
    goto :goto_23

    .line 1845
    :catch_5
    move-exception v0

    .line 1846
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1847
    .line 1848
    .line 1849
    const-string v0, "id"

    .line 1850
    .line 1851
    invoke-virtual {v15, v0}, Lg0/e;->f(Ljava/lang/String;)V

    .line 1852
    .line 1853
    .line 1854
    :goto_23
    const-string v0, "logcat -c"

    .line 1855
    .line 1856
    invoke-virtual {v15, v0}, Lg0/e;->g(Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    const-wide/16 v0, 0x64

    .line 1860
    .line 1861
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1862
    .line 1863
    .line 1864
    iget-object v0, v15, Lg0/e;->h:Ljava/lang/Object;

    .line 1865
    .line 1866
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1867
    .line 1868
    :try_start_d
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 1869
    .line 1870
    .line 1871
    const-string v1, "logcat"

    .line 1872
    .line 1873
    invoke-virtual {v15, v1}, Lg0/e;->g(Ljava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 1877
    .line 1878
    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 1879
    .line 1880
    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1881
    .line 1882
    .line 1883
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v3

    .line 1887
    const/4 v4, 0x1

    .line 1888
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 1889
    .line 1890
    .line 1891
    move-result v3

    .line 1892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1893
    .line 1894
    .line 1895
    move-result-wide v4

    .line 1896
    const/4 v6, 0x0

    .line 1897
    const/4 v8, 0x0

    .line 1898
    :cond_41
    :goto_24
    iget-boolean v7, v15, Lg0/e;->a:Z

    .line 1899
    .line 1900
    if-nez v7, :cond_49

    .line 1901
    .line 1902
    iget-boolean v7, v15, Lg0/e;->b:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 1903
    .line 1904
    if-nez v7, :cond_49

    .line 1905
    .line 1906
    :try_start_e
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1907
    .line 1908
    const-wide/16 v9, 0x6

    .line 1909
    .line 1910
    invoke-virtual {v0, v9, v10, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v7

    .line 1914
    check-cast v7, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1915
    .line 1916
    goto :goto_25

    .line 1917
    :catch_6
    nop

    .line 1918
    const/4 v7, 0x0

    .line 1919
    :goto_25
    if-nez v7, :cond_42

    .line 1920
    .line 1921
    const/4 v9, 0x1

    .line 1922
    add-int/2addr v6, v9

    .line 1923
    const/16 v7, 0x9

    .line 1924
    .line 1925
    if-lt v6, v7, :cond_41

    .line 1926
    .line 1927
    :try_start_f
    const-string v0, "\u76d1\u542c\u4e0d\u5230\u7cfb\u7edf\u65e5\u5fd7\uff0c\u5df2\u505c\u6b62"

    .line 1928
    .line 1929
    const/4 v1, 0x0

    .line 1930
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 1931
    .line 1932
    .line 1933
    goto/16 :goto_28

    .line 1934
    .line 1935
    :catch_7
    move-exception v0

    .line 1936
    goto :goto_27

    .line 1937
    :cond_42
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1938
    .line 1939
    .line 1940
    move-result v6

    .line 1941
    const/16 v9, 0x10

    .line 1942
    .line 1943
    if-ge v6, v9, :cond_43

    .line 1944
    .line 1945
    goto :goto_26

    .line 1946
    :cond_43
    invoke-static {v7}, Lcom/yunpan/appmanage/bean/LogcatBean;->newLogLine(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v6

    .line 1950
    if-eqz v6, :cond_48

    .line 1951
    .line 1952
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/LogcatBean;->time:Ljava/lang/String;

    .line 1953
    .line 1954
    if-nez v7, :cond_44

    .line 1955
    .line 1956
    goto :goto_26

    .line 1957
    :cond_44
    const-wide/16 v9, 0x0

    .line 1958
    .line 1959
    cmp-long v7, v4, v9

    .line 1960
    .line 1961
    if-lez v7, :cond_46

    .line 1962
    .line 1963
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1964
    .line 1965
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1969
    .line 1970
    .line 1971
    const-string v11, "-"

    .line 1972
    .line 1973
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    .line 1975
    .line 1976
    iget-object v11, v6, Lcom/yunpan/appmanage/bean/LogcatBean;->time:Ljava/lang/String;

    .line 1977
    .line 1978
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v7

    .line 1985
    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v7

    .line 1989
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 1990
    .line 1991
    .line 1992
    move-result-wide v11

    .line 1993
    cmp-long v7, v11, v4

    .line 1994
    .line 1995
    if-gez v7, :cond_45

    .line 1996
    .line 1997
    goto :goto_26

    .line 1998
    :cond_45
    move-wide v4, v9

    .line 1999
    :cond_46
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/LogcatBean;->pid:Ljava/lang/String;

    .line 2000
    .line 2001
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 2002
    .line 2003
    .line 2004
    move-result v7

    .line 2005
    if-nez v7, :cond_47

    .line 2006
    .line 2007
    iget-object v7, v6, Lcom/yunpan/appmanage/bean/LogcatBean;->pid:Ljava/lang/String;

    .line 2008
    .line 2009
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v7

    .line 2013
    check-cast v7, Ljava/lang/String;

    .line 2014
    .line 2015
    if-eqz v7, :cond_47

    .line 2016
    .line 2017
    iput-object v7, v6, Lcom/yunpan/appmanage/bean/LogcatBean;->packName:Ljava/lang/String;

    .line 2018
    .line 2019
    :cond_47
    const/4 v7, 0x1

    .line 2020
    add-int/2addr v8, v7

    .line 2021
    invoke-virtual {v2, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2022
    .line 2023
    .line 2024
    const/16 v6, 0x3a98

    .line 2025
    .line 2026
    if-le v8, v6, :cond_48

    .line 2027
    .line 2028
    const-string v0, "\u65e5\u5fd7\u8fc7\u591a\uff0c\u5df2\u505c\u6b62\u76d1\u542c"

    .line 2029
    .line 2030
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 2031
    .line 2032
    .line 2033
    goto :goto_28

    .line 2034
    :cond_48
    :goto_26
    const/4 v6, 0x0

    .line 2035
    goto/16 :goto_24

    .line 2036
    .line 2037
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2038
    .line 2039
    const-string v3, "\u76d1\u542c\u65e5\u5fd7\u51fa\u9519\uff1a"

    .line 2040
    .line 2041
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v0

    .line 2048
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    .line 2050
    .line 2051
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v0

    .line 2055
    const/4 v1, 0x0

    .line 2056
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 2057
    .line 2058
    .line 2059
    :cond_49
    :goto_28
    invoke-virtual {v15}, Lg0/e;->k()V

    .line 2060
    .line 2061
    .line 2062
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2063
    .line 2064
    .line 2065
    return-void

    .line 2066
    :pswitch_f
    check-cast v15, Lx9/n5;

    .line 2067
    .line 2068
    const-string v0, "smb://"

    .line 2069
    .line 2070
    :try_start_10
    new-instance v1, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;

    .line 2071
    .line 2072
    invoke-direct {v1}, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;-><init>()V

    .line 2073
    .line 2074
    .line 2075
    iget-boolean v3, v15, Lx9/n5;->u:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 2076
    .line 2077
    check-cast v14, Ljava/lang/String;

    .line 2078
    .line 2079
    if-eqz v3, :cond_4a

    .line 2080
    .line 2081
    :try_start_11
    new-instance v0, Lce/t0;

    .line 2082
    .line 2083
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2084
    .line 2085
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2086
    .line 2087
    .line 2088
    invoke-virtual {v15}, Lx9/n5;->b()Ljava/lang/String;

    .line 2089
    .line 2090
    .line 2091
    move-result-object v4

    .line 2092
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    .line 2094
    .line 2095
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v3

    .line 2102
    invoke-direct {v0, v3}, Lce/t0;-><init>(Ljava/lang/String;)V

    .line 2103
    .line 2104
    .line 2105
    new-instance v3, Lce/x0;

    .line 2106
    .line 2107
    invoke-direct {v3, v0}, Lce/x0;-><init>(Lce/t0;)V

    .line 2108
    .line 2109
    .line 2110
    iput-object v3, v1, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb1:Lce/x0;

    .line 2111
    .line 2112
    goto :goto_29

    .line 2113
    :cond_4a
    new-instance v3, Ljava/util/Properties;

    .line 2114
    .line 2115
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 2116
    .line 2117
    .line 2118
    iget-object v5, v15, Lx9/n5;->v:Ljava/lang/String;

    .line 2119
    .line 2120
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 2121
    .line 2122
    .line 2123
    move-result v5

    .line 2124
    if-nez v5, :cond_4b

    .line 2125
    .line 2126
    const-string v5, "jcifs.smb.client.domain"

    .line 2127
    .line 2128
    iget-object v6, v15, Lx9/n5;->v:Ljava/lang/String;

    .line 2129
    .line 2130
    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2131
    .line 2132
    .line 2133
    :cond_4b
    const-string v5, "jcifs.smb.client.username"

    .line 2134
    .line 2135
    iget-object v6, v15, Lx9/n5;->e:Ljava/lang/String;

    .line 2136
    .line 2137
    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2138
    .line 2139
    .line 2140
    const-string v5, "jcifs.smb.client.password"

    .line 2141
    .line 2142
    iget-object v6, v15, Lx9/n5;->f:Ljava/lang/String;

    .line 2143
    .line 2144
    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2145
    .line 2146
    .line 2147
    new-instance v5, Lwc/a;

    .line 2148
    .line 2149
    invoke-direct {v5, v3}, Lwc/a;-><init>(Ljava/util/Properties;)V

    .line 2150
    .line 2151
    .line 2152
    new-instance v3, Lxc/a;

    .line 2153
    .line 2154
    invoke-direct {v3, v5}, Lxc/a;-><init>(Lwc/a;)V

    .line 2155
    .line 2156
    .line 2157
    new-instance v5, Lvd/s;

    .line 2158
    .line 2159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2160
    .line 2161
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2162
    .line 2163
    .line 2164
    iget-object v0, v15, Lx9/n5;->c:Ljava/lang/String;

    .line 2165
    .line 2166
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    .line 2168
    .line 2169
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    .line 2171
    .line 2172
    iget v0, v15, Lx9/n5;->d:I

    .line 2173
    .line 2174
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2175
    .line 2176
    .line 2177
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v0

    .line 2184
    invoke-direct {v5, v0, v3}, Lvd/s;-><init>(Ljava/lang/String;Lxc/a;)V

    .line 2185
    .line 2186
    .line 2187
    iput-object v5, v1, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->file_smb2:Lvd/s;

    .line 2188
    .line 2189
    new-instance v0, Lvd/x;

    .line 2190
    .line 2191
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->file_smb2:Lvd/s;

    .line 2192
    .line 2193
    invoke-direct {v0, v3}, Lvd/x;-><init>(Lvd/s;)V

    .line 2194
    .line 2195
    .line 2196
    iput-object v0, v1, Lcom/yunpan/appmanage/bean/WpVideoStreamBean;->randomFile_smb2:Lvd/x;

    .line 2197
    .line 2198
    :goto_29
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2199
    .line 2200
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2201
    .line 2202
    iput-object v1, v0, Lcom/yunpan/appmanage/util/k;->I:Lcom/yunpan/appmanage/bean/WpVideoStreamBean;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 2203
    .line 2204
    :catch_8
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2205
    .line 2206
    .line 2207
    return-void

    .line 2208
    :pswitch_10
    check-cast v15, Lha/ze;

    .line 2209
    .line 2210
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2211
    .line 2212
    .line 2213
    new-instance v0, Lha/ne;

    .line 2214
    .line 2215
    const/4 v1, 0x1

    .line 2216
    invoke-direct {v0, v2, v1}, Lha/ne;-><init>(Lmc/b;I)V

    .line 2217
    .line 2218
    .line 2219
    check-cast v14, Ljava/lang/String;

    .line 2220
    .line 2221
    invoke-static {v14, v0}, Lcom/bumptech/glide/d;->G(Ljava/lang/String;Lma/k;)Lma/l;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v0

    .line 2225
    invoke-virtual {v0}, Lma/l;->a()Z

    .line 2226
    .line 2227
    .line 2228
    move-result v1

    .line 2229
    if-eqz v1, :cond_4c

    .line 2230
    .line 2231
    const-string v0, "\u5b89\u88c5\u6210\u529f"

    .line 2232
    .line 2233
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 2234
    .line 2235
    .line 2236
    goto :goto_2a

    .line 2237
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2238
    .line 2239
    const-string v3, "\u5931\u8d25\uff1a"

    .line 2240
    .line 2241
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2242
    .line 2243
    .line 2244
    iget-object v0, v0, Lma/l;->c:Ljava/lang/String;

    .line 2245
    .line 2246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v0

    .line 2253
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2254
    .line 2255
    .line 2256
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2257
    .line 2258
    .line 2259
    return-void

    .line 2260
    nop

    .line 2261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lma/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/h3;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p2, Lz7/s;

    .line 11
    .line 12
    invoke-direct {p2}, Lz7/s;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "name"

    .line 16
    .line 17
    invoke-virtual {p2, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lma/b;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lz7/o;

    .line 23
    .line 24
    const-string v1, "keys"

    .line 25
    .line 26
    invoke-virtual {p2, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Lz7/o;->k(Lz7/p;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p1, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->I:Lz7/o;

    .line 41
    .line 42
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v1, "KeyMapLogcatSuperDiy.json"

    .line 53
    .line 54
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lz7/p;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    const-string p1, "\u5bfc\u5165\u6210\u529f"

    .line 65
    .line 66
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lma/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p2, p0, Lma/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, p0, Lma/b;->a:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/yunpan/appmanage/ui/ActivityInputMethod;->C:I

    .line 11
    .line 12
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityInputMethod;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Lx9/p2;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/yunpan/appmanage/bean/InputMethodBean;

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/yunpan/appmanage/bean/InputMethodBean;->isDefault:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lma/b;

    .line 31
    .line 32
    const/16 v2, 0x15

    .line 33
    .line 34
    invoke-direct {v1, p2, v2, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lmc/c;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p2, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v0, Lha/s2;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-direct {v0, p3, v1, p1}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Lec/b;->b(Lec/e;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->E:I

    .line 68
    .line 69
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast p1, Lx9/l2;

    .line 75
    .line 76
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    add-int/lit8 p1, p1, -0x1

    .line 81
    .line 82
    if-ne p1, p3, :cond_1

    .line 83
    .line 84
    new-instance p1, Lha/vb;

    .line 85
    .line 86
    iget-object p3, p2, Lda/g;->A:Lda/g;

    .line 87
    .line 88
    invoke-direct {p1, p2, p3}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    new-instance p3, Lph/j;

    .line 92
    .line 93
    const/16 v0, 0x12

    .line 94
    .line 95
    invoke-direct {p3, v0, p2}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-string p2, "\u8bf7\u9009\u62e9\u56fe\u6807"

    .line 99
    .line 100
    invoke-virtual {p1, p2, p3}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 105
    .line 106
    iput p3, p2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->D:I

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->x()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method
