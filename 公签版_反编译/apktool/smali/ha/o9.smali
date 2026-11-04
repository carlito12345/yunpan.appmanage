.class public final synthetic Lha/o9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/ga;


# instance fields
.field public final synthetic a:Lha/q9;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lha/q9;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/o9;->a:Lha/q9;

    iput-object p2, p0, Lha/o9;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/o9;->a:Lha/q9;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lha/o9;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 13
    .line 14
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, v0, Lha/q9;->h:Lz7/s;

    .line 21
    .line 22
    iget-object v4, v3, Lz7/s;->a:Lb8/n;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u6309\u952e"

    .line 31
    .line 32
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Lz7/s;

    .line 37
    .line 38
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 48
    .line 49
    const-string v5, "name"

    .line 50
    .line 51
    invoke-virtual {v2, v5, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lz7/o;

    .line 55
    .line 56
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v5, "maps"

    .line 60
    .line 61
    invoke-virtual {v2, v5, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 69
    .line 70
    iget v4, v4, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 94
    .line 95
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 96
    .line 97
    invoke-direct {v2, v3, p1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, v0, Lha/q9;->m:Lx9/u0;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v2, 0x1

    .line 110
    sub-int/2addr v1, v2

    .line 111
    iput v1, v0, Lha/q9;->i:I

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Lx9/u0;->F(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, v0, Lha/q9;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 117
    .line 118
    iget v1, v0, Lha/q9;->i:I

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p1, v1, v3, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->smoothScrollToPositionWithOffset(IIZ)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lha/q9;->p:Lx9/t2;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lha/o9;->a:Lha/q9;

    .line 2
    .line 3
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    new-instance p2, Lha/m9;

    .line 10
    .line 11
    new-instance p3, Lha/p9;

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    invoke-direct {p3, p1, v0}, Lha/p9;-><init>(Lha/q9;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v1, v2, p3}, Lha/m9;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/p9;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x1

    .line 25
    if-ne p3, p2, :cond_1

    .line 26
    .line 27
    new-instance p2, Lha/ha;

    .line 28
    .line 29
    new-instance v5, Lha/o9;

    .line 30
    .line 31
    iget-object v4, p0, Lha/o9;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v5, p1, v4}, Lha/o9;-><init>(Lha/q9;Ljava/util/ArrayList;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v0, p2

    .line 38
    invoke-direct/range {v0 .. v5}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p2, 0x2

    .line 46
    if-ne p3, p2, :cond_3

    .line 47
    .line 48
    iget p2, p1, Lha/q9;->i:I

    .line 49
    .line 50
    const/4 p3, -0x1

    .line 51
    if-ne p2, p3, :cond_2

    .line 52
    .line 53
    const-string p1, "\u8bf7\u9009\u62e9\u6309\u952e"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p2, Lha/p9;

    .line 60
    .line 61
    const/4 p3, 0x6

    .line 62
    invoke-direct {p2, p1, p3}, Lha/p9;-><init>(Lha/q9;I)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {v1, v2, p1, p1, p2}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 p2, 0x3

    .line 71
    if-ne p3, p2, :cond_5

    .line 72
    .line 73
    iget-object p2, p1, Lha/q9;->h:Lz7/s;

    .line 74
    .line 75
    iget-object p3, p2, Lz7/s;->a:Lb8/n;

    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-nez p3, :cond_4

    .line 82
    .line 83
    iget-object p3, p1, Lha/q9;->g:Lea/e;

    .line 84
    .line 85
    invoke-interface {p3, p2}, Lea/e;->k(Lz7/s;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/4 p2, 0x4

    .line 93
    if-ne p3, p2, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_0
    return-void
.end method
