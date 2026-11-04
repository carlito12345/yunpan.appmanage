.class public final synthetic Lha/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/e;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/a9;


# direct methods
.method public synthetic constructor <init>(Lha/a9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/y8;->a:I

    iput-object p1, p0, Lha/y8;->b:Lha/a9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 3

    .line 1
    iget v0, p0, Lha/y8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object v0, p0, Lha/y8;->b:Lha/a9;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "name"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lha/a9;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v0, v0, Lha/a9;->s:Lz7/s;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "event"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lha/y8;->b:Lha/a9;

    .line 44
    .line 45
    iget-object v0, v0, Lha/a9;->p:Lx9/t2;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_2
    iget-object v0, p0, Lha/y8;->b:Lha/a9;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string v1, "name"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Lha/a9;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v0, v0, Lha/a9;->s:Lz7/s;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "event"

    .line 83
    .line 84
    invoke-virtual {v0, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_3
    iget-object v0, p0, Lha/y8;->b:Lha/a9;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v1, "name"

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Lha/a9;->b(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v0, v0, Lha/a9;->s:Lz7/s;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "event"

    .line 120
    .line 121
    invoke-virtual {v0, v1, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x2

    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lha/y8;->b:Lha/a9;

    .line 5
    .line 6
    iget-object v2, v1, Lha/a9;->p:Lx9/t2;

    .line 7
    .line 8
    invoke-virtual {v2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lz7/s;

    .line 13
    .line 14
    const-string v3, "gnType"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x3

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    new-instance v2, Lha/fa;

    .line 28
    .line 29
    new-array v3, p2, [Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "\u5220\u9664"

    .line 32
    .line 33
    aput-object v4, v3, p1

    .line 34
    .line 35
    const-string v4, "\u7f16\u8f91"

    .line 36
    .line 37
    aput-object v4, v3, v0

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-ge p1, p2, :cond_0

    .line 45
    .line 46
    aget-object v5, v3, p1

    .line 47
    .line 48
    invoke-static {v5, v4, v5, p1, v0}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    new-instance v9, Lha/z8;

    .line 58
    .line 59
    invoke-direct {v9, v1, p3}, Lha/z8;-><init>(Lha/a9;I)V

    .line 60
    .line 61
    .line 62
    iget-object v6, v1, Lha/a4;->b:Landroid/content/Context;

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    iget-object v5, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 66
    .line 67
    move-object v4, v2

    .line 68
    invoke-direct/range {v4 .. v9}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object p1, v1, Lha/a9;->p:Lx9/t2;

    .line 76
    .line 77
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne p1, v0, :cond_2

    .line 82
    .line 83
    iget-object p1, v1, Lha/a9;->k:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p1, v1, Lha/a9;->p:Lx9/t2;

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method
