.class public final synthetic Lha/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lea/e;


# instance fields
.field public final synthetic a:Lha/t8;


# direct methods
.method public synthetic constructor <init>(Lha/t8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/i8;->a:Lha/t8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/i8;->a:Lha/t8;

    .line 2
    .line 3
    iget-object v0, v0, Lha/t8;->E:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 17

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    move-object/from16 v4, p0

    .line 7
    .line 8
    iget-object v5, v4, Lha/i8;->a:Lha/t8;

    .line 9
    .line 10
    iget-object v6, v5, Lha/t8;->E:Lx9/t2;

    .line 11
    .line 12
    invoke-virtual {v6, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    check-cast v6, Lz7/s;

    .line 17
    .line 18
    const-string v7, "gnType"

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/16 v8, 0xfa0

    .line 29
    .line 30
    const-string v9, "\u7f16\u8f91"

    .line 31
    .line 32
    const-string v10, "\u5220\u9664"

    .line 33
    .line 34
    if-ne v6, v8, :cond_1

    .line 35
    .line 36
    new-instance v6, Lha/fa;

    .line 37
    .line 38
    new-array v7, v1, [Ljava/lang/String;

    .line 39
    .line 40
    aput-object v10, v7, v2

    .line 41
    .line 42
    aput-object v9, v7, v3

    .line 43
    .line 44
    new-instance v8, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    :goto_0
    if-ge v9, v1, :cond_0

    .line 51
    .line 52
    aget-object v10, v7, v9

    .line 53
    .line 54
    invoke-static {v10, v8, v10, v9, v3}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    new-instance v1, Lha/n8;

    .line 64
    .line 65
    invoke-direct {v1, v5, v0, v2}, Lha/n8;-><init>(Lha/t8;II)V

    .line 66
    .line 67
    .line 68
    iget-object v13, v5, Lha/a4;->b:Landroid/content/Context;

    .line 69
    .line 70
    const/4 v14, 0x0

    .line 71
    iget-object v12, v5, Lha/a4;->a:Landroid/app/Activity;

    .line 72
    .line 73
    move-object v11, v6

    .line 74
    move-object/from16 v16, v1

    .line 75
    .line 76
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-object v6, v5, Lha/t8;->E:Lx9/t2;

    .line 84
    .line 85
    invoke-virtual {v6, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lz7/s;

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x3

    .line 100
    if-ne v6, v7, :cond_3

    .line 101
    .line 102
    new-instance v6, Lha/fa;

    .line 103
    .line 104
    new-array v7, v1, [Ljava/lang/String;

    .line 105
    .line 106
    aput-object v10, v7, v2

    .line 107
    .line 108
    aput-object v9, v7, v3

    .line 109
    .line 110
    new-instance v8, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    if-ge v2, v1, :cond_2

    .line 116
    .line 117
    aget-object v9, v7, v2

    .line 118
    .line 119
    invoke-static {v9, v8, v9, v2, v3}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    new-instance v1, Lha/n8;

    .line 129
    .line 130
    invoke-direct {v1, v5, v0, v3}, Lha/n8;-><init>(Lha/t8;II)V

    .line 131
    .line 132
    .line 133
    iget-object v13, v5, Lha/a4;->b:Landroid/content/Context;

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    iget-object v12, v5, Lha/a4;->a:Landroid/app/Activity;

    .line 137
    .line 138
    move-object v11, v6

    .line 139
    move-object/from16 v16, v1

    .line 140
    .line 141
    invoke-direct/range {v11 .. v16}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Lha/a4;->show()V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    iget-object v1, v5, Lha/t8;->E:Lx9/t2;

    .line 149
    .line 150
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-ne v1, v3, :cond_4

    .line 155
    .line 156
    iget-object v1, v5, Lha/t8;->x:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object v1, v5, Lha/t8;->E:Lx9/t2;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Lc6/g;->C(I)V

    .line 164
    .line 165
    .line 166
    :goto_2
    return-void
.end method
