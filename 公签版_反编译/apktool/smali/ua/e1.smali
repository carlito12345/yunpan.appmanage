.class public final Lua/e1;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/e1;->b:I

    iput-object p1, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget v0, p0, Lua/e1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "\u52a0\u8f7d\u51fa\u9519\uff1a"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    new-instance p1, Lha/z6;

    .line 33
    .line 34
    sget v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 35
    .line 36
    iget-object v2, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 37
    .line 38
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    new-instance v8, Ll5/y;

    .line 41
    .line 42
    const/16 v0, 0x1c

    .line 43
    .line 44
    invoke-direct {v8, v0, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string v6, "\u786e\u5b9a"

    .line 48
    .line 49
    const-string v7, "\u53d6\u6d88"

    .line 50
    .line 51
    const-string v4, "\u6587\u4ef6\u5df2\u88ab\u5176\u5b83\u5e94\u7528\u4fee\u6539\uff0c\u662f\u5426\u8981\u91cd\u65b0\u52a0\u8f7d\uff1f"

    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    move-object v1, p1

    .line 56
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lua/e1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 22
    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 p1, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 31
    .line 32
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 45
    .line 46
    iget v2, v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 47
    .line 48
    iget v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->U0:I

    .line 49
    .line 50
    if-ne v2, v3, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_2
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 58
    .line 59
    new-instance v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->O:Ljava/lang/String;

    .line 62
    .line 63
    iget v5, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->U0:I

    .line 64
    .line 65
    invoke-direct {v3, v4, v5}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1, v3}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_3
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 73
    .line 74
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-ge v1, v2, :cond_4

    .line 79
    .line 80
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 87
    .line 88
    iget v2, v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 89
    .line 90
    iget v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->b1:I

    .line 91
    .line 92
    if-ne v2, v3, :cond_3

    .line 93
    .line 94
    move p1, v1

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    :goto_4
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 100
    .line 101
    new-instance v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 102
    .line 103
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 104
    .line 105
    iget v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->b1:I

    .line 106
    .line 107
    invoke-direct {v2, v3, v0}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/e1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 2

    .line 1
    iget v0, p0, Lua/e1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lua/e1;->c:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->I:Landroid/widget/TextView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
