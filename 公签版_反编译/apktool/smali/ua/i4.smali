.class public final synthetic Lua/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/i4;->a:I

    iput-object p1, p0, Lua/i4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lua/i4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget v1, p0, Lua/i4;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 10
    .line 11
    iget-object v3, p0, Lua/i4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p1, Lha/z6;

    .line 17
    .line 18
    new-instance v8, Ls9/a;

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    invoke-direct {v8, v1, v0}, Ls9/a;-><init>(IZ)V

    .line 23
    .line 24
    .line 25
    const-string v6, "\u597d\u7684"

    .line 26
    .line 27
    const-string v7, ""

    .line 28
    .line 29
    const-string v4, "\u4fee\u6539\u540e\u9700\u70b9\u51fb\u4fdd\u5b58\u65b9\u53ef\u751f\u6548\n\n\u70b9\u51fb\u56fe\u6807\uff1a\u53ef\u79fb\u9664\u3001\u6539\u540d\u3001\u63d2\u5165\n\n\u6309\u4f4f\u56fe\u6807\uff1a\u53ef\u62d6\u52a8\u8c03\u6574\u4f4d\u7f6e"

    .line 30
    .line 31
    const-string v5, ""

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    move-object v2, v3

    .line 35
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v1, Lua/k4;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-direct {v1, p1, v2}, Lua/k4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lmc/c;

    .line 54
    .line 55
    invoke-direct {v2, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lua/l4;

    .line 73
    .line 74
    invoke-direct {v2, p1, v0}, Lua/l4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
