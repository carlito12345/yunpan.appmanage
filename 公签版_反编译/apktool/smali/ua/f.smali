.class public final Lua/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAdb;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/f;->a:I

    iput-object p1, p0, Lua/f;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lua/f;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 3
    .line 4
    iget v2, p0, Lua/f;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v2, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lua/d;

    .line 15
    .line 16
    invoke-direct {v2, v1, v0}, Lua/d;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lmc/c;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v0, v3, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v2, Lua/e;

    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    invoke-direct {v2, v1, v3}, Lua/e;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 47
    .line 48
    .line 49
    :pswitch_0
    return-void

    .line 50
    :pswitch_1
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->z(Lcom/yunpan/appmanage/ui/ActivityAdb;Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->x(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_3
    sget v2, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->E(Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_4
    const-string v0, "DESAYSV"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->C(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_5
    const-string v0, "AUTOLINK"

    .line 71
    .line 72
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->C(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_6
    :try_start_0
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 77
    .line 78
    const-string v3, "adb_enabled"

    .line 79
    .line 80
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 84
    .line 85
    const-string v2, "adb_wifi_enabled"

    .line 86
    .line 87
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6743\u9650"

    .line 92
    .line 93
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lua/f;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 4
    .line 5
    iget v3, p0, Lua/f;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, La2/w0;->P()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string v0, "\u60a8\u672c\u8eab\u5df2\u7ecf\u6709root\u6216\u8005adb\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v3, Lua/d;

    .line 34
    .line 35
    invoke-direct {v3, v2, v0}, Lua/d;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lmc/c;

    .line 39
    .line 40
    invoke-direct {v0, v1, v3}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lua/e;

    .line 58
    .line 59
    const/4 v3, 0x7

    .line 60
    invoke-direct {v1, v2, v3}, Lua/e;-><init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 68
    .line 69
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 70
    .line 71
    invoke-static {v0}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    const-string v0, "\u7591\u662f\u4e71\u7528\uff0c\u62d2\u7edd\u60a8\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 78
    .line 79
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {v2, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->z(Lcom/yunpan/appmanage/ui/ActivityAdb;Z)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void

    .line 87
    :pswitch_2
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->x(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->E(Z)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    const-string v0, "DESAYSV"

    .line 98
    .line 99
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->B(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_5
    const-string v0, "AUTOLINK"

    .line 104
    .line 105
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityAdb;->B(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_6
    :try_start_0
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAdb;->F:Landroid/content/ContentResolver;

    .line 110
    .line 111
    const-string v2, "adb_wifi_enabled"

    .line 112
    .line 113
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_0
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6743\u9650"

    .line 118
    .line 119
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
