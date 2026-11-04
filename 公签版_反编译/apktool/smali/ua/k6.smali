.class public final synthetic Lua/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/p2;
.implements Lha/xb;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/h3;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lha/h3;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/k6;->a:I

    iput-object p1, p0, Lua/k6;->b:Lha/h3;

    iput-object p2, p0, Lua/k6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yunpan/appmanage/bean/KeyCodeBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/k6;->b:Lha/h3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "[\u952e\u7801]"

    .line 13
    .line 14
    iget-object v2, p0, Lua/k6;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->x(Lcom/yunpan/appmanage/ui/ActivityShell;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lua/k6;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lua/k6;->b:Lha/h3;

    .line 5
    .line 6
    iget v2, p0, Lua/k6;->a:I

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v4, 0x15

    .line 18
    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 22
    .line 23
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    invoke-static {v3, p2}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    nop

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 35
    .line 36
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 37
    .line 38
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_1
    if-nez v2, :cond_3

    .line 47
    .line 48
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 49
    .line 50
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    invoke-virtual {v3, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    array-length v3, p2

    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_1
    if-ge v4, v3, :cond_3

    .line 65
    .line 66
    aget-object v5, p2, v4

    .line 67
    .line 68
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 73
    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    new-instance v6, Landroid/content/Intent;

    .line 77
    .line 78
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    .line 82
    .line 83
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v2, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    move-object v2, v6

    .line 94
    goto :goto_2

    .line 95
    :catch_1
    nop

    .line 96
    move-object v2, v6

    .line 97
    goto :goto_3

    .line 98
    :cond_2
    :goto_2
    add-int/2addr v4, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v0, "[\u4e3b\u6d3b\u52a8]"

    .line 112
    .line 113
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p2, v1, Lha/h3;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 120
    .line 121
    invoke-static {p2, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->x(Lcom/yunpan/appmanage/ui/ActivityShell;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_4
    return-void

    .line 125
    :pswitch_0
    const-string v0, "[\u5305\u540d]"

    .line 126
    .line 127
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p2, v1, Lha/h3;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p2, Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 134
    .line 135
    invoke-static {p2, p1}, Lcom/yunpan/appmanage/ui/ActivityShell;->x(Lcom/yunpan/appmanage/ui/ActivityShell;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
