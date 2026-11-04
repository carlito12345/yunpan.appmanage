.class public final synthetic Lua/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/n3;->a:I

    iput-object p1, p0, Lua/n3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lua/n3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    .line 2
    .line 3
    iget v0, p0, Lua/n3;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->F:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->x(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object v3, p0, Lua/n3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    .line 16
    .line 17
    iget-object p1, v3, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->D:Lx9/s2;

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
    const/16 v0, 0x9

    .line 31
    .line 32
    invoke-direct {v8, v0, v3}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string v4, "\u786e\u5b9a\u8981\u5220\u9664\u6240\u6709\u6309\u952e\u5417\uff1f"

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
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->F:I

    .line 53
    .line 54
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;->F:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
