.class public final synthetic Lua/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/i3;->a:I

    iput-object p1, p0, Lua/i3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lua/i3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 2
    .line 3
    iget v0, p0, Lua/i3;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->F:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->x(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object v3, p0, Lua/i3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 16
    .line 17
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 18
    .line 19
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lha/z6;

    .line 27
    .line 28
    new-instance v8, Lua/i1;

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    invoke-direct {v8, v0, v3}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string v4, "\u786e\u5b9a\u8981\u5220\u9664\u6240\u6709\u4e8b\u4ef6\u5417\uff1f"

    .line 36
    .line 37
    const-string v5, ""

    .line 38
    .line 39
    const-string v6, "\u786e\u5b9a"

    .line 40
    .line 41
    const-string v7, "\u53d6\u6d88"

    .line 42
    .line 43
    move-object v1, p1

    .line 44
    move-object v2, v3

    .line 45
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->F:I

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v0, Lha/z6;

    .line 58
    .line 59
    const-string v1, "\u4e00\uff1awifi\u4e0e\u84dd\u7259\u76f8\u5173\u7684\u4e8b\u4ef6\u89e6\u53d1\u4f1a\u6162\u4e24\u79d2\uff0c\u8fd9\u662f\u6b63\u5e38\u7684\uff01\u56e0\u4e3a\u8fd9\u662f\u7cfb\u7edf\u5904\u7406\u5b8c\u6210\u540e\u7cfb\u7edf\u53d1\u5e7f\u64ad\u7ed9\u6211\u624d\u89e6\u53d1\u7684\u4e8b\u4ef6\uff0c\u8fd9\u4e2a\u8fc7\u7a0b\u6709\u4e24\u79d2\u5ef6\u8fdf\uff0c\u65e0\u89e3\uff01\u7279\u522b\u662f\u3010wifi\u8fde\u63a5\u6210\u529f\u65f6\u3011\u548c\u3010\u84dd\u7259\u65ad\u5f00\u8fde\u63a5\u65f6\u3011\u53ef\u80fd\u4f1a\u6709\u56db\u79d2\u7684\u5ef6\u8fdf\uff01\n\u4e8c\uff1a\u76f4\u63a5\u5173\u95ed\u84dd\u7259\u529f\u80fd\u65f6\uff0c\u4e0d\u4f1a\u89e6\u53d1\u3010\u6709\u84dd\u7259\u65ad\u5f00\u8fde\u63a5\u65f6\u3011\uff0c\u56e0\u4e3a\u662f\u76f4\u63a5\u5173\u6389\u84dd\u7259\u529f\u80fd\u4e86\uff01"

    .line 60
    .line 61
    const-string v2, ""

    .line 62
    .line 63
    invoke-direct {v0, p1, p1, v1, v2}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->F:I

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
