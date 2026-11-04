.class public final synthetic Lha/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/b5;


# direct methods
.method public synthetic constructor <init>(Lha/b5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/z4;->a:I

    iput-object p1, p0, Lha/z4;->b:Lha/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget p2, p0, Lha/z4;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p2, 0x82

    .line 7
    .line 8
    iget-object v0, p0, Lha/z4;->b:Lha/b5;

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, v0, Lha/b5;->n:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1

    .line 24
    :pswitch_0
    const/16 p2, 0x82

    .line 25
    .line 26
    iget-object v0, p0, Lha/z4;->b:Lha/b5;

    .line 27
    .line 28
    if-ne p1, p2, :cond_2

    .line 29
    .line 30
    iget-object p1, v0, Lha/b5;->m:Lx9/e0;

    .line 31
    .line 32
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, v0, Lha/b5;->n:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    :goto_1
    const/4 p1, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    :goto_2
    return p1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget p1, p0, Lha/z4;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/z4;->b:Lha/b5;

    .line 7
    .line 8
    iget-object p2, p1, Lha/b5;->m:Lx9/e0;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lx9/w3;

    .line 15
    .line 16
    iget-object v1, p1, Lha/b5;->k:Lx9/g0;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lha/b5;->x:Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lx9/w3;

    .line 28
    .line 29
    iget-object p2, p2, Lx9/w3;->b:Ljava/lang/String;

    .line 30
    .line 31
    const-string p3, "lastDirPath"

    .line 32
    .line 33
    invoke-interface {v0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    iget-object p2, p1, Lha/b5;->x:Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lx9/w3;

    .line 44
    .line 45
    iget-object v0, v0, Lx9/w3;->a:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "lastRootDirName"

    .line 48
    .line 49
    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lha/b5;->x:Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Lx9/w3;

    .line 59
    .line 60
    iget-object p3, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "lastRootDirPath"

    .line 63
    .line 64
    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    iget-object p2, p1, Lha/b5;->x:Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lha/b5;->a()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    iget-object p1, p0, Lha/z4;->b:Lha/b5;

    .line 77
    .line 78
    iget-object p2, p1, Lha/b5;->k:Lx9/g0;

    .line 79
    .line 80
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 85
    .line 86
    if-eq p3, v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/lit8 v0, v0, -0x1

    .line 93
    .line 94
    :goto_0
    if-le v0, p3, :cond_0

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Lc6/g;->C(I)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lha/b5;->a()V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void

    .line 106
    :pswitch_1
    iget-object p1, p0, Lha/z4;->b:Lha/b5;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lx9/w3;

    .line 117
    .line 118
    iget-object v1, p1, Lha/b5;->i:Lx9/g2;

    .line 119
    .line 120
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Lx9/w3;

    .line 125
    .line 126
    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    check-cast p3, Lx9/w3;

    .line 133
    .line 134
    iget-object p3, p3, Lx9/w3;->b:Ljava/lang/String;

    .line 135
    .line 136
    invoke-direct {v0, v2, p3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iget-object p3, p1, Lha/b5;->k:Lx9/g0;

    .line 143
    .line 144
    invoke-virtual {p3, p2}, Lc6/g;->E(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lha/b5;->a()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
