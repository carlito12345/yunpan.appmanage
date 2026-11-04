.class public final Lh5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/a;
.implements Lha/wd;
.implements Lha/g4;
.implements Lha/y6;
.implements Lea/g;
.implements Lha/ea;
.implements Li3/d;
.implements Lx0/x;
.implements Lkf/e;
.implements Ll5/r;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lh5/m;->a:I

    packed-switch p1, :pswitch_data_0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ll5/a0;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Ll5/a0;-><init>(I)V

    iput-object p1, p0, Lh5/m;->b:Ljava/lang/Object;

    return-void

    .line 21
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance p1, Ll5/n;

    invoke-direct {p1}, Ll5/n;-><init>()V

    iput-object p1, p0, Lh5/m;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lh5/m;->a:I

    iput-object p2, p0, Lh5/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La0/o;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x1a

    iput v2, v0, Lh5/m;->a:I

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-array v2, v2, [I

    iput-object v2, v0, Lh5/m;->b:Ljava/lang/Object;

    .line 5
    iget-object v2, v1, La0/o;->b:[I

    .line 6
    iget-object v1, v1, La0/o;->a:[J

    .line 7
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    :goto_0
    aget-wide v7, v1, v5

    const-wide/16 v9, -0x1

    xor-long/2addr v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2

    sub-int v9, v5, v3

    xor-int/lit8 v9, v9, -0x1

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_1

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v16, v12, v14

    if-gez v16, :cond_0

    shl-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v11

    .line 9
    aget v12, v2, v12

    .line 10
    iget-object v13, v0, Lh5/m;->b:Ljava/lang/Object;

    check-cast v13, [I

    add-int/lit8 v14, v6, 0x1

    aput v12, v13, v6

    move v6, v14

    :cond_0
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-ne v9, v10, :cond_3

    :cond_2
    if-eq v5, v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    const/16 v0, 0x15

    iput v0, p0, Lh5/m;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 17
    new-instance p1, Lha/j2;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lha/j2;-><init>(I)V

    iput-object p1, p0, Lh5/m;->b:Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Li1/a;

    invoke-direct {v0, p1}, Li1/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const/16 v0, 0x16

    iput v0, p0, Lh5/m;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 13
    new-instance p1, Lha/l2;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lha/l2;-><init>(I)V

    iput-object p1, p0, Lh5/m;->b:Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Li1/h;

    invoke-direct {v0, p1}, Li1/h;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method

.method private final o()V
    .locals 0

    .line 1
    return-void
.end method

.method private final p()V
    .locals 0

    .line 1
    return-void
.end method

.method private final q()V
    .locals 0

    .line 1
    return-void
.end method

.method private final r()V
    .locals 0

    .line 1
    return-void
.end method

.method private final s()V
    .locals 0

    .line 1
    return-void
.end method

.method private final u()V
    .locals 0

    .line 1
    return-void
.end method

.method private final v()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public D()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Lh5/m;->a:I

    .line 6
    .line 7
    sparse-switch v3, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lha/z6;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :sswitch_0
    check-cast v2, Lha/gd;

    .line 17
    .line 18
    iget-object v0, v2, Lha/gd;->b:Lha/id;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lha/id;->b(Lha/id;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :sswitch_1
    new-instance v0, Lha/vb;

    .line 25
    .line 26
    check-cast v2, Lha/fc;

    .line 27
    .line 28
    iget-object v1, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 29
    .line 30
    iget-object v2, v2, Lha/a4;->b:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lha/p7;

    .line 36
    .line 37
    const/16 v2, 0xf

    .line 38
    .line 39
    invoke-direct {v1, v2, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "\u8bf7\u9009\u62e9\u56fe\u7247"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :sswitch_2
    check-cast v2, Lha/ra;

    .line 49
    .line 50
    iget-object v0, v2, Lha/ra;->c:Lha/sa;

    .line 51
    .line 52
    sget v2, Lha/sa;->j:I

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v2, Lg2/c;

    .line 58
    .line 59
    const/16 v3, 0x14

    .line 60
    .line 61
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lmc/c;

    .line 65
    .line 66
    invoke-direct {v3, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 70
    .line 71
    invoke-virtual {v3, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Lha/ra;

    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-direct {v2, v0, v3}, Lha/ra;-><init>(Lha/sa;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :sswitch_3
    check-cast v2, Lha/t9;

    .line 94
    .line 95
    :try_start_0
    iget-object v1, v2, Lha/a4;->b:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v3, "enable_freeform_support"

    .line 102
    .line 103
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    .line 105
    .line 106
    iget-object v1, v2, Lha/a4;->b:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "force_resizable_activities"

    .line 113
    .line 114
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    .line 119
    .line 120
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void

    .line 124
    :sswitch_4
    check-cast v2, Lha/o1;

    .line 125
    .line 126
    iget-object v0, v2, Lha/o1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lua/g1;

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lua/g1;->onClick(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :sswitch_5
    return-void

    .line 135
    :sswitch_6
    check-cast v2, Lha/n2;

    .line 136
    .line 137
    iget-object v0, v2, Lha/n2;->d:Lha/o2;

    .line 138
    .line 139
    iget v1, v2, Lha/n2;->c:I

    .line 140
    .line 141
    sget v2, Lha/o2;->z:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lha/o2;->b(I)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_7
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/util/w;->r(Z)V

    .line 150
    .line 151
    .line 152
    iget-boolean v0, v1, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 153
    .line 154
    if-eqz v0, :cond_0

    .line 155
    .line 156
    const v0, 0x7f080234

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_0
    const v0, 0x7f080237

    .line 161
    .line 162
    .line 163
    :goto_1
    check-cast v2, Landroid/widget/ImageView;

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xe -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/o1;

    .line 4
    .line 5
    iget-object v0, v0, Lha/o1;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lha/h7;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lha/h7;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0x15

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    const-string p1, "\u7ba1\u5bb6\u5b89\u88c5\u5668\uff1a\u9700\u8981\u5b89\u53535.0\u4ee5\u4e0a\u7cfb\u7edf"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v2, 0x1

    .line 23
    const/high16 v3, 0x10000000

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    iget-object v5, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Landroidx/leanback/widget/h0;

    .line 29
    .line 30
    if-ne p1, v4, :cond_6

    .line 31
    .line 32
    if-eq v0, v4, :cond_6

    .line 33
    .line 34
    new-instance v0, Ljava/io/File;

    .line 35
    .line 36
    const-string v6, "/111.apk"

    .line 37
    .line 38
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Landroid/content/Intent;

    .line 42
    .line 43
    const-string v7, "android.intent.action.VIEW"

    .line 44
    .line 45
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v8, 0x18

    .line 54
    .line 55
    const-string v9, "application/vnd.android.package-archive"

    .line 56
    .line 57
    if-lt v7, v8, :cond_2

    .line 58
    .line 59
    iget-object v7, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Lha/fc;

    .line 62
    .line 63
    iget-object v7, v7, Lha/a4;->b:Landroid/content/Context;

    .line 64
    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v10, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v10, Lha/fc;

    .line 73
    .line 74
    iget-object v10, v10, Lha/a4;->b:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v10, ".fileprovider"

    .line 84
    .line 85
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v7, v8, v0}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 116
    .line 117
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 118
    .line 119
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    const/high16 v8, 0x10000

    .line 122
    .line 123
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_4

    .line 136
    .line 137
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 142
    .line 143
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 144
    .line 145
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v10, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v10, Lha/fc;

    .line 150
    .line 151
    iget-object v10, v10, Lha/a4;->b:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_3

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    new-instance v9, Lcom/yunpan/appmanage/bean/InstallerBean;

    .line 165
    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 172
    .line 173
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 174
    .line 175
    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v11, ""

    .line 187
    .line 188
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 196
    .line 197
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {v9, v10, v11, v8}, Lcom/yunpan/appmanage/bean/InstallerBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_5

    .line 213
    .line 214
    const-string p1, "\u627e\u4e0d\u5230\u5b89\u88c5\u5668\uff0c\u7cfb\u7edf\u4e2d\u6ca1\u6709\u5b89\u88c5\u5668"

    .line 215
    .line 216
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_5
    new-instance v6, Lha/wb;

    .line 221
    .line 222
    iget-object v7, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v7, Lha/fc;

    .line 225
    .line 226
    iget-object v8, v7, Lha/a4;->a:Landroid/app/Activity;

    .line 227
    .line 228
    iget-object v7, v7, Lha/a4;->b:Landroid/content/Context;

    .line 229
    .line 230
    invoke-direct {v6, v8, v7, v0}, Lha/wb;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 234
    .line 235
    .line 236
    :cond_6
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 237
    .line 238
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/util/w;->y(I)V

    .line 239
    .line 240
    .line 241
    iget v6, v0, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 242
    .line 243
    const-string v7, "\u7ba1\u5bb6\u5b89\u88c5\u5668"

    .line 244
    .line 245
    if-nez v6, :cond_7

    .line 246
    .line 247
    iget-object v2, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lha/fc;

    .line 250
    .line 251
    iget-object v2, v2, Lha/fc;->l:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_7
    if-ne v6, v2, :cond_8

    .line 258
    .line 259
    iget-object v2, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v2, Lha/fc;

    .line 262
    .line 263
    iget-object v2, v2, Lha/fc;->l:Landroid/widget/TextView;

    .line 264
    .line 265
    const-string v4, "\u7cfb\u7edf\u5b89\u88c5\u5668"

    .line 266
    .line 267
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_8
    if-ne v6, v4, :cond_9

    .line 272
    .line 273
    iget-object v2, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v2, Lha/fc;

    .line 276
    .line 277
    iget-object v2, v2, Lha/fc;->l:Landroid/widget/TextView;

    .line 278
    .line 279
    const-string v4, "\u6307\u5b9a\u5b89\u88c5\u5668"

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_9
    const/4 v2, 0x3

    .line 286
    if-ne v6, v2, :cond_a

    .line 287
    .line 288
    iget-object v2, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v2, Lha/fc;

    .line 291
    .line 292
    iget-object v2, v2, Lha/fc;->l:Landroid/widget/TextView;

    .line 293
    .line 294
    const-string v4, "\u7531\u6253\u5f00\u65b9\u5f0f"

    .line 295
    .line 296
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    :cond_a
    :goto_2
    if-nez p1, :cond_b

    .line 300
    .line 301
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 302
    .line 303
    const/16 v0, 0x1a

    .line 304
    .line 305
    if-lt p1, v0, :cond_c

    .line 306
    .line 307
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 308
    .line 309
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 310
    .line 311
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 312
    .line 313
    if-nez p1, :cond_c

    .line 314
    .line 315
    iget-object p1, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p1, Lha/fc;

    .line 318
    .line 319
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 320
    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {p1}, Lcom/hjq/permissions/permission/special/b;->u(Landroid/content/pm/PackageManager;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_c

    .line 330
    .line 331
    new-instance p1, Landroid/content/Intent;

    .line 332
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v1, "package:"

    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lha/fc;

    .line 343
    .line 344
    iget-object v2, v1, Lha/a4;->b:Landroid/content/Context;

    .line 345
    .line 346
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 362
    .line 363
    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    iget-object v0, v1, Lha/a4;->b:Landroid/content/Context;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    if-eqz v0, :cond_c

    .line 380
    .line 381
    const-string v0, "\u8bf7\u5141\u8bb8\u5b89\u88c5\u6b64\u6765\u6e90\u5e94\u7528\u6743\u9650"

    .line 382
    .line 383
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    :try_start_0
    iget-object v0, v1, Lha/a4;->b:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 393
    .line 394
    if-lt p1, v1, :cond_c

    .line 395
    .line 396
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 397
    .line 398
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 399
    .line 400
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 401
    .line 402
    if-eqz p1, :cond_c

    .line 403
    .line 404
    const/4 p1, 0x0

    .line 405
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/util/w;->y(I)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v5, Landroidx/leanback/widget/h0;->b:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v0, Lha/fc;

    .line 411
    .line 412
    iget-object v0, v0, Lha/fc;->l:Landroid/widget/TextView;

    .line 413
    .line 414
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    const-string v0, "\u516c\u7b7eUID\u7248\u7248\uff0c\u53ea\u80fd\u4f7f\u7528\u7ba1\u5bb6\u5b89\u88c5\u5668"

    .line 418
    .line 419
    invoke-static {v0, p1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 420
    .line 421
    .line 422
    :catch_0
    :cond_c
    :goto_3
    return-void
.end method

.method public create()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lh5/r;

    .line 2
    .line 3
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lw/r3;

    .line 6
    .line 7
    iget-object v1, v0, Lw/r3;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lk5/d;

    .line 10
    .line 11
    iget-object v2, v0, Lw/r3;->e:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v5, v2

    .line 14
    check-cast v5, Lh5/n;

    .line 15
    .line 16
    iget-object v2, v0, Lw/r3;->f:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v6, v2

    .line 19
    check-cast v6, Lh5/n;

    .line 20
    .line 21
    iget-object v2, v0, Lw/r3;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lk5/d;

    .line 24
    .line 25
    iget-object v3, v0, Lw/r3;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lk5/d;

    .line 28
    .line 29
    iget-object v4, v0, Lw/r3;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lk5/d;

    .line 32
    .line 33
    iget-object v0, v0, Lw/r3;->g:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v7, v0

    .line 36
    check-cast v7, Lv3/f;

    .line 37
    .line 38
    move-object v0, v8

    .line 39
    invoke-direct/range {v0 .. v7}, Lh5/r;-><init>(Lk5/d;Lk5/d;Lk5/d;Lk5/d;Lh5/n;Lh5/n;Lv3/f;)V

    .line 40
    .line 41
    .line 42
    return-object v8
.end method

.method public d(J)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, -0x1

    .line 10
    :goto_0
    return p1
.end method

.method public e(I)J
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-static {p1}, La9/o;->k(Z)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0
.end method

.method public f(Lba/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lkf/e;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lkf/e;->f(Lba/h;)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public g(Lba/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lkf/e;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lkf/e;->g(Lba/h;)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public h(J)Ljava/util/List;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    return-object p1
.end method

.method public i(Lba/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lkf/e;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lkf/e;->i(Lba/h;)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k(Lx9/w3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/r3;

    .line 4
    .line 5
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lha/r3;->x:Lx9/d0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 2

    .line 1
    new-instance p1, Ll5/c;

    .line 2
    .line 3
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ll5/a0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p1, v1, v0}, Ll5/c;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public m(Lv3/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lkf/e;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lkf/e;->m(Lv3/f;)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget v0, p0, Lh5/m;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    iget-object p2, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lha/ud;

    .line 17
    .line 18
    iget-object v0, p2, Lha/ud;->l:Lx9/e0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lc6/g;->v()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lx9/w3;

    .line 39
    .line 40
    iget-object v1, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const-string p1, "\u5df2\u5b58\u5728\u540c\u540d\u7684\u76ee\u5f55\u6216\u6587\u4ef6"

    .line 49
    .line 50
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p2, Lha/ud;->j:Lx9/g0;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lx9/w3;

    .line 62
    .line 63
    sget-object v1, Lb9/a;->a:Lb9/b;

    .line 64
    .line 65
    invoke-virtual {v1, p2}, Lb9/b;->a(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "http://"

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p2, Lha/ud;->i:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, ":9898/newDir"

    .line 78
    .line 79
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Ll9/b;

    .line 84
    .line 85
    invoke-direct {v2, v1}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, v2, Lm9/e;->d:Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v1, v2, Lm9/e;->i:Lk9/a;

    .line 91
    .line 92
    const-string v3, "User-Agent"

    .line 93
    .line 94
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 95
    .line 96
    invoke-virtual {v1, v3, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "newDirPath="

    .line 102
    .line 103
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 107
    .line 108
    const-string v4, "/"

    .line 109
    .line 110
    invoke-static {v1, v3, v4, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v3, "application/x-www-form-urlencoded; charset=UTF-8"

    .line 115
    .line 116
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iput-object v1, v2, Lm9/a;->n:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v3, v2, Lm9/a;->m:Lokhttp3/MediaType;

    .line 123
    .line 124
    new-instance v1, Lha/td;

    .line 125
    .line 126
    invoke-direct {v1, p2, p1, v0}, Lha/td;-><init>(Lha/ud;Ljava/lang/String;Lx9/w3;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1}, Lm9/e;->b(Lnh/b;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_0
    return-void

    .line 133
    :sswitch_0
    if-eqz p2, :cond_5

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-nez p2, :cond_5

    .line 140
    .line 141
    iget-object p2, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p2, Lha/nb;

    .line 144
    .line 145
    iget-object v0, p2, Lha/nb;->i:Lx9/g0;

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lx9/w3;

    .line 153
    .line 154
    new-instance v1, Ljava/io/File;

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 162
    .line 163
    const-string v3, "/"

    .line 164
    .line 165
    invoke-static {v2, v0, v3, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_3

    .line 177
    .line 178
    const-string p1, "\u5df2\u5b58\u5728\u540c\u540d\u7684\u76ee\u5f55\u6216\u6587\u4ef6"

    .line 179
    .line 180
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_4

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_4

    .line 195
    .line 196
    const/4 p1, 0x0

    .line 197
    const-string v0, ""

    .line 198
    .line 199
    invoke-virtual {p2, v0, p1, p1}, Lha/nb;->b(Ljava/lang/String;IZ)V

    .line 200
    .line 201
    .line 202
    const-string v0, "\u65b0\u5efa\u6210\u529f"

    .line 203
    .line 204
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lx9/w3;

    .line 208
    .line 209
    invoke-direct {v0, v1}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, p2, Lha/nb;->k:Lx9/e0;

    .line 213
    .line 214
    invoke-virtual {v2, p1, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p2, Lha/nb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p2, Lha/nb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p2, Lha/nb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_4
    const-string p1, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 244
    .line 245
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_5
    :goto_1
    return-void

    .line 249
    :sswitch_1
    if-eqz p2, :cond_8

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-nez p2, :cond_8

    .line 256
    .line 257
    iget-object p2, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast p2, Lha/b5;

    .line 260
    .line 261
    iget-object v0, p2, Lha/b5;->k:Lx9/g0;

    .line 262
    .line 263
    const/4 v1, 0x1

    .line 264
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Lx9/w3;

    .line 269
    .line 270
    new-instance v1, Ljava/io/File;

    .line 271
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 278
    .line 279
    const-string v3, "/"

    .line 280
    .line 281
    invoke-static {v2, v0, v3, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_6

    .line 293
    .line 294
    const-string p1, "\u5df2\u5b58\u5728\u540c\u540d\u7684\u76ee\u5f55\u6216\u6587\u4ef6"

    .line 295
    .line 296
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_7

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_7

    .line 311
    .line 312
    const/4 p1, 0x0

    .line 313
    const-string v0, ""

    .line 314
    .line 315
    invoke-virtual {p2, v0, p1, p1}, Lha/b5;->b(Ljava/lang/String;IZ)V

    .line 316
    .line 317
    .line 318
    const-string v0, "\u65b0\u5efa\u6210\u529f"

    .line 319
    .line 320
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Lx9/w3;

    .line 324
    .line 325
    invoke-direct {v0, v1}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 326
    .line 327
    .line 328
    iget-object v2, p2, Lha/b5;->m:Lx9/e0;

    .line 329
    .line 330
    invoke-virtual {v2, p1, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p2, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 334
    .line 335
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p2, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 339
    .line 340
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p2, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 346
    .line 347
    .line 348
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_7
    const-string p1, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 360
    .line 361
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :cond_8
    :goto_2
    return-void

    .line 365
    :sswitch_2
    if-eqz p2, :cond_b

    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    if-nez p2, :cond_b

    .line 372
    .line 373
    iget-object p2, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p2, Lha/h4;

    .line 376
    .line 377
    iget-object v0, p2, Lha/h4;->i:Lx9/g0;

    .line 378
    .line 379
    const/4 v1, 0x1

    .line 380
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Lx9/w3;

    .line 385
    .line 386
    new-instance v1, Ljava/io/File;

    .line 387
    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 394
    .line 395
    const-string v3, "/"

    .line 396
    .line 397
    invoke-static {v2, v0, v3, p1}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-eqz p1, :cond_9

    .line 409
    .line 410
    const-string p1, "\u5df2\u5b58\u5728\u540c\u540d\u7684\u76ee\u5f55\u6216\u6587\u4ef6"

    .line 411
    .line 412
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    goto :goto_3

    .line 416
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_a

    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-eqz p1, :cond_a

    .line 427
    .line 428
    const/4 p1, 0x0

    .line 429
    const-string v0, ""

    .line 430
    .line 431
    invoke-virtual {p2, v0, p1, p1}, Lha/h4;->b(Ljava/lang/String;IZ)V

    .line 432
    .line 433
    .line 434
    const-string v0, "\u65b0\u5efa\u6210\u529f"

    .line 435
    .line 436
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Lx9/w3;

    .line 440
    .line 441
    invoke-direct {v0, v1}, Lx9/w3;-><init>(Ljava/io/File;)V

    .line 442
    .line 443
    .line 444
    iget-object v2, p2, Lha/h4;->k:Lx9/e0;

    .line 445
    .line 446
    invoke-virtual {v2, p1, v0}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p2, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 450
    .line 451
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 452
    .line 453
    .line 454
    iget-object v0, p2, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 455
    .line 456
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 457
    .line 458
    .line 459
    iget-object p1, p2, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 460
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 462
    .line 463
    .line 464
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/db/MyDb;->addFile_thread(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :cond_a
    const-string p1, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 476
    .line 477
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    :cond_b
    :goto_3
    return-void

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public t()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, Lh5/m;->a:I

    .line 5
    .line 6
    sparse-switch v2, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    :sswitch_0
    return-void

    .line 10
    :sswitch_1
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    check-cast v1, Lha/fc;

    .line 18
    .line 19
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "/bj.png"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    :cond_0
    const-string v0, "\u6062\u590d\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :sswitch_2
    return-void

    .line 63
    :sswitch_3
    check-cast v1, Lha/i2;

    .line 64
    .line 65
    iget-object v1, v1, Lha/i2;->b:Lha/o2;

    .line 66
    .line 67
    sget v2, Lha/o2;->z:I

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 73
    .line 74
    iget-object v3, v1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v4, Ld2/w;

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    invoke-direct {v4, v2, v5, v3}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lmc/c;

    .line 86
    .line 87
    invoke-direct {v2, v0, v4}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lrc/f;->b:Lec/j;

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    new-instance v3, Lha/m2;

    .line 105
    .line 106
    invoke-direct {v3, v1, v0}, Lha/m2;-><init>(Lha/o2;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 110
    .line 111
    .line 112
    :sswitch_4
    return-void

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xe -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public z(Landroid/view/View;Lx0/j2;)Lx0/j2;
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lh5/m;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Lx0/j2;

    .line 7
    .line 8
    invoke-static {v1, p2}, Lqf/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_5

    .line 13
    .line 14
    iput-object p2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Lx0/j2;

    .line 15
    .line 16
    invoke-virtual {p2}, Lx0/j2;->d()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    iput-boolean v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Z

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p2, Lx0/j2;->a:Lx0/g2;

    .line 43
    .line 44
    invoke-virtual {v1}, Lx0/g2;->m()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_2
    if-ge v2, v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    sget-object v5, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    invoke-static {v4}, Lx0/j0;->b(Landroid/view/View;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lk0/d;

    .line 74
    .line 75
    iget-object v4, v4, Lk0/d;->a:Lk0/a;

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1}, Lx0/g2;->m()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    add-int/2addr v2, p1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-object p2
.end method
