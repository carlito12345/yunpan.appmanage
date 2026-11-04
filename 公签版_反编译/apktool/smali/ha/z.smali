.class public final synthetic Lha/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/p2;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/b0;


# direct methods
.method public synthetic constructor <init>(Lha/b0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/z;->a:I

    iput-object p1, p0, Lha/z;->b:Lha/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/z;->b:Lha/b0;

    .line 2
    .line 3
    iget-object v1, v0, Lha/b0;->h:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "app_name"

    .line 9
    .line 10
    iget-object v0, v0, Lha/b0;->r:Lz7/s;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "app_package"

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 12

    .line 1
    const-string p1, "\u7f16\u8f91"

    .line 2
    .line 3
    const-string p2, "\u5220\u9664"

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    const-string v1, "gnType"

    .line 7
    .line 8
    iget-object v2, p0, Lha/z;->b:Lha/b0;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    iget v6, p0, Lha/z;->a:I

    .line 14
    .line 15
    packed-switch v6, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v6, v2, Lha/b0;->q:Lx9/t2;

    .line 19
    .line 20
    invoke-virtual {v6, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lz7/s;

    .line 25
    .line 26
    invoke-virtual {v6, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Lha/fa;

    .line 37
    .line 38
    new-array v1, v3, [Ljava/lang/String;

    .line 39
    .line 40
    aput-object p2, v1, v4

    .line 41
    .line 42
    aput-object p1, v1, v5

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-ge v4, v3, :cond_0

    .line 50
    .line 51
    aget-object p2, v1, v4

    .line 52
    .line 53
    invoke-static {p2, p1, p2, v4, v5}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    new-instance v11, Lha/a0;

    .line 63
    .line 64
    invoke-direct {v11, v2, p3, v5}, Lha/a0;-><init>(Lha/b0;II)V

    .line 65
    .line 66
    .line 67
    iget-object v8, v2, Lha/a4;->b:Landroid/content/Context;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    iget-object v7, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 71
    .line 72
    move-object v6, v0

    .line 73
    invoke-direct/range {v6 .. v11}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, v2, Lha/b0;->q:Lx9/t2;

    .line 81
    .line 82
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v5, :cond_2

    .line 87
    .line 88
    iget-object p1, v2, Lha/b0;->l:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, v2, Lha/b0;->q:Lx9/t2;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :pswitch_0
    iget-object v6, v2, Lha/b0;->p:Lx9/t2;

    .line 100
    .line 101
    invoke-virtual {v6, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lz7/s;

    .line 106
    .line 107
    invoke-virtual {v6, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-ne v1, v0, :cond_4

    .line 116
    .line 117
    new-instance v0, Lha/fa;

    .line 118
    .line 119
    new-array v1, v3, [Ljava/lang/String;

    .line 120
    .line 121
    aput-object p2, v1, v4

    .line 122
    .line 123
    aput-object p1, v1, v5

    .line 124
    .line 125
    new-instance p1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    const/4 p2, 0x0

    .line 131
    :goto_2
    if-ge p2, v3, :cond_3

    .line 132
    .line 133
    aget-object v6, v1, p2

    .line 134
    .line 135
    invoke-static {v6, p1, v6, p2, v5}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    new-instance v11, Lha/a0;

    .line 145
    .line 146
    invoke-direct {v11, v2, p3, v4}, Lha/a0;-><init>(Lha/b0;II)V

    .line 147
    .line 148
    .line 149
    iget-object v8, v2, Lha/a4;->b:Landroid/content/Context;

    .line 150
    .line 151
    const/4 v9, 0x0

    .line 152
    iget-object v7, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 153
    .line 154
    move-object v6, v0

    .line 155
    invoke-direct/range {v6 .. v11}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    iget-object p1, v2, Lha/b0;->p:Lx9/t2;

    .line 163
    .line 164
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-ne p1, v5, :cond_5

    .line 169
    .line 170
    iget-object p1, v2, Lha/b0;->j:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 173
    .line 174
    .line 175
    :cond_5
    iget-object p1, v2, Lha/b0;->p:Lx9/t2;

    .line 176
    .line 177
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 178
    .line 179
    .line 180
    :goto_3
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
