.class public final synthetic Lua/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/j5;->a:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/j5;->a:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 26
    .line 27
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->content:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, ","

    .line 38
    .line 39
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v1, v3, v2}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->F:Landroid/content/ContentResolver;

    .line 59
    .line 60
    const-string v3, "OUSHANG_WHILTE_APP_LIST"

    .line 61
    .line 62
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    nop

    .line 72
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "settings put global OUSHANG_WHILTE_APP_LIST \'"

    .line 83
    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, "\'"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v0, v0, Lfa/a0;->a:I

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 111
    .line 112
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    iget-object v2, p0, Lua/j5;->a:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 2
    .line 3
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 10
    .line 11
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "\u5df2\u5b89\u88c5\u7684\u5e94\u7528\uff0c\u8bf7\u52ff\u5220\u9664"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lha/z6;

    .line 22
    .line 23
    new-instance v7, Ld3/g;

    .line 24
    .line 25
    const/16 p2, 0x11

    .line 26
    .line 27
    invoke-direct {v7, p3, p2, v2}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "\u662f\u5426\u8981\u5220\u9664\u6b64\u767d\u540d\u5355"

    .line 31
    .line 32
    const-string v4, ""

    .line 33
    .line 34
    const-string v5, "\u786e\u5b9a"

    .line 35
    .line 36
    const-string v6, "\u53d6\u6d88"

    .line 37
    .line 38
    move-object v0, p1

    .line 39
    move-object v1, v2

    .line 40
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
