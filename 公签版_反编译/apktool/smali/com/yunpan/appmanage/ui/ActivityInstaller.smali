.class public Lcom/yunpan/appmanage/ui/ActivityInstaller;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Z

.field public G:Lef/b;

.field public H:Lff/c;

.field public I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K:Landroid/widget/ImageView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->F:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->G:Lef/b;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->H:Lff/c;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->O:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->F:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->K:Landroid/widget/ImageView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->O:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 15
    .line 16
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/yunpan/appmanage/httpserver/RemoteServer;->stop()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/yunpan/appmanage/util/k;->E:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    .line 24
    .line 25
    :cond_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003b

    return v0
.end method

.method public final u()V
    .locals 8

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->C:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0b0335

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->D:Landroid/widget/TextView;

    .line 22
    .line 23
    new-instance v1, Lua/q2;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p0, v2}, Lua/q2;-><init>(Lcom/yunpan/appmanage/ui/ActivityInstaller;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0b0336

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->E:Landroid/widget/TextView;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->E:Landroid/widget/TextView;

    .line 49
    .line 50
    new-instance v3, Lua/q2;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-direct {v3, p0, v4}, Lua/q2;-><init>(Lcom/yunpan/appmanage/ui/ActivityInstaller;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0b04e4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0b0324

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->K:Landroid/widget/ImageView;

    .line 83
    .line 84
    const v0, 0x7f0b0327

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->L:Landroid/widget/TextView;

    .line 94
    .line 95
    const v0, 0x7f0b0328

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->M:Landroid/widget/TextView;

    .line 105
    .line 106
    const v0, 0x7f0b032a

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->N:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 126
    .line 127
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 129
    .line 130
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getGetInstalledAppsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const/4 v7, 0x3

    .line 143
    new-array v7, v7, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 144
    .line 145
    aput-object v3, v7, v2

    .line 146
    .line 147
    aput-object v5, v7, v4

    .line 148
    .line 149
    const/4 v3, 0x2

    .line 150
    aput-object v6, v7, v3

    .line 151
    .line 152
    invoke-static {v1, v7}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_1

    .line 157
    .line 158
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->C:Landroid/widget/TextView;

    .line 159
    .line 160
    const-string v1, "\u6ca1\u6709\u5b58\u50a8\u6743\u9650"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityInstaller;->D:Landroid/widget/TextView;

    .line 166
    .line 167
    const-string v1, "\u597d\u7684"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_1
    new-instance v1, Lma/b;

    .line 174
    .line 175
    const/16 v3, 0x16

    .line 176
    .line 177
    invoke-direct {v1, p0, v3, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lmc/c;

    .line 181
    .line 182
    invoke-direct {v0, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Lka/c;

    .line 200
    .line 201
    const/16 v2, 0x13

    .line 202
    .line 203
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final x(Landroid/net/Uri;Ljava/io/File;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 15
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x2000

    .line 21
    .line 22
    :try_start_2
    new-array p2, p2, [B

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, -0x1

    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, p2, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_1
    move-exception p2

    .line 45
    goto :goto_3

    .line 46
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_2
    move-exception v4

    .line 51
    :try_start_6
    new-array v5, v0, [Ljava/lang/Class;

    .line 52
    .line 53
    aput-object v3, v5, v1

    .line 54
    .line 55
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-array v6, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v4, v6, v1

    .line 62
    .line 63
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 64
    .line 65
    .line 66
    :catch_0
    :goto_2
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    :goto_3
    if-eqz p1, :cond_1

    .line 68
    .line 69
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :catchall_3
    move-exception p1

    .line 74
    :try_start_9
    new-array v4, v0, [Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v3, v4, v1

    .line 77
    .line 78
    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p1, v0, v1

    .line 85
    .line 86
    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 87
    .line 88
    .line 89
    :catch_1
    :cond_1
    :goto_4
    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 90
    :catch_2
    new-instance p1, Ljava/lang/Exception;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 93
    .line 94
    .line 95
    goto :goto_6

    .line 96
    :goto_5
    throw p1

    .line 97
    :goto_6
    goto :goto_5
.end method
