.class public final Lha/e9;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final A:Lz7/s;

.field public final B:Lha/d9;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public G:Lx9/y0;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public w:Lx9/t2;

.field public x:Lha/n6;

.field public final y:Lz7/s;

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;Lz7/s;Lz7/s;Lha/d9;)V
    .locals 1

    const v0, 0x7f0e00c9

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lha/e9;->C:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lha/e9;->D:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lha/e9;->E:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lha/e9;->y:Lz7/s;

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lha/e9;->z:I

    .line 32
    iput-object p5, p0, Lha/e9;->B:Lha/d9;

    .line 33
    invoke-virtual {p4}, Lz7/p;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    move-result-object p1

    iput-object p1, p0, Lha/e9;->A:Lz7/s;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;Lda/g;Lz7/s;ILd3/g;)V
    .locals 1

    const v0, 0x7f0e00c9

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lha/e9;->C:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lha/e9;->D:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lha/e9;->E:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lha/e9;->y:Lz7/s;

    .line 6
    iput p4, p0, Lha/e9;->z:I

    .line 7
    iput-object p5, p0, Lha/e9;->B:Lha/d9;

    const/4 p2, -0x1

    if-ne p4, p2, :cond_0

    .line 8
    new-instance p2, Lz7/s;

    invoke-direct {p2}, Lz7/s;-><init>()V

    iput-object p2, p0, Lha/e9;->A:Lz7/s;

    .line 9
    :try_start_0
    const-string p3, "name"

    invoke-virtual {p2, p3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p3, "isOpen"

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    const-string p3, "one"

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    const-string p3, "waitingUp"

    invoke-virtual {p2, p3, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    const-string p3, "OutTimeOneMap"

    const/4 p5, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p3, p5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 14
    const-string p3, "isConsistent"

    invoke-virtual {p2, p3, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15
    const-string p3, "downLogcatBegin"

    invoke-virtual {p2, p3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string p3, "downLogcat"

    new-instance p4, Lz7/o;

    invoke-direct {p4}, Lz7/o;-><init>()V

    invoke-virtual {p2, p3, p4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 17
    const-string p3, "upLogcatBegin"

    invoke-virtual {p2, p3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string p3, "upLogcat"

    new-instance p4, Lz7/o;

    invoke-direct {p4}, Lz7/o;-><init>()V

    invoke-virtual {p2, p3, p4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 19
    const-string p3, "zhLogcatBegin"

    invoke-virtual {p2, p3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string p1, "zhLogcat"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p2, p1, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 21
    const-string p1, "click"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p2, p1, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 22
    const-string p1, "doubleClick"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p2, p1, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 23
    const-string p1, "longClick"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p2, p1, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 24
    const-string p1, "zhClick"

    new-instance p3, Lz7/o;

    invoke-direct {p3}, Lz7/o;-><init>()V

    invoke-virtual {p2, p1, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "keys"

    invoke-virtual {p3, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object p1

    invoke-virtual {p1, p4}, Lz7/o;->l(I)Lz7/p;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    move-result-object p1

    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    move-result-object p1

    iput-object p1, p0, Lha/e9;->A:Lz7/s;

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    new-instance v0, Lha/b9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lha/b9;-><init>(Lha/e9;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v1, v2, p1, v3, v0}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/e9;->A:Lz7/s;

    .line 2
    .line 3
    iget-object v1, p0, Lha/e9;->w:Lx9/t2;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "click"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lha/e9;->w:Lx9/t2;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v1, "doubleClick"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_1
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ge v2, v4, :cond_1

    .line 75
    .line 76
    iget-object v4, p0, Lha/e9;->w:Lx9/t2;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const-string v1, "longClick"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    :goto_2
    iget-object v4, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-ge v2, v4, :cond_2

    .line 114
    .line 115
    iget-object v4, p0, Lha/e9;->w:Lx9/t2;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lz7/p;->g()Lz7/s;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    const-string v1, "zhClick"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_3

    .line 144
    .line 145
    :goto_3
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ge v3, v1, :cond_3

    .line 152
    .line 153
    iget-object v1, p0, Lha/e9;->w:Lx9/t2;

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catch_0
    :cond_3
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const v2, 0x7f0b03bb

    .line 11
    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lha/e9;->h:Landroid/widget/EditText;

    .line 16
    .line 17
    iget-object v2, v0, Lha/e9;->x:Lha/n6;

    .line 18
    .line 19
    new-instance v3, Ld2/w;

    .line 20
    .line 21
    const/16 v4, 0x11

    .line 22
    .line 23
    invoke-direct {v3, v0, v4, v1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v2, Lha/n6;->g:Lea/g;

    .line 27
    .line 28
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_a

    .line 32
    .line 33
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const v2, 0x7f0b03bf

    .line 38
    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lha/e9;->i:Landroid/widget/EditText;

    .line 43
    .line 44
    iget-object v2, v0, Lha/e9;->x:Lha/n6;

    .line 45
    .line 46
    new-instance v3, Ld2/w;

    .line 47
    .line 48
    const/16 v4, 0x11

    .line 49
    .line 50
    invoke-direct {v3, v0, v4, v1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, v2, Lha/n6;->g:Lea/g;

    .line 54
    .line 55
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_a

    .line 59
    .line 60
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const v2, 0x7f0b03c0

    .line 65
    .line 66
    .line 67
    if-ne v1, v2, :cond_3

    .line 68
    .line 69
    iget-object v1, v0, Lha/e9;->j:Landroid/widget/EditText;

    .line 70
    .line 71
    iget-object v2, v0, Lha/e9;->x:Lha/n6;

    .line 72
    .line 73
    new-instance v3, Ld2/w;

    .line 74
    .line 75
    const/16 v4, 0x11

    .line 76
    .line 77
    invoke-direct {v3, v0, v4, v1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iput-object v3, v2, Lha/n6;->g:Lea/g;

    .line 81
    .line 82
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const v2, 0x7f0b0365

    .line 92
    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    if-ne v1, v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Lha/e9;->a(I)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_a

    .line 101
    .line 102
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const v2, 0x7f0b0367

    .line 107
    .line 108
    .line 109
    const/4 v4, 0x1

    .line 110
    if-ne v1, v2, :cond_5

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Lha/e9;->a(I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const v2, 0x7f0b0368

    .line 122
    .line 123
    .line 124
    const/4 v5, 0x2

    .line 125
    if-ne v1, v2, :cond_7

    .line 126
    .line 127
    iget-object v1, v0, Lha/e9;->i:Landroid/widget/EditText;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    const-string v1, "\u9700\u8981\u6309\u952e\u677e\u5f00\u65e5\u5fd7\uff0c\u65b9\u53ef\u4f7f\u7528"

    .line 148
    .line 149
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    invoke-virtual {v0, v5}, Lha/e9;->a(I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_a

    .line 157
    .line 158
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const v2, 0x7f0b036a

    .line 163
    .line 164
    .line 165
    const/4 v6, 0x3

    .line 166
    if-ne v1, v2, :cond_9

    .line 167
    .line 168
    iget-object v1, v0, Lha/e9;->j:Landroid/widget/EditText;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_8

    .line 187
    .line 188
    const-string v1, "\u9700\u8981\u7ec4\u5408\u952e\u65e5\u5fd7\uff0c\u65b9\u53ef\u4f7f\u7528"

    .line 189
    .line 190
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_8
    invoke-virtual {v0, v6}, Lha/e9;->a(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_a

    .line 198
    .line 199
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iget-object v2, v0, Lha/e9;->B:Lha/d9;

    .line 204
    .line 205
    iget v7, v0, Lha/e9;->z:I

    .line 206
    .line 207
    iget-object v8, v0, Lha/e9;->y:Lz7/s;

    .line 208
    .line 209
    iget-object v9, v0, Lha/a4;->b:Landroid/content/Context;

    .line 210
    .line 211
    const v10, 0x7f0b0369

    .line 212
    .line 213
    .line 214
    const/4 v11, -0x1

    .line 215
    const-string v12, "keys"

    .line 216
    .line 217
    if-ne v1, v10, :cond_26

    .line 218
    .line 219
    iget-object v1, v0, Lha/e9;->C:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_b

    .line 226
    .line 227
    iget-object v1, v0, Lha/e9;->C:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-le v1, v5, :cond_b

    .line 234
    .line 235
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 236
    .line 237
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->W:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    const-string v10, "\u60a8\u52fe\u9009\u4e86\u7279\u6b8a\u76d1\u542c\u6a21\u5f0f\uff0c\u4e0d\u80fd\u4f7f\u7528\u6b64\u6761\u65e5\u5fd7"

    .line 240
    .line 241
    if-eqz v1, :cond_a

    .line 242
    .line 243
    :try_start_1
    iget-object v1, v0, Lha/e9;->C:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    const/16 v13, 0x20

    .line 250
    .line 251
    if-eq v1, v13, :cond_b

    .line 252
    .line 253
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_a

    .line 257
    .line 258
    :cond_a
    iget-object v1, v0, Lha/e9;->C:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    const/16 v13, 0x2f

    .line 265
    .line 266
    if-eq v1, v13, :cond_b

    .line 267
    .line 268
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    .line 270
    .line 271
    goto/16 :goto_a

    .line 272
    .line 273
    :catch_0
    const-string v1, "\u53d1\u751f\u9519\u8bef\uff0c\u8bf7\u8054\u7cfb\u5f00\u53d1\u8005"

    .line 274
    .line 275
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_a

    .line 279
    .line 280
    :cond_b
    iget-object v1, v0, Lha/e9;->g:Landroid/widget/EditText;

    .line 281
    .line 282
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-eqz v10, :cond_c

    .line 291
    .line 292
    const-string v1, "\u8bf7\u8f93\u5165\u6309\u952e\u5907\u6ce8"

    .line 293
    .line 294
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_a

    .line 298
    .line 299
    :cond_c
    iget-object v10, v0, Lha/e9;->h:Landroid/widget/EditText;

    .line 300
    .line 301
    invoke-static {v10}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    invoke-virtual {v8, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    const-string v14, "name"

    .line 310
    .line 311
    const-string v15, "downLogcat"

    .line 312
    .line 313
    const-string v4, "&&"

    .line 314
    .line 315
    const-string v3, ""

    .line 316
    .line 317
    if-ne v7, v11, :cond_11

    .line 318
    .line 319
    const/4 v11, 0x0

    .line 320
    :goto_0
    iget-object v6, v13, Lz7/o;->a:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-ge v11, v6, :cond_11

    .line 327
    .line 328
    invoke-virtual {v13, v11}, Lz7/o;->l(I)Lz7/p;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v6, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eqz v6, :cond_d

    .line 349
    .line 350
    const-string v1, "\u5b58\u5728\u76f8\u540c\u7684\u6309\u952e\u5907\u6ce8\uff0c\u8bf7\u66f4\u6539"

    .line 351
    .line 352
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_a

    .line 356
    .line 357
    :cond_d
    invoke-virtual {v13, v11}, Lz7/o;->l(I)Lz7/p;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v6, v15}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    move-object/from16 v17, v1

    .line 370
    .line 371
    move-object/from16 p1, v3

    .line 372
    .line 373
    const/4 v5, 0x0

    .line 374
    :goto_1
    iget-object v1, v6, Lz7/o;->a:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-ge v5, v1, :cond_f

    .line 381
    .line 382
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_e

    .line 387
    .line 388
    invoke-virtual {v6, v5}, Lz7/o;->l(I)Lz7/p;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    move-object/from16 p1, v6

    .line 397
    .line 398
    goto :goto_2

    .line 399
    :cond_e
    move-object/from16 v1, p1

    .line 400
    .line 401
    invoke-static {v1, v4}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v6, v5}, Lz7/o;->l(I)Lz7/p;

    .line 406
    .line 407
    .line 408
    move-result-object v18

    .line 409
    move-object/from16 p1, v6

    .line 410
    .line 411
    invoke-virtual/range {v18 .. v18}, Lz7/p;->i()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 423
    .line 424
    move-object/from16 v6, p1

    .line 425
    .line 426
    move-object/from16 p1, v1

    .line 427
    .line 428
    goto :goto_1

    .line 429
    :cond_f
    move-object/from16 v1, p1

    .line 430
    .line 431
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-eqz v1, :cond_10

    .line 436
    .line 437
    const-string v1, "\u5b58\u5728\u76f8\u540c\u7684\u4e3b\u952e\u65e5\u5fd7\uff0c\u8bf7\u52ff\u91cd\u590d\u6dfb\u52a0"

    .line 438
    .line 439
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_a

    .line 443
    .line 444
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 445
    .line 446
    move-object/from16 v1, v17

    .line 447
    .line 448
    const/4 v5, 0x2

    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_11
    iget-object v1, v0, Lha/e9;->h:Landroid/widget/EditText;

    .line 452
    .line 453
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_12

    .line 470
    .line 471
    const-string v1, "\u8bf7\u8f93\u5165\u6309\u4e0b\u65e5\u5fd7"

    .line 472
    .line 473
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_a

    .line 477
    .line 478
    :cond_12
    iget-object v1, v0, Lha/e9;->w:Lx9/t2;

    .line 479
    .line 480
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    if-nez v1, :cond_13

    .line 485
    .line 486
    const-string v1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 487
    .line 488
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_a

    .line 492
    .line 493
    :cond_13
    iget-object v1, v0, Lha/e9;->i:Landroid/widget/EditText;

    .line 494
    .line 495
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    const-string v5, "keyType"

    .line 512
    .line 513
    if-eqz v1, :cond_15

    .line 514
    .line 515
    iget-object v1, v0, Lha/e9;->w:Lx9/t2;

    .line 516
    .line 517
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-eqz v6, :cond_15

    .line 530
    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    check-cast v6, Lz7/s;

    .line 536
    .line 537
    invoke-virtual {v6, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    const/4 v10, 0x2

    .line 546
    if-ne v6, v10, :cond_14

    .line 547
    .line 548
    new-instance v1, Lha/z6;

    .line 549
    .line 550
    new-instance v2, Lha/j2;

    .line 551
    .line 552
    const/4 v3, 0x4

    .line 553
    invoke-direct {v2, v3}, Lha/j2;-><init>(I)V

    .line 554
    .line 555
    .line 556
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 557
    .line 558
    iget-object v4, v0, Lha/a4;->b:Landroid/content/Context;

    .line 559
    .line 560
    const-string v19, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u8bbe\u7f6e\u677e\u5f00\u65e5\u5fd7\uff0c\u4f46\u4f60\u5374\u8bbe\u7f6e\u4e86\u957f\u6309\u64cd\u4f5c\n\u8bf7\u5220\u9664\u957f\u6309\u64cd\u4f5c\uff0c\u6216\u8005\u6dfb\u52a0\u677e\u5f00\u65e5\u5fd7"

    .line 561
    .line 562
    const-string v20, ""

    .line 563
    .line 564
    const-string v21, "\u597d\u7684"

    .line 565
    .line 566
    const-string v22, ""

    .line 567
    .line 568
    move-object/from16 v16, v1

    .line 569
    .line 570
    move-object/from16 v17, v3

    .line 571
    .line 572
    move-object/from16 v18, v4

    .line 573
    .line 574
    move-object/from16 v23, v2

    .line 575
    .line 576
    invoke-direct/range {v16 .. v23}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_a

    .line 583
    .line 584
    :cond_15
    iget-object v1, v0, Lha/e9;->j:Landroid/widget/EditText;

    .line 585
    .line 586
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    if-eqz v1, :cond_17

    .line 603
    .line 604
    iget-object v1, v0, Lha/e9;->w:Lx9/t2;

    .line 605
    .line 606
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 615
    .line 616
    .line 617
    move-result v6

    .line 618
    if-eqz v6, :cond_17

    .line 619
    .line 620
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    check-cast v6, Lz7/s;

    .line 625
    .line 626
    invoke-virtual {v6, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 631
    .line 632
    .line 633
    move-result v6

    .line 634
    const/4 v10, 0x3

    .line 635
    if-ne v6, v10, :cond_16

    .line 636
    .line 637
    new-instance v1, Lha/z6;

    .line 638
    .line 639
    new-instance v2, Lha/l2;

    .line 640
    .line 641
    const/4 v3, 0x4

    .line 642
    invoke-direct {v2, v3}, Lha/l2;-><init>(I)V

    .line 643
    .line 644
    .line 645
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 646
    .line 647
    iget-object v4, v0, Lha/a4;->b:Landroid/content/Context;

    .line 648
    .line 649
    const-string v20, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u8bbe\u7f6e\u7ec4\u5408\u65e5\u5fd7\uff0c\u4f46\u4f60\u5374\u8bbe\u7f6e\u4e86\u7ec4\u5408\u64cd\u4f5c\n\u8bf7\u5220\u9664\u7ec4\u5408\u64cd\u4f5c\uff0c\u6216\u8005\u6dfb\u52a0\u7ec4\u5408\u65e5\u5fd7"

    .line 650
    .line 651
    const-string v21, ""

    .line 652
    .line 653
    const-string v22, "\u597d\u7684"

    .line 654
    .line 655
    const-string v23, ""

    .line 656
    .line 657
    move-object/from16 v17, v1

    .line 658
    .line 659
    move-object/from16 v18, v3

    .line 660
    .line 661
    move-object/from16 v19, v4

    .line 662
    .line 663
    move-object/from16 v24, v2

    .line 664
    .line 665
    invoke-direct/range {v17 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_a

    .line 672
    .line 673
    :cond_17
    iget-object v1, v0, Lha/e9;->g:Landroid/widget/EditText;

    .line 674
    .line 675
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    iget-object v6, v0, Lha/e9;->A:Lz7/s;

    .line 680
    .line 681
    invoke-virtual {v6, v14, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    iget-object v1, v0, Lha/e9;->h:Landroid/widget/EditText;

    .line 685
    .line 686
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 691
    .line 692
    .line 693
    move-result v10

    .line 694
    if-eqz v10, :cond_18

    .line 695
    .line 696
    iput-object v3, v0, Lha/e9;->C:Ljava/lang/String;

    .line 697
    .line 698
    :cond_18
    const-string v10, "downLogcatBegin"

    .line 699
    .line 700
    iget-object v11, v0, Lha/e9;->C:Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v6, v10, v11}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    new-instance v10, Lz7/o;

    .line 706
    .line 707
    invoke-direct {v10}, Lz7/o;-><init>()V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6, v15, v10}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v6, v15}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 714
    .line 715
    .line 716
    move-result-object v10

    .line 717
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 718
    .line 719
    .line 720
    move-result v11

    .line 721
    if-nez v11, :cond_19

    .line 722
    .line 723
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    array-length v11, v1

    .line 728
    const/4 v13, 0x0

    .line 729
    :goto_3
    if-ge v13, v11, :cond_19

    .line 730
    .line 731
    aget-object v14, v1, v13

    .line 732
    .line 733
    invoke-virtual {v10, v14}, Lz7/o;->j(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    add-int/lit8 v13, v13, 0x1

    .line 737
    .line 738
    goto :goto_3

    .line 739
    :cond_19
    iget-object v1, v0, Lha/e9;->i:Landroid/widget/EditText;

    .line 740
    .line 741
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 746
    .line 747
    .line 748
    move-result v10

    .line 749
    if-eqz v10, :cond_1a

    .line 750
    .line 751
    iput-object v3, v0, Lha/e9;->D:Ljava/lang/String;

    .line 752
    .line 753
    :cond_1a
    const-string v10, "upLogcatBegin"

    .line 754
    .line 755
    iget-object v11, v0, Lha/e9;->D:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v6, v10, v11}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    new-instance v10, Lz7/o;

    .line 761
    .line 762
    invoke-direct {v10}, Lz7/o;-><init>()V

    .line 763
    .line 764
    .line 765
    const-string v11, "upLogcat"

    .line 766
    .line 767
    invoke-virtual {v6, v11, v10}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v6, v11}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 771
    .line 772
    .line 773
    move-result-object v10

    .line 774
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 775
    .line 776
    .line 777
    move-result v11

    .line 778
    if-nez v11, :cond_1b

    .line 779
    .line 780
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    array-length v11, v1

    .line 785
    const/4 v13, 0x0

    .line 786
    :goto_4
    if-ge v13, v11, :cond_1b

    .line 787
    .line 788
    aget-object v14, v1, v13

    .line 789
    .line 790
    invoke-virtual {v10, v14}, Lz7/o;->j(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    add-int/lit8 v13, v13, 0x1

    .line 794
    .line 795
    goto :goto_4

    .line 796
    :cond_1b
    iget-object v1, v0, Lha/e9;->j:Landroid/widget/EditText;

    .line 797
    .line 798
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 803
    .line 804
    .line 805
    move-result v10

    .line 806
    if-eqz v10, :cond_1c

    .line 807
    .line 808
    iput-object v3, v0, Lha/e9;->E:Ljava/lang/String;

    .line 809
    .line 810
    :cond_1c
    const-string v3, "zhLogcatBegin"

    .line 811
    .line 812
    iget-object v10, v0, Lha/e9;->E:Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v6, v3, v10}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    new-instance v3, Lz7/o;

    .line 818
    .line 819
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 820
    .line 821
    .line 822
    const-string v10, "zhLogcat"

    .line 823
    .line 824
    invoke-virtual {v6, v10, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v6, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 832
    .line 833
    .line 834
    move-result v10

    .line 835
    if-nez v10, :cond_1d

    .line 836
    .line 837
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    array-length v4, v1

    .line 842
    const/4 v10, 0x0

    .line 843
    :goto_5
    if-ge v10, v4, :cond_1d

    .line 844
    .line 845
    aget-object v11, v1, v10

    .line 846
    .line 847
    invoke-virtual {v3, v11}, Lz7/o;->j(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    add-int/lit8 v10, v10, 0x1

    .line 851
    .line 852
    goto :goto_5

    .line 853
    :cond_1d
    iget-object v1, v6, Lz7/s;->a:Lb8/n;

    .line 854
    .line 855
    const-string v3, "tag_bs"

    .line 856
    .line 857
    invoke-virtual {v1, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-nez v1, :cond_1e

    .line 862
    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 864
    .line 865
    .line 866
    move-result-wide v10

    .line 867
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-virtual {v6, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    :cond_1e
    iget-object v1, v0, Lha/e9;->G:Lx9/y0;

    .line 875
    .line 876
    const/4 v3, 0x0

    .line 877
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    check-cast v1, Lx9/x0;

    .line 882
    .line 883
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 884
    .line 885
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    const-string v3, "isOpen"

    .line 890
    .line 891
    invoke-virtual {v6, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 892
    .line 893
    .line 894
    iget-object v1, v0, Lha/e9;->G:Lx9/y0;

    .line 895
    .line 896
    const/4 v3, 0x1

    .line 897
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    check-cast v1, Lx9/x0;

    .line 902
    .line 903
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 904
    .line 905
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    const-string v3, "waitingUp"

    .line 910
    .line 911
    invoke-virtual {v6, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 912
    .line 913
    .line 914
    iget-object v1, v0, Lha/e9;->G:Lx9/y0;

    .line 915
    .line 916
    const/4 v3, 0x2

    .line 917
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    check-cast v1, Lx9/x0;

    .line 922
    .line 923
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 924
    .line 925
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    const-string v3, "one"

    .line 930
    .line 931
    invoke-virtual {v6, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 932
    .line 933
    .line 934
    iget-object v1, v0, Lha/e9;->G:Lx9/y0;

    .line 935
    .line 936
    const/4 v3, 0x3

    .line 937
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    check-cast v1, Lx9/x0;

    .line 942
    .line 943
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 944
    .line 945
    if-eqz v1, :cond_1f

    .line 946
    .line 947
    iget-object v1, v0, Lha/e9;->G:Lx9/y0;

    .line 948
    .line 949
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Lx9/x0;

    .line 954
    .line 955
    iget-object v1, v1, Lx9/x0;->a:Ljava/lang/String;

    .line 956
    .line 957
    iget-object v4, v0, Lha/e9;->G:Lx9/y0;

    .line 958
    .line 959
    invoke-virtual {v4, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v4

    .line 963
    check-cast v4, Lx9/x0;

    .line 964
    .line 965
    iget-object v3, v4, Lx9/x0;->a:Ljava/lang/String;

    .line 966
    .line 967
    const-string v4, "\u79d2"

    .line 968
    .line 969
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    move-result v3

    .line 973
    const/4 v4, 0x0

    .line 974
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    goto :goto_6

    .line 987
    :cond_1f
    const/4 v4, 0x0

    .line 988
    const/4 v3, 0x0

    .line 989
    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    const-string v3, "OutTimeOneMap"

    .line 994
    .line 995
    invoke-virtual {v6, v3, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 996
    .line 997
    .line 998
    iget-object v1, v0, Lha/e9;->G:Lx9/y0;

    .line 999
    .line 1000
    const/4 v3, 0x4

    .line 1001
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    check-cast v1, Lx9/x0;

    .line 1006
    .line 1007
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 1008
    .line 1009
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    const-string v3, "isConsistent"

    .line 1014
    .line 1015
    invoke-virtual {v6, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v1, Lz7/o;

    .line 1019
    .line 1020
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 1021
    .line 1022
    .line 1023
    const-string v3, "click"

    .line 1024
    .line 1025
    invoke-virtual {v6, v3, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1026
    .line 1027
    .line 1028
    new-instance v1, Lz7/o;

    .line 1029
    .line 1030
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    const-string v4, "doubleClick"

    .line 1034
    .line 1035
    invoke-virtual {v6, v4, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1036
    .line 1037
    .line 1038
    new-instance v1, Lz7/o;

    .line 1039
    .line 1040
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 1041
    .line 1042
    .line 1043
    const-string v10, "longClick"

    .line 1044
    .line 1045
    invoke-virtual {v6, v10, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1046
    .line 1047
    .line 1048
    new-instance v1, Lz7/o;

    .line 1049
    .line 1050
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 1051
    .line 1052
    .line 1053
    const-string v11, "zhClick"

    .line 1054
    .line 1055
    invoke-virtual {v6, v11, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 1056
    .line 1057
    .line 1058
    iget-object v1, v0, Lha/e9;->w:Lx9/t2;

    .line 1059
    .line 1060
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    :cond_20
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v13

    .line 1072
    if-eqz v13, :cond_24

    .line 1073
    .line 1074
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v13

    .line 1078
    check-cast v13, Lz7/s;

    .line 1079
    .line 1080
    invoke-virtual {v13, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v14

    .line 1084
    invoke-virtual {v14}, Lz7/p;->e()I

    .line 1085
    .line 1086
    .line 1087
    move-result v14

    .line 1088
    if-nez v14, :cond_21

    .line 1089
    .line 1090
    invoke-virtual {v6, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v14

    .line 1094
    invoke-virtual {v14, v13}, Lz7/o;->k(Lz7/p;)V

    .line 1095
    .line 1096
    .line 1097
    :goto_8
    const/4 v15, 0x3

    .line 1098
    goto :goto_7

    .line 1099
    :cond_21
    const/4 v15, 0x1

    .line 1100
    if-ne v14, v15, :cond_22

    .line 1101
    .line 1102
    invoke-virtual {v6, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v14

    .line 1106
    invoke-virtual {v14, v13}, Lz7/o;->k(Lz7/p;)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_8

    .line 1110
    :cond_22
    const/4 v15, 0x2

    .line 1111
    if-ne v14, v15, :cond_23

    .line 1112
    .line 1113
    invoke-virtual {v6, v10}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v14

    .line 1117
    invoke-virtual {v14, v13}, Lz7/o;->k(Lz7/p;)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_8

    .line 1121
    :cond_23
    const/4 v15, 0x3

    .line 1122
    if-ne v14, v15, :cond_20

    .line 1123
    .line 1124
    invoke-virtual {v6, v11}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v14

    .line 1128
    invoke-virtual {v14, v13}, Lz7/o;->k(Lz7/p;)V

    .line 1129
    .line 1130
    .line 1131
    goto :goto_7

    .line 1132
    :cond_24
    const/4 v13, -0x1

    .line 1133
    if-ne v7, v13, :cond_25

    .line 1134
    .line 1135
    invoke-virtual {v8, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    invoke-virtual {v1, v6}, Lz7/o;->k(Lz7/p;)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_9

    .line 1143
    :cond_25
    invoke-virtual {v8, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v1

    .line 1147
    invoke-virtual {v1, v7, v6}, Lz7/o;->o(ILz7/p;)V

    .line 1148
    .line 1149
    .line 1150
    :goto_9
    invoke-static {v9, v8}, Lq4/a;->V(Landroid/content/Context;Lz7/s;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-static {v9}, Lta/m;->g(Landroid/content/Context;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-interface {v2}, Lha/d9;->b()V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_a

    .line 1163
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    const v3, 0x7f0b0366

    .line 1168
    .line 1169
    .line 1170
    if-ne v1, v3, :cond_28

    .line 1171
    .line 1172
    const/4 v1, -0x1

    .line 1173
    if-eq v7, v1, :cond_27

    .line 1174
    .line 1175
    invoke-virtual {v8, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    invoke-virtual {v1, v7}, Lz7/o;->n(I)V

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v9, v8}, Lq4/a;->V(Landroid/content/Context;Lz7/s;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-static {v9}, Lta/m;->g(Landroid/content/Context;)V

    .line 1186
    .line 1187
    .line 1188
    :cond_27
    invoke-interface {v2}, Lha/d9;->delete()V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 1192
    .line 1193
    .line 1194
    :cond_28
    :goto_a
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "isConsistent"

    .line 5
    .line 6
    const-string v0, "one"

    .line 7
    .line 8
    const-string v1, "waitingUp"

    .line 9
    .line 10
    const-string v2, "isOpen"

    .line 11
    .line 12
    const-string v3, "OutTimeOneMap"

    .line 13
    .line 14
    iget-object v4, p0, Lha/e9;->A:Lz7/s;

    .line 15
    .line 16
    const v5, 0x7f0b04f8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 24
    .line 25
    iput-object v5, p0, Lha/e9;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 26
    .line 27
    new-instance v5, Lx9/y0;

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    invoke-direct {v5, v6}, Lx9/y0;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 34
    .line 35
    new-instance v7, Lx9/x0;

    .line 36
    .line 37
    const-string v8, "\u5f00\u542f"

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-direct {v7, v8, v9}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 47
    .line 48
    new-instance v7, Lx9/x0;

    .line 49
    .line 50
    const-string v8, "\u7b49\u677e\u5f00\u65e5\u5fd7"

    .line 51
    .line 52
    invoke-direct {v7, v8, v9}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 59
    .line 60
    new-instance v7, Lx9/x0;

    .line 61
    .line 62
    const-string v8, "\u4ec5\u89e6\u53d1\u4e00\u6b21"

    .line 63
    .line 64
    invoke-direct {v7, v8, v9}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 71
    .line 72
    new-instance v7, Lx9/x0;

    .line 73
    .line 74
    const-string v8, "N\u79d2\u5185\u4ec5\u89e6\u53d1\u4e00\u6b21"

    .line 75
    .line 76
    invoke-direct {v7, v8, v9}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 83
    .line 84
    new-instance v7, Lx9/x0;

    .line 85
    .line 86
    const-string v8, "\u6574\u6761\u4e00\u81f4\u65b9\u53ef\u89e6\u53d1"

    .line 87
    .line 88
    invoke-direct {v7, v8, v9}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, p0, Lha/e9;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 95
    .line 96
    new-instance v7, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 97
    .line 98
    iget-object v8, p0, Lha/a4;->b:Landroid/content/Context;

    .line 99
    .line 100
    invoke-direct {v7, v8, v9, v9}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    .line 105
    .line 106
    iget-object v5, p0, Lha/e9;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 107
    .line 108
    iget-object v7, p0, Lha/e9;->G:Lx9/y0;

    .line 109
    .line 110
    invoke-virtual {v5, v7}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 111
    .line 112
    .line 113
    iget-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 114
    .line 115
    new-instance v7, Lha/b9;

    .line 116
    .line 117
    const/4 v10, 0x1

    .line 118
    invoke-direct {v7, p0, v10}, Lha/b9;-><init>(Lha/e9;I)V

    .line 119
    .line 120
    .line 121
    iput-object v7, v5, Lc6/g;->e:Lc6/e;

    .line 122
    .line 123
    const v5, 0x7f0b0443

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Landroid/widget/EditText;

    .line 131
    .line 132
    iput-object v5, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 133
    .line 134
    const v5, 0x7f0b0433

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Landroid/widget/EditText;

    .line 142
    .line 143
    iput-object v5, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 144
    .line 145
    const v5, 0x7f0b0452

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Landroid/widget/EditText;

    .line 153
    .line 154
    iput-object v5, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 155
    .line 156
    const v5, 0x7f0b0463

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Landroid/widget/EditText;

    .line 164
    .line 165
    iput-object v5, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 166
    .line 167
    const v5, 0x7f0b03bb

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Landroid/widget/TextView;

    .line 175
    .line 176
    iput-object v5, p0, Lha/e9;->k:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 179
    .line 180
    .line 181
    const v5, 0x7f0b03bf

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Landroid/widget/TextView;

    .line 189
    .line 190
    iput-object v5, p0, Lha/e9;->l:Landroid/widget/TextView;

    .line 191
    .line 192
    const v5, 0x7f0b03c0

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    check-cast v5, Landroid/widget/TextView;

    .line 200
    .line 201
    iput-object v5, p0, Lha/e9;->m:Landroid/widget/TextView;

    .line 202
    .line 203
    const v5, 0x7f0b0365

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroid/widget/TextView;

    .line 211
    .line 212
    iput-object v5, p0, Lha/e9;->n:Landroid/widget/TextView;

    .line 213
    .line 214
    const v5, 0x7f0b0367

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Landroid/widget/TextView;

    .line 222
    .line 223
    iput-object v5, p0, Lha/e9;->p:Landroid/widget/TextView;

    .line 224
    .line 225
    const v5, 0x7f0b0368

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Landroid/widget/TextView;

    .line 233
    .line 234
    iput-object v5, p0, Lha/e9;->q:Landroid/widget/TextView;

    .line 235
    .line 236
    const v5, 0x7f0b036a

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Landroid/widget/TextView;

    .line 244
    .line 245
    iput-object v5, p0, Lha/e9;->r:Landroid/widget/TextView;

    .line 246
    .line 247
    const v5, 0x7f0b0369

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Landroid/widget/TextView;

    .line 255
    .line 256
    iput-object v5, p0, Lha/e9;->s:Landroid/widget/TextView;

    .line 257
    .line 258
    const v5, 0x7f0b0366

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    check-cast v5, Landroid/widget/TextView;

    .line 266
    .line 267
    iput-object v5, p0, Lha/e9;->t:Landroid/widget/TextView;

    .line 268
    .line 269
    iget-object v5, p0, Lha/e9;->k:Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v5, p0, Lha/e9;->l:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v5, p0, Lha/e9;->m:Landroid/widget/TextView;

    .line 280
    .line 281
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    iget-object v5, p0, Lha/e9;->n:Landroid/widget/TextView;

    .line 285
    .line 286
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object v5, p0, Lha/e9;->p:Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    iget-object v5, p0, Lha/e9;->q:Landroid/widget/TextView;

    .line 295
    .line 296
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v5, p0, Lha/e9;->r:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    iget-object v5, p0, Lha/e9;->s:Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object v5, p0, Lha/e9;->t:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    .line 314
    new-instance v5, Lha/n6;

    .line 315
    .line 316
    iget-object v7, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 317
    .line 318
    invoke-direct {v5, v7, v8}, Lha/n6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 319
    .line 320
    .line 321
    iput-object v5, p0, Lha/e9;->x:Lha/n6;

    .line 322
    .line 323
    const v5, 0x7f0b04f1

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    check-cast v5, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 331
    .line 332
    iput-object v5, p0, Lha/e9;->v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 333
    .line 334
    new-instance v7, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 335
    .line 336
    invoke-direct {v7, v8, v6, v9}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 340
    .line 341
    .line 342
    new-instance v5, Lx9/t2;

    .line 343
    .line 344
    invoke-direct {v5}, Lx9/t2;-><init>()V

    .line 345
    .line 346
    .line 347
    iput-object v5, p0, Lha/e9;->w:Lx9/t2;

    .line 348
    .line 349
    iget-object v7, p0, Lha/e9;->v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 350
    .line 351
    invoke-virtual {v7, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 352
    .line 353
    .line 354
    new-instance v5, Ld6/a;

    .line 355
    .line 356
    invoke-direct {v5}, Ld6/a;-><init>()V

    .line 357
    .line 358
    .line 359
    const/4 v7, 0x3

    .line 360
    iput v7, v5, Ld6/a;->h:I

    .line 361
    .line 362
    iput-boolean v9, v5, Ld6/a;->g:Z

    .line 363
    .line 364
    iget-object v8, p0, Lha/e9;->v:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 365
    .line 366
    invoke-virtual {v5, v8}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 367
    .line 368
    .line 369
    iget-object v8, p0, Lha/e9;->w:Lx9/t2;

    .line 370
    .line 371
    invoke-virtual {v5, v8}, Ld6/a;->g(Le6/a;)V

    .line 372
    .line 373
    .line 374
    iget-object v5, p0, Lha/e9;->w:Lx9/t2;

    .line 375
    .line 376
    new-instance v8, Lha/b9;

    .line 377
    .line 378
    const/4 v10, 0x2

    .line 379
    invoke-direct {v8, p0, v10}, Lha/b9;-><init>(Lha/e9;I)V

    .line 380
    .line 381
    .line 382
    iput-object v8, v5, Lc6/g;->e:Lc6/e;

    .line 383
    .line 384
    iget-object v5, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 385
    .line 386
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 387
    .line 388
    .line 389
    iget-object v5, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 390
    .line 391
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 392
    .line 393
    .line 394
    iget-object v5, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 395
    .line 396
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 397
    .line 398
    .line 399
    iget-object v5, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 400
    .line 401
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 402
    .line 403
    .line 404
    iget-object v5, p0, Lha/e9;->n:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 407
    .line 408
    .line 409
    iget-object v5, p0, Lha/e9;->p:Landroid/widget/TextView;

    .line 410
    .line 411
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 412
    .line 413
    .line 414
    iget-object v5, p0, Lha/e9;->q:Landroid/widget/TextView;

    .line 415
    .line 416
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 417
    .line 418
    .line 419
    iget-object v5, p0, Lha/e9;->r:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 422
    .line 423
    .line 424
    iget-object v5, p0, Lha/e9;->s:Landroid/widget/TextView;

    .line 425
    .line 426
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 427
    .line 428
    .line 429
    iget-object v5, p0, Lha/e9;->t:Landroid/widget/TextView;

    .line 430
    .line 431
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 432
    .line 433
    .line 434
    :try_start_0
    iget-object v5, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 435
    .line 436
    const-string v8, "name"

    .line 437
    .line 438
    invoke-virtual {v4, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 439
    .line 440
    .line 441
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-object v10, v4, Lz7/s;->a:Lb8/n;

    .line 443
    .line 444
    :try_start_1
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    const-string v5, "downLogcatBegin"

    .line 452
    .line 453
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    iput-object v5, p0, Lha/e9;->C:Ljava/lang/String;

    .line 462
    .line 463
    const-string v5, "upLogcatBegin"

    .line 464
    .line 465
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    iput-object v5, p0, Lha/e9;->D:Ljava/lang/String;

    .line 474
    .line 475
    const-string v5, "zhLogcatBegin"

    .line 476
    .line 477
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    iput-object v5, p0, Lha/e9;->E:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v10, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-nez v5, :cond_0

    .line 492
    .line 493
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 494
    .line 495
    invoke-virtual {v4, v2, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 496
    .line 497
    .line 498
    :cond_0
    iget-object v5, p0, Lha/e9;->G:Lx9/y0;

    .line 499
    .line 500
    invoke-virtual {v5, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    check-cast v5, Lx9/x0;

    .line 505
    .line 506
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    iput-boolean v2, v5, Lx9/x0;->b:Z

    .line 515
    .line 516
    iget-object v2, p0, Lha/e9;->G:Lx9/y0;

    .line 517
    .line 518
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-nez v2, :cond_1

    .line 526
    .line 527
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 528
    .line 529
    invoke-virtual {v4, v1, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    .line 531
    .line 532
    goto :goto_0

    .line 533
    :cond_1
    iget-object v2, p0, Lha/e9;->G:Lx9/y0;

    .line 534
    .line 535
    invoke-virtual {v2, v6}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    check-cast v2, Lx9/x0;

    .line 540
    .line 541
    invoke-virtual {v4, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    iput-boolean v1, v2, Lx9/x0;->b:Z

    .line 550
    .line 551
    iget-object v1, p0, Lha/e9;->G:Lx9/y0;

    .line 552
    .line 553
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 554
    .line 555
    .line 556
    :goto_0
    invoke-virtual {v10, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    const/4 v2, 0x2

    .line 561
    if-nez v1, :cond_2

    .line 562
    .line 563
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 564
    .line 565
    invoke-virtual {v4, v0, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    .line 567
    .line 568
    goto :goto_1

    .line 569
    :cond_2
    iget-object v1, p0, Lha/e9;->G:Lx9/y0;

    .line 570
    .line 571
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    check-cast v1, Lx9/x0;

    .line 576
    .line 577
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    iput-boolean v0, v1, Lx9/x0;->b:Z

    .line 586
    .line 587
    iget-object v0, p0, Lha/e9;->G:Lx9/y0;

    .line 588
    .line 589
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 590
    .line 591
    .line 592
    :goto_1
    invoke-virtual {v10, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 596
    const-string v1, "isOutTimeOneMap"

    .line 597
    .line 598
    if-nez v0, :cond_4

    .line 599
    .line 600
    :try_start_2
    invoke-virtual {v10, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_4

    .line 605
    .line 606
    invoke-virtual {v4, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_3

    .line 615
    .line 616
    goto :goto_2

    .line 617
    :cond_3
    const/4 v2, 0x0

    .line 618
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v4, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4, v1}, Lz7/s;->r(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    goto :goto_3

    .line 629
    :cond_4
    invoke-virtual {v10, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    if-eqz v0, :cond_5

    .line 634
    .line 635
    invoke-virtual {v4, v1}, Lz7/s;->r(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    :cond_5
    :goto_3
    invoke-virtual {v10, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-nez v0, :cond_6

    .line 643
    .line 644
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v4, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 649
    .line 650
    .line 651
    goto :goto_5

    .line 652
    :cond_6
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-lez v0, :cond_8

    .line 661
    .line 662
    iget-object v0, p0, Lha/e9;->G:Lx9/y0;

    .line 663
    .line 664
    invoke-virtual {v0, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    check-cast v0, Lx9/x0;

    .line 669
    .line 670
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    if-lez v1, :cond_7

    .line 679
    .line 680
    goto :goto_4

    .line 681
    :cond_7
    const/4 v6, 0x0

    .line 682
    :goto_4
    iput-boolean v6, v0, Lx9/x0;->b:Z

    .line 683
    .line 684
    iget-object v0, p0, Lha/e9;->G:Lx9/y0;

    .line 685
    .line 686
    invoke-virtual {v0, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Lx9/x0;

    .line 691
    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    const-string v2, "\u79d2\u5185\u4ec5\u89e6\u53d1\u4e00\u6b21"

    .line 709
    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    iput-object v1, v0, Lx9/x0;->a:Ljava/lang/String;

    .line 718
    .line 719
    iget-object v0, p0, Lha/e9;->G:Lx9/y0;

    .line 720
    .line 721
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 722
    .line 723
    .line 724
    :cond_8
    :goto_5
    invoke-virtual {v10, p1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    if-nez v0, :cond_9

    .line 729
    .line 730
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 731
    .line 732
    invoke-virtual {v4, p1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 733
    .line 734
    .line 735
    goto :goto_6

    .line 736
    :cond_9
    iget-object v0, p0, Lha/e9;->G:Lx9/y0;

    .line 737
    .line 738
    const/4 v1, 0x4

    .line 739
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    check-cast v0, Lx9/x0;

    .line 744
    .line 745
    invoke-virtual {v4, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    iput-boolean p1, v0, Lx9/x0;->b:Z

    .line 754
    .line 755
    iget-object p1, p0, Lha/e9;->G:Lx9/y0;

    .line 756
    .line 757
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 758
    .line 759
    .line 760
    :goto_6
    const-string p1, "downLogcat"

    .line 761
    .line 762
    invoke-virtual {v4, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 769
    .line 770
    .line 771
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 772
    const-string v1, "&&"

    .line 773
    .line 774
    const-string v2, ""

    .line 775
    .line 776
    if-nez v0, :cond_c

    .line 777
    .line 778
    move-object v3, v2

    .line 779
    const/4 v0, 0x0

    .line 780
    :goto_7
    :try_start_3
    iget-object v5, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 781
    .line 782
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    if-ge v0, v5, :cond_b

    .line 787
    .line 788
    if-nez v0, :cond_a

    .line 789
    .line 790
    invoke-virtual {p1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    goto :goto_8

    .line 799
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {p1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 826
    .line 827
    goto :goto_7

    .line 828
    :cond_b
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 829
    .line 830
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    .line 832
    .line 833
    :cond_c
    const-string p1, "upLogcat"

    .line 834
    .line 835
    invoke-virtual {v4, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 840
    .line 841
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    if-nez v0, :cond_f

    .line 846
    .line 847
    move-object v3, v2

    .line 848
    const/4 v0, 0x0

    .line 849
    :goto_9
    iget-object v5, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    if-ge v0, v5, :cond_e

    .line 856
    .line 857
    if-nez v0, :cond_d

    .line 858
    .line 859
    invoke-virtual {p1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    goto :goto_a

    .line 868
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 869
    .line 870
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {p1, v0}, Lz7/o;->l(I)Lz7/p;

    .line 880
    .line 881
    .line 882
    move-result-object v3

    .line 883
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    :goto_a
    add-int/lit8 v0, v0, 0x1

    .line 895
    .line 896
    goto :goto_9

    .line 897
    :cond_e
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 898
    .line 899
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    .line 901
    .line 902
    :cond_f
    const-string p1, "zhLogcat"

    .line 903
    .line 904
    invoke-virtual {v4, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 905
    .line 906
    .line 907
    move-result-object p1

    .line 908
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 909
    .line 910
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    if-nez v0, :cond_12

    .line 915
    .line 916
    :goto_b
    iget-object v0, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 917
    .line 918
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    if-ge v9, v0, :cond_11

    .line 923
    .line 924
    if-nez v9, :cond_10

    .line 925
    .line 926
    invoke-virtual {p1, v9}, Lz7/o;->l(I)Lz7/p;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    :goto_c
    move-object v2, v0

    .line 935
    goto :goto_d

    .line 936
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 937
    .line 938
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    invoke-virtual {p1, v9}, Lz7/o;->l(I)Lz7/p;

    .line 948
    .line 949
    .line 950
    move-result-object v2

    .line 951
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    goto :goto_c

    .line 963
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 964
    .line 965
    goto :goto_b

    .line 966
    :cond_11
    iget-object p1, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 967
    .line 968
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    .line 970
    .line 971
    :cond_12
    invoke-virtual {p0}, Lha/e9;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 972
    .line 973
    .line 974
    :catch_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_b

    .line 6
    .line 7
    const/16 p3, 0x14

    .line 8
    .line 9
    const v0, 0x7f0b0443

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b0463

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0b0452

    .line 16
    .line 17
    .line 18
    const v3, 0x7f0b0433

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne p2, p3, :cond_4

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p2, v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p2, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object p2, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sub-int/2addr p2, v4

    .line 57
    if-ne p1, p2, :cond_b

    .line 58
    .line 59
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 62
    .line 63
    .line 64
    return v4

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-ne p2, v3, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object p2, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object p2, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    sub-int/2addr p2, v4

    .line 98
    if-ne p1, p2, :cond_b

    .line 99
    .line 100
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 103
    .line 104
    .line 105
    return v4

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-ne p2, v2, :cond_2

    .line 111
    .line 112
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object p2, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iget-object p2, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    sub-int/2addr p2, v4

    .line 139
    if-ne p1, p2, :cond_b

    .line 140
    .line 141
    iget-object p1, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 144
    .line 145
    .line 146
    return v4

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-ne p1, v1, :cond_3

    .line 152
    .line 153
    iget-object p1, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iget-object p2, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object p2, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    sub-int/2addr p2, v4

    .line 180
    if-ne p1, p2, :cond_b

    .line 181
    .line 182
    iget-object p1, p0, Lha/e9;->n:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 185
    .line 186
    .line 187
    return v4

    .line 188
    :cond_3
    iget-object p1, p0, Lha/e9;->w:Lx9/t2;

    .line 189
    .line 190
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 191
    .line 192
    .line 193
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    if-nez p1, :cond_b

    .line 195
    .line 196
    return v4

    .line 197
    :cond_4
    const/16 p3, 0x13

    .line 198
    .line 199
    if-ne p2, p3, :cond_7

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-ne p2, v3, :cond_5

    .line 206
    .line 207
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    iget-object p2, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_b

    .line 228
    .line 229
    iget-object p1, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 232
    .line 233
    .line 234
    return v4

    .line 235
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-ne p2, v2, :cond_6

    .line 240
    .line 241
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iget-object p2, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 252
    .line 253
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_b

    .line 262
    .line 263
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 266
    .line 267
    .line 268
    return v4

    .line 269
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-ne p1, v1, :cond_b

    .line 274
    .line 275
    iget-object p1, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iget-object p2, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 286
    .line 287
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-nez p1, :cond_b

    .line 296
    .line 297
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 300
    .line 301
    .line 302
    return v4

    .line 303
    :cond_7
    const/16 p3, 0x16

    .line 304
    .line 305
    if-ne p2, p3, :cond_b

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-ne p2, v0, :cond_8

    .line 312
    .line 313
    iget-object p1, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    iget-object p2, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 324
    .line 325
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    if-ne p1, p2, :cond_b

    .line 334
    .line 335
    iget-object p1, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    iget-object p2, p0, Lha/e9;->g:Landroid/widget/EditText;

    .line 346
    .line 347
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    if-ne p1, p2, :cond_b

    .line 356
    .line 357
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 360
    .line 361
    .line 362
    return v4

    .line 363
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-ne p2, v3, :cond_9

    .line 368
    .line 369
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    iget-object p2, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-ne p1, p2, :cond_b

    .line 390
    .line 391
    iget-object p1, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    iget-object p2, p0, Lha/e9;->h:Landroid/widget/EditText;

    .line 402
    .line 403
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 404
    .line 405
    .line 406
    move-result-object p2

    .line 407
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    if-ne p1, p2, :cond_b

    .line 412
    .line 413
    iget-object p1, p0, Lha/e9;->k:Landroid/widget/TextView;

    .line 414
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 416
    .line 417
    .line 418
    return v4

    .line 419
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 420
    .line 421
    .line 422
    move-result p2

    .line 423
    if-ne p2, v2, :cond_a

    .line 424
    .line 425
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 426
    .line 427
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    iget-object p2, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 436
    .line 437
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 438
    .line 439
    .line 440
    move-result-object p2

    .line 441
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    if-ne p1, p2, :cond_b

    .line 446
    .line 447
    iget-object p1, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 448
    .line 449
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    iget-object p2, p0, Lha/e9;->i:Landroid/widget/EditText;

    .line 458
    .line 459
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 460
    .line 461
    .line 462
    move-result-object p2

    .line 463
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    if-ne p1, p2, :cond_b

    .line 468
    .line 469
    iget-object p1, p0, Lha/e9;->l:Landroid/widget/TextView;

    .line 470
    .line 471
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 472
    .line 473
    .line 474
    return v4

    .line 475
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    if-ne p1, v1, :cond_b

    .line 480
    .line 481
    iget-object p1, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 482
    .line 483
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    iget-object p2, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 492
    .line 493
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 494
    .line 495
    .line 496
    move-result-object p2

    .line 497
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 498
    .line 499
    .line 500
    move-result p2

    .line 501
    if-ne p1, p2, :cond_b

    .line 502
    .line 503
    iget-object p1, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 504
    .line 505
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    iget-object p2, p0, Lha/e9;->j:Landroid/widget/EditText;

    .line 514
    .line 515
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 516
    .line 517
    .line 518
    move-result-object p2

    .line 519
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 520
    .line 521
    .line 522
    move-result p2

    .line 523
    if-ne p1, p2, :cond_b

    .line 524
    .line 525
    iget-object p1, p0, Lha/e9;->m:Landroid/widget/TextView;

    .line 526
    .line 527
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 528
    .line 529
    .line 530
    return v4

    .line 531
    :catch_0
    :cond_b
    const/4 p1, 0x0

    .line 532
    return p1
.end method
