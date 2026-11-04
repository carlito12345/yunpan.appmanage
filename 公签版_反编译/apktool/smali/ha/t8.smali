.class public final Lha/t8;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/t2;

.field public F:Lha/j6;

.field public final G:Lz7/s;

.field public final H:I

.field public final I:Lz7/s;

.field public final K:Ld3/g;

.field public L:Z

.field public M:Z

.field public N:Z

.field public g:Landroid/widget/EditText;

.field public h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public p:Landroid/widget/ImageView;

.field public q:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public r:Landroid/widget/ImageView;

.field public s:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public t:Landroid/widget/ImageView;

.field public v:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;Lda/g;Lz7/s;ILd3/g;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00c6

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/t8;->G:Lz7/s;

    .line 8
    .line 9
    iput p4, p0, Lha/t8;->H:I

    .line 10
    .line 11
    iput-object p5, p0, Lha/t8;->K:Ld3/g;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-ne p4, p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lz7/s;

    .line 21
    .line 22
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lha/t8;->I:Lz7/s;

    .line 26
    .line 27
    :try_start_0
    const-string p3, "name"

    .line 28
    .line 29
    const-string p4, ""

    .line 30
    .line 31
    invoke-virtual {p1, p3, p4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "isOpen"

    .line 35
    .line 36
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1, p3, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    const-string p3, "keyCode"

    .line 42
    .line 43
    invoke-virtual {p1, p3, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    .line 45
    .line 46
    const-string p3, "zhKeyCode"

    .line 47
    .line 48
    invoke-virtual {p1, p3, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 49
    .line 50
    .line 51
    const-string p2, "zhModeDown"

    .line 52
    .line 53
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    .line 57
    .line 58
    const-string p2, "ljKey"

    .line 59
    .line 60
    invoke-virtual {p1, p2, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "ljZhKey"

    .line 64
    .line 65
    invoke-virtual {p1, p2, p4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "click"

    .line 69
    .line 70
    new-instance p3, Lz7/o;

    .line 71
    .line 72
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 76
    .line 77
    .line 78
    const-string p2, "doubleClick"

    .line 79
    .line 80
    new-instance p3, Lz7/o;

    .line 81
    .line 82
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 86
    .line 87
    .line 88
    const-string p2, "longClick"

    .line 89
    .line 90
    new-instance p3, Lz7/o;

    .line 91
    .line 92
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 96
    .line 97
    .line 98
    const-string p2, "zhClick"

    .line 99
    .line 100
    new-instance p3, Lz7/o;

    .line 101
    .line 102
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const-string p1, "keys"

    .line 110
    .line 111
    invoke-virtual {p3, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, p4}, Lz7/o;->l(I)Lz7/p;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lha/t8;->I:Lz7/s;

    .line 124
    .line 125
    :catch_0
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V
    .locals 8

    .line 1
    new-instance v0, Lha/t9;

    .line 2
    .line 3
    new-instance v7, Lf2/e0;

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lf2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1, p3, v7}, Lha/t9;-><init>(Landroid/app/Activity;Landroid/content/Context;ZLf2/e0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    .line 1
    new-instance v0, Lha/i8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lha/i8;-><init>(Lha/t8;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v1, v2, p1, v3, v0}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/t8;->I:Lz7/s;

    .line 2
    .line 3
    iget-object v1, p0, Lha/t8;->E:Lx9/t2;

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
    iget-object v4, p0, Lha/t8;->E:Lx9/t2;

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
    iget-object v4, p0, Lha/t8;->E:Lx9/t2;

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
    iget-object v4, p0, Lha/t8;->E:Lx9/t2;

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
    iget-object v1, p0, Lha/t8;->E:Lx9/t2;

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
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const v5, 0x7f0b03c2

    .line 14
    .line 15
    .line 16
    if-ne v4, v5, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lha/t8;->j:Landroid/widget/EditText;

    .line 19
    .line 20
    iget-object v3, v0, Lha/t8;->F:Lha/j6;

    .line 21
    .line 22
    new-instance v4, Lha/d7;

    .line 23
    .line 24
    invoke-direct {v4, v2, v1}, Lha/d7;-><init>(ILandroid/widget/EditText;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lha/j6;->a(Lea/c;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const v5, 0x7f0b03c1

    .line 37
    .line 38
    .line 39
    if-ne v4, v5, :cond_2

    .line 40
    .line 41
    iget-object v1, v0, Lha/t8;->k:Landroid/widget/EditText;

    .line 42
    .line 43
    iget-object v3, v0, Lha/t8;->F:Lha/j6;

    .line 44
    .line 45
    new-instance v4, Lha/d7;

    .line 46
    .line 47
    invoke-direct {v4, v2, v1}, Lha/d7;-><init>(ILandroid/widget/EditText;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Lha/j6;->a(Lea/c;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const v5, 0x7f0b0365

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    if-ne v4, v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Lha/t8;->b(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const v5, 0x7f0b0367

    .line 75
    .line 76
    .line 77
    if-ne v4, v5, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lha/t8;->b(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v5, 0x7f0b0368

    .line 89
    .line 90
    .line 91
    if-ne v4, v5, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lha/t8;->b(I)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const v5, 0x7f0b036a

    .line 103
    .line 104
    .line 105
    if-ne v4, v5, :cond_7

    .line 106
    .line 107
    iget-object v2, v0, Lha/t8;->k:Landroid/widget/EditText;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    const-string v1, "\u8bf7\u5148\u8bbe\u7f6e\u7ec4\u5408\u952e"

    .line 128
    .line 129
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    invoke-virtual {v0, v1}, Lha/t8;->b(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_8

    .line 137
    .line 138
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    iget-object v5, v0, Lha/t8;->K:Ld3/g;

    .line 143
    .line 144
    iget-object v7, v0, Lha/a4;->b:Landroid/content/Context;

    .line 145
    .line 146
    iget v8, v0, Lha/t8;->H:I

    .line 147
    .line 148
    iget-object v9, v0, Lha/t8;->G:Lz7/s;

    .line 149
    .line 150
    const-string v10, "UP_KEYMAP_ACC"

    .line 151
    .line 152
    const v11, 0x7f0b0369

    .line 153
    .line 154
    .line 155
    const-string v12, "keys"

    .line 156
    .line 157
    const/4 v13, -0x1

    .line 158
    if-ne v4, v11, :cond_18

    .line 159
    .line 160
    iget-object v4, v0, Lha/t8;->j:Landroid/widget/EditText;

    .line 161
    .line 162
    invoke-static {v4}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_8

    .line 171
    .line 172
    const-string v1, "\u8bf7\u5148\u8bbe\u7f6e\u4e3b\u952e"

    .line 173
    .line 174
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    iget-object v11, v0, Lha/t8;->g:Landroid/widget/EditText;

    .line 184
    .line 185
    invoke-static {v11}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    if-eqz v14, :cond_9

    .line 194
    .line 195
    const-string v1, "\u8bf7\u8f93\u5165\u6309\u952e\u5907\u6ce8\u540d"

    .line 196
    .line 197
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_8

    .line 201
    .line 202
    :cond_9
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    const-string v15, "keyCode"

    .line 207
    .line 208
    const-string v6, "name"

    .line 209
    .line 210
    if-ne v8, v13, :cond_c

    .line 211
    .line 212
    const/4 v13, 0x0

    .line 213
    :goto_0
    iget-object v2, v14, Lz7/o;->a:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-ge v13, v2, :cond_c

    .line 220
    .line 221
    invoke-virtual {v14, v13}, Lz7/o;->l(I)Lz7/p;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_a

    .line 242
    .line 243
    const-string v1, "\u5b58\u5728\u76f8\u540c\u7684\u6309\u952e\u5907\u6ce8\uff0c\u8bf7\u66f4\u6539"

    .line 244
    .line 245
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_8

    .line 249
    .line 250
    :cond_a
    invoke-static {v14, v13, v15}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-ne v2, v4, :cond_b

    .line 255
    .line 256
    const-string v1, "\u5df2\u8bbe\u7f6e\u8fc7\u6b64\u952e\u7801\uff0c\u8bf7\u52ff\u91cd\u590d\u6dfb\u52a0"

    .line 257
    .line 258
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_b
    add-int/2addr v13, v3

    .line 264
    goto :goto_0

    .line 265
    :cond_c
    iget-object v2, v0, Lha/t8;->E:Lx9/t2;

    .line 266
    .line 267
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_d

    .line 272
    .line 273
    const-string v1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 274
    .line 275
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_8

    .line 279
    .line 280
    :cond_d
    iget-object v2, v0, Lha/t8;->k:Landroid/widget/EditText;

    .line 281
    .line 282
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    const-string v4, "keyType"

    .line 299
    .line 300
    if-eqz v2, :cond_f

    .line 301
    .line 302
    iget-object v2, v0, Lha/t8;->E:Lx9/t2;

    .line 303
    .line 304
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_f

    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    check-cast v11, Lz7/s;

    .line 323
    .line 324
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    invoke-virtual {v11}, Lz7/p;->e()I

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    if-ne v11, v1, :cond_e

    .line 333
    .line 334
    new-instance v2, Lha/z6;

    .line 335
    .line 336
    new-instance v3, Lha/l2;

    .line 337
    .line 338
    invoke-direct {v3, v1}, Lha/l2;-><init>(I)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 342
    .line 343
    iget-object v4, v0, Lha/a4;->b:Landroid/content/Context;

    .line 344
    .line 345
    const-string v20, "\u68c0\u6d4b\u5230\u60a8\u6ca1\u6709\u8bbe\u7f6e\u7ec4\u5408\u952e\uff0c\u4f46\u4f60\u5374\u8bbe\u7f6e\u4e86\u7ec4\u5408\u64cd\u4f5c\n\u8bf7\u5220\u9664\u7ec4\u5408\u64cd\u4f5c\uff0c\u6216\u8005\u8bbe\u7f6e\u7ec4\u5408\u952e"

    .line 346
    .line 347
    const-string v21, ""

    .line 348
    .line 349
    const-string v22, "\u597d\u7684"

    .line 350
    .line 351
    const-string v23, ""

    .line 352
    .line 353
    move-object/from16 v17, v2

    .line 354
    .line 355
    move-object/from16 v18, v1

    .line 356
    .line 357
    move-object/from16 v19, v4

    .line 358
    .line 359
    move-object/from16 v24, v3

    .line 360
    .line 361
    invoke-direct/range {v17 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_8

    .line 368
    .line 369
    :cond_f
    iget-object v2, v0, Lha/t8;->g:Landroid/widget/EditText;

    .line 370
    .line 371
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    iget-object v11, v0, Lha/t8;->I:Lz7/s;

    .line 376
    .line 377
    invoke-virtual {v11, v6, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v2, v0, Lha/t8;->j:Landroid/widget/EditText;

    .line 381
    .line 382
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    if-eqz v6, :cond_10

    .line 391
    .line 392
    const/4 v2, -0x1

    .line 393
    goto :goto_1

    .line 394
    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v11, v15, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 403
    .line 404
    .line 405
    iget-object v2, v0, Lha/t8;->k:Landroid/widget/EditText;

    .line 406
    .line 407
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_11

    .line 416
    .line 417
    const/4 v2, -0x1

    .line 418
    goto :goto_2

    .line 419
    :cond_11
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    const-string v6, "zhKeyCode"

    .line 428
    .line 429
    invoke-virtual {v11, v6, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 430
    .line 431
    .line 432
    iget-boolean v2, v0, Lha/t8;->L:Z

    .line 433
    .line 434
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    const-string v6, "zhModeDown"

    .line 439
    .line 440
    invoke-virtual {v11, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    .line 442
    .line 443
    iget-boolean v2, v0, Lha/t8;->M:Z

    .line 444
    .line 445
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    const-string v6, "ljKey"

    .line 450
    .line 451
    invoke-virtual {v11, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 452
    .line 453
    .line 454
    iget-boolean v2, v0, Lha/t8;->N:Z

    .line 455
    .line 456
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    const-string v6, "ljZhKey"

    .line 461
    .line 462
    invoke-virtual {v11, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 463
    .line 464
    .line 465
    new-instance v2, Lz7/o;

    .line 466
    .line 467
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 468
    .line 469
    .line 470
    const-string v6, "click"

    .line 471
    .line 472
    invoke-virtual {v11, v6, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 473
    .line 474
    .line 475
    new-instance v2, Lz7/o;

    .line 476
    .line 477
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v13, "doubleClick"

    .line 481
    .line 482
    invoke-virtual {v11, v13, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 483
    .line 484
    .line 485
    new-instance v2, Lz7/o;

    .line 486
    .line 487
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 488
    .line 489
    .line 490
    const-string v14, "longClick"

    .line 491
    .line 492
    invoke-virtual {v11, v14, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 493
    .line 494
    .line 495
    new-instance v2, Lz7/o;

    .line 496
    .line 497
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 498
    .line 499
    .line 500
    const-string v15, "zhClick"

    .line 501
    .line 502
    invoke-virtual {v11, v15, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 503
    .line 504
    .line 505
    iget-object v2, v0, Lha/t8;->E:Lx9/t2;

    .line 506
    .line 507
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v16

    .line 519
    if-eqz v16, :cond_16

    .line 520
    .line 521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v16

    .line 525
    move-object/from16 v1, v16

    .line 526
    .line 527
    check-cast v1, Lz7/s;

    .line 528
    .line 529
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 530
    .line 531
    .line 532
    move-result-object v16

    .line 533
    invoke-virtual/range {v16 .. v16}, Lz7/p;->e()I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    if-nez v3, :cond_12

    .line 538
    .line 539
    invoke-virtual {v11, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual {v3, v1}, Lz7/o;->k(Lz7/p;)V

    .line 544
    .line 545
    .line 546
    move-object/from16 p1, v2

    .line 547
    .line 548
    :goto_4
    const/4 v2, 0x3

    .line 549
    goto :goto_5

    .line 550
    :cond_12
    move-object/from16 p1, v2

    .line 551
    .line 552
    const/4 v2, 0x1

    .line 553
    if-ne v3, v2, :cond_13

    .line 554
    .line 555
    invoke-virtual {v11, v13}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v2, v1}, Lz7/o;->k(Lz7/p;)V

    .line 560
    .line 561
    .line 562
    goto :goto_4

    .line 563
    :cond_13
    const/4 v2, 0x2

    .line 564
    if-ne v3, v2, :cond_14

    .line 565
    .line 566
    invoke-virtual {v11, v14}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-virtual {v3, v1}, Lz7/o;->k(Lz7/p;)V

    .line 571
    .line 572
    .line 573
    goto :goto_4

    .line 574
    :cond_14
    const/4 v2, 0x3

    .line 575
    if-ne v3, v2, :cond_15

    .line 576
    .line 577
    invoke-virtual {v11, v15}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    invoke-virtual {v3, v1}, Lz7/o;->k(Lz7/p;)V

    .line 582
    .line 583
    .line 584
    :cond_15
    :goto_5
    move-object/from16 v2, p1

    .line 585
    .line 586
    const/4 v1, 0x3

    .line 587
    const/4 v3, 0x1

    .line 588
    goto :goto_3

    .line 589
    :cond_16
    const/4 v1, -0x1

    .line 590
    if-ne v8, v1, :cond_17

    .line 591
    .line 592
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v1, v11}, Lz7/o;->k(Lz7/p;)V

    .line 597
    .line 598
    .line 599
    goto :goto_6

    .line 600
    :cond_17
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v1, v8, v11}, Lz7/o;->o(ILz7/p;)V

    .line 605
    .line 606
    .line 607
    :goto_6
    invoke-static {v7, v9}, Lq4/a;->Q(Landroid/content/Context;Lz7/s;)V

    .line 608
    .line 609
    .line 610
    invoke-static {v7, v10}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->F:I

    .line 617
    .line 618
    iget-object v1, v5, Ld3/g;->c:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;

    .line 621
    .line 622
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->y()V

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 626
    .line 627
    .line 628
    goto/16 :goto_8

    .line 629
    .line 630
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    const v2, 0x7f0b0366

    .line 635
    .line 636
    .line 637
    if-ne v1, v2, :cond_1c

    .line 638
    .line 639
    const/4 v1, -0x1

    .line 640
    if-eq v8, v1, :cond_19

    .line 641
    .line 642
    invoke-virtual {v9, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    invoke-virtual {v2, v8}, Lz7/o;->n(I)V

    .line 647
    .line 648
    .line 649
    invoke-static {v7, v9}, Lq4/a;->Q(Landroid/content/Context;Lz7/s;)V

    .line 650
    .line 651
    .line 652
    :cond_19
    invoke-static {v7, v10}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget v2, v5, Ld3/g;->b:I

    .line 656
    .line 657
    if-ne v2, v1, :cond_1a

    .line 658
    .line 659
    goto :goto_7

    .line 660
    :cond_1a
    iget-object v1, v5, Ld3/g;->c:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;

    .line 663
    .line 664
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

    .line 665
    .line 666
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    const/4 v4, 0x1

    .line 671
    if-ne v3, v4, :cond_1b

    .line 672
    .line 673
    const v3, 0x7f0b03ad

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 681
    .line 682
    .line 683
    :cond_1b
    iget-object v1, v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;->D:Lx9/s2;

    .line 684
    .line 685
    invoke-virtual {v1, v2}, Lc6/g;->C(I)V

    .line 686
    .line 687
    .line 688
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 689
    .line 690
    .line 691
    goto/16 :goto_8

    .line 692
    .line 693
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    const v2, 0x7f0b03f8

    .line 698
    .line 699
    .line 700
    const v3, 0x7f0802af

    .line 701
    .line 702
    .line 703
    const v4, 0x7f0802b0

    .line 704
    .line 705
    .line 706
    if-ne v1, v2, :cond_1d

    .line 707
    .line 708
    iget-boolean v1, v0, Lha/t8;->L:Z

    .line 709
    .line 710
    if-eqz v1, :cond_22

    .line 711
    .line 712
    const/4 v1, 0x0

    .line 713
    iput-boolean v1, v0, Lha/t8;->L:Z

    .line 714
    .line 715
    iget-object v1, v0, Lha/t8;->p:Landroid/widget/ImageView;

    .line 716
    .line 717
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    .line 719
    .line 720
    iget-object v1, v0, Lha/t8;->r:Landroid/widget/ImageView;

    .line 721
    .line 722
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    .line 724
    .line 725
    goto :goto_8

    .line 726
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    const v2, 0x7f0b03f5

    .line 731
    .line 732
    .line 733
    if-ne v1, v2, :cond_1e

    .line 734
    .line 735
    iget-boolean v1, v0, Lha/t8;->L:Z

    .line 736
    .line 737
    if-nez v1, :cond_22

    .line 738
    .line 739
    const/4 v1, 0x1

    .line 740
    iput-boolean v1, v0, Lha/t8;->L:Z

    .line 741
    .line 742
    iget-object v1, v0, Lha/t8;->p:Landroid/widget/ImageView;

    .line 743
    .line 744
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 745
    .line 746
    .line 747
    iget-object v1, v0, Lha/t8;->r:Landroid/widget/ImageView;

    .line 748
    .line 749
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    .line 751
    .line 752
    goto :goto_8

    .line 753
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    const v2, 0x7f0b038d

    .line 758
    .line 759
    .line 760
    const v3, 0x7f080237

    .line 761
    .line 762
    .line 763
    const v4, 0x7f080234

    .line 764
    .line 765
    .line 766
    if-ne v1, v2, :cond_20

    .line 767
    .line 768
    iget-boolean v1, v0, Lha/t8;->M:Z

    .line 769
    .line 770
    const/4 v2, 0x1

    .line 771
    xor-int/2addr v2, v1

    .line 772
    iput-boolean v2, v0, Lha/t8;->M:Z

    .line 773
    .line 774
    iget-object v2, v0, Lha/t8;->t:Landroid/widget/ImageView;

    .line 775
    .line 776
    if-nez v1, :cond_1f

    .line 777
    .line 778
    const v3, 0x7f080234

    .line 779
    .line 780
    .line 781
    :cond_1f
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 782
    .line 783
    .line 784
    goto :goto_8

    .line 785
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    const v2, 0x7f0b038a

    .line 790
    .line 791
    .line 792
    if-ne v1, v2, :cond_22

    .line 793
    .line 794
    iget-boolean v1, v0, Lha/t8;->N:Z

    .line 795
    .line 796
    const/4 v2, 0x1

    .line 797
    xor-int/2addr v2, v1

    .line 798
    iput-boolean v2, v0, Lha/t8;->N:Z

    .line 799
    .line 800
    iget-object v2, v0, Lha/t8;->w:Landroid/widget/ImageView;

    .line 801
    .line 802
    if-nez v1, :cond_21

    .line 803
    .line 804
    const v3, 0x7f080234

    .line 805
    .line 806
    .line 807
    :cond_21
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 808
    .line 809
    .line 810
    :cond_22
    :goto_8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "isOpen"

    .line 5
    .line 6
    iget-object v0, p0, Lha/t8;->I:Lz7/s;

    .line 7
    .line 8
    iget v1, p0, Lha/t8;->H:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, -0x1

    .line 13
    if-eq v1, v4, :cond_0

    .line 14
    .line 15
    const-string v1, "zhModeDown"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput-boolean v1, p0, Lha/t8;->L:Z

    .line 26
    .line 27
    const-string v1, "ljKey"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput-boolean v1, p0, Lha/t8;->M:Z

    .line 38
    .line 39
    const-string v1, "ljZhKey"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput-boolean v1, p0, Lha/t8;->N:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-boolean v2, p0, Lha/t8;->L:Z

    .line 53
    .line 54
    iput-boolean v3, p0, Lha/t8;->M:Z

    .line 55
    .line 56
    iput-boolean v3, p0, Lha/t8;->N:Z

    .line 57
    .line 58
    :goto_0
    const v1, 0x7f0b0568

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    iput-object v1, p0, Lha/t8;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    const v1, 0x7f0b0569

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .line 78
    iput-object v1, p0, Lha/t8;->i:Landroid/widget/ImageView;

    .line 79
    .line 80
    iget-object v1, p0, Lha/t8;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    new-instance v5, Lcom/google/android/material/datepicker/l;

    .line 83
    .line 84
    const/16 v6, 0x1b

    .line 85
    .line 86
    invoke-direct {v5, p0, v6}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0b0443

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/EditText;

    .line 100
    .line 101
    iput-object v1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 102
    .line 103
    const v1, 0x7f0b0466

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/widget/EditText;

    .line 111
    .line 112
    iput-object v1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 113
    .line 114
    const v1, 0x7f0b0464

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroid/widget/EditText;

    .line 122
    .line 123
    iput-object v1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 124
    .line 125
    const v1, 0x7f0b03c2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object v1, p0, Lha/t8;->l:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 137
    .line 138
    .line 139
    const v1, 0x7f0b03c1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object v1, p0, Lha/t8;->m:Landroid/widget/TextView;

    .line 149
    .line 150
    const v1, 0x7f0b03f8

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 158
    .line 159
    iput-object v1, p0, Lha/t8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 160
    .line 161
    const v1, 0x7f0b03f9

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroid/widget/ImageView;

    .line 169
    .line 170
    iput-object v1, p0, Lha/t8;->p:Landroid/widget/ImageView;

    .line 171
    .line 172
    const v1, 0x7f0b03f5

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 180
    .line 181
    iput-object v1, p0, Lha/t8;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 182
    .line 183
    const v1, 0x7f0b03f6

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Landroid/widget/ImageView;

    .line 191
    .line 192
    iput-object v1, p0, Lha/t8;->r:Landroid/widget/ImageView;

    .line 193
    .line 194
    iget-object v1, p0, Lha/t8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 195
    .line 196
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lha/t8;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 200
    .line 201
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lha/t8;->p:Landroid/widget/ImageView;

    .line 205
    .line 206
    iget-boolean v5, p0, Lha/t8;->L:Z

    .line 207
    .line 208
    const v6, 0x7f0802b0

    .line 209
    .line 210
    .line 211
    const v7, 0x7f0802af

    .line 212
    .line 213
    .line 214
    if-eqz v5, :cond_1

    .line 215
    .line 216
    const v5, 0x7f0802af

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_1
    const v5, 0x7f0802b0

    .line 221
    .line 222
    .line 223
    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lha/t8;->r:Landroid/widget/ImageView;

    .line 227
    .line 228
    iget-boolean v5, p0, Lha/t8;->L:Z

    .line 229
    .line 230
    if-eqz v5, :cond_2

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_2
    const v6, 0x7f0802af

    .line 234
    .line 235
    .line 236
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    .line 238
    .line 239
    const v1, 0x7f0b038d

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 247
    .line 248
    iput-object v1, p0, Lha/t8;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 249
    .line 250
    const v1, 0x7f0b038e

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroid/widget/ImageView;

    .line 258
    .line 259
    iput-object v1, p0, Lha/t8;->t:Landroid/widget/ImageView;

    .line 260
    .line 261
    const v1, 0x7f0b038a

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 269
    .line 270
    iput-object v1, p0, Lha/t8;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 271
    .line 272
    const v1, 0x7f0b038b

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Landroid/widget/ImageView;

    .line 280
    .line 281
    iput-object v1, p0, Lha/t8;->w:Landroid/widget/ImageView;

    .line 282
    .line 283
    iget-object v1, p0, Lha/t8;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 284
    .line 285
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lha/t8;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 289
    .line 290
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lha/t8;->t:Landroid/widget/ImageView;

    .line 294
    .line 295
    iget-boolean v5, p0, Lha/t8;->M:Z

    .line 296
    .line 297
    const v6, 0x7f080237

    .line 298
    .line 299
    .line 300
    const v7, 0x7f080234

    .line 301
    .line 302
    .line 303
    if-eqz v5, :cond_3

    .line 304
    .line 305
    const v5, 0x7f080234

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_3
    const v5, 0x7f080237

    .line 310
    .line 311
    .line 312
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, p0, Lha/t8;->w:Landroid/widget/ImageView;

    .line 316
    .line 317
    iget-boolean v5, p0, Lha/t8;->N:Z

    .line 318
    .line 319
    if-eqz v5, :cond_4

    .line 320
    .line 321
    const v5, 0x7f080234

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_4
    const v5, 0x7f080237

    .line 326
    .line 327
    .line 328
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    .line 330
    .line 331
    const v1, 0x7f0b0365

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Landroid/widget/TextView;

    .line 339
    .line 340
    iput-object v1, p0, Lha/t8;->x:Landroid/widget/TextView;

    .line 341
    .line 342
    const v1, 0x7f0b0367

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, Landroid/widget/TextView;

    .line 350
    .line 351
    iput-object v1, p0, Lha/t8;->y:Landroid/widget/TextView;

    .line 352
    .line 353
    const v1, 0x7f0b0368

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Landroid/widget/TextView;

    .line 361
    .line 362
    iput-object v1, p0, Lha/t8;->z:Landroid/widget/TextView;

    .line 363
    .line 364
    const v1, 0x7f0b036a

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Landroid/widget/TextView;

    .line 372
    .line 373
    iput-object v1, p0, Lha/t8;->A:Landroid/widget/TextView;

    .line 374
    .line 375
    const v1, 0x7f0b0369

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Landroid/widget/TextView;

    .line 383
    .line 384
    iput-object v1, p0, Lha/t8;->B:Landroid/widget/TextView;

    .line 385
    .line 386
    const v1, 0x7f0b0366

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Landroid/widget/TextView;

    .line 394
    .line 395
    iput-object v1, p0, Lha/t8;->C:Landroid/widget/TextView;

    .line 396
    .line 397
    iget-object v1, p0, Lha/t8;->l:Landroid/widget/TextView;

    .line 398
    .line 399
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    .line 401
    .line 402
    iget-object v1, p0, Lha/t8;->m:Landroid/widget/TextView;

    .line 403
    .line 404
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, p0, Lha/t8;->x:Landroid/widget/TextView;

    .line 408
    .line 409
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    .line 411
    .line 412
    iget-object v1, p0, Lha/t8;->y:Landroid/widget/TextView;

    .line 413
    .line 414
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, p0, Lha/t8;->z:Landroid/widget/TextView;

    .line 418
    .line 419
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, p0, Lha/t8;->A:Landroid/widget/TextView;

    .line 423
    .line 424
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, p0, Lha/t8;->B:Landroid/widget/TextView;

    .line 428
    .line 429
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    .line 431
    .line 432
    iget-object v1, p0, Lha/t8;->C:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    new-instance v1, Lha/j6;

    .line 438
    .line 439
    iget-object v5, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 440
    .line 441
    iget-object v8, p0, Lha/a4;->b:Landroid/content/Context;

    .line 442
    .line 443
    invoke-direct {v1, v5, v8}, Lha/j6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 444
    .line 445
    .line 446
    iput-object v1, p0, Lha/t8;->F:Lha/j6;

    .line 447
    .line 448
    const v1, 0x7f0b04f1

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 456
    .line 457
    iput-object v1, p0, Lha/t8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 458
    .line 459
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 460
    .line 461
    invoke-direct {v5, v8, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 465
    .line 466
    .line 467
    new-instance v1, Lx9/t2;

    .line 468
    .line 469
    invoke-direct {v1}, Lx9/t2;-><init>()V

    .line 470
    .line 471
    .line 472
    iput-object v1, p0, Lha/t8;->E:Lx9/t2;

    .line 473
    .line 474
    iget-object v5, p0, Lha/t8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 475
    .line 476
    invoke-virtual {v5, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 477
    .line 478
    .line 479
    new-instance v1, Ld6/a;

    .line 480
    .line 481
    invoke-direct {v1}, Ld6/a;-><init>()V

    .line 482
    .line 483
    .line 484
    const/4 v5, 0x3

    .line 485
    iput v5, v1, Ld6/a;->h:I

    .line 486
    .line 487
    iput-boolean v2, v1, Ld6/a;->g:Z

    .line 488
    .line 489
    iget-object v2, p0, Lha/t8;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 492
    .line 493
    .line 494
    iget-object v2, p0, Lha/t8;->E:Lx9/t2;

    .line 495
    .line 496
    invoke-virtual {v1, v2}, Ld6/a;->g(Le6/a;)V

    .line 497
    .line 498
    .line 499
    iget-object v1, p0, Lha/t8;->E:Lx9/t2;

    .line 500
    .line 501
    new-instance v2, Lha/i8;

    .line 502
    .line 503
    invoke-direct {v2, p0}, Lha/i8;-><init>(Lha/t8;)V

    .line 504
    .line 505
    .line 506
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 507
    .line 508
    iget-object v1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 509
    .line 510
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 514
    .line 515
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 516
    .line 517
    .line 518
    iget-object v1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 519
    .line 520
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, p0, Lha/t8;->x:Landroid/widget/TextView;

    .line 524
    .line 525
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 526
    .line 527
    .line 528
    iget-object v1, p0, Lha/t8;->y:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 531
    .line 532
    .line 533
    iget-object v1, p0, Lha/t8;->z:Landroid/widget/TextView;

    .line 534
    .line 535
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 536
    .line 537
    .line 538
    iget-object v1, p0, Lha/t8;->A:Landroid/widget/TextView;

    .line 539
    .line 540
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 541
    .line 542
    .line 543
    iget-object v1, p0, Lha/t8;->B:Landroid/widget/TextView;

    .line 544
    .line 545
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 546
    .line 547
    .line 548
    iget-object v1, p0, Lha/t8;->C:Landroid/widget/TextView;

    .line 549
    .line 550
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 551
    .line 552
    .line 553
    :try_start_0
    iget-object v1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 554
    .line 555
    const-string v2, "name"

    .line 556
    .line 557
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    .line 567
    .line 568
    const-string v1, "keyCode"

    .line 569
    .line 570
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-eq v1, v4, :cond_5

    .line 579
    .line 580
    iget-object v2, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 581
    .line 582
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    .line 588
    .line 589
    :cond_5
    const-string v1, "zhKeyCode"

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    if-eq v1, v4, :cond_6

    .line 600
    .line 601
    iget-object v2, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 602
    .line 603
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    :cond_6
    iget-object v1, v0, Lz7/s;->a:Lb8/n;

    .line 611
    .line 612
    invoke-virtual {v1, p1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-eqz v1, :cond_7

    .line 617
    .line 618
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    goto :goto_5

    .line 627
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 628
    .line 629
    invoke-virtual {v0, p1, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 630
    .line 631
    .line 632
    :goto_5
    iget-object p1, p0, Lha/t8;->i:Landroid/widget/ImageView;

    .line 633
    .line 634
    if-eqz v3, :cond_8

    .line 635
    .line 636
    const v6, 0x7f080234

    .line 637
    .line 638
    .line 639
    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p0}, Lha/t8;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .line 644
    .line 645
    :catch_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_8

    .line 6
    .line 7
    const/16 p3, 0x14

    .line 8
    .line 9
    const v0, 0x7f0b0443

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b0464

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0b0466

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne p2, p3, :cond_3

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-ne p2, v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p2, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object p2, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    sub-int/2addr p2, v3

    .line 54
    if-ne p1, p2, :cond_8

    .line 55
    .line 56
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v2, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p2, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object p2, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    sub-int/2addr p2, v3

    .line 95
    if-ne p1, p2, :cond_8

    .line 96
    .line 97
    iget-object p1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 100
    .line 101
    .line 102
    return v3

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ne p1, v1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iget-object p2, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget-object p2, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    sub-int/2addr p2, v3

    .line 136
    if-ne p1, p2, :cond_8

    .line 137
    .line 138
    iget-object p1, p0, Lha/t8;->x:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 141
    .line 142
    .line 143
    return v3

    .line 144
    :cond_2
    iget-object p1, p0, Lha/t8;->E:Lx9/t2;

    .line 145
    .line 146
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 147
    .line 148
    .line 149
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    if-nez p1, :cond_8

    .line 151
    .line 152
    return v3

    .line 153
    :cond_3
    const/16 p3, 0x13

    .line 154
    .line 155
    if-ne p2, p3, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-ne p2, v2, :cond_4

    .line 162
    .line 163
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object p2, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_8

    .line 184
    .line 185
    iget-object p1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 188
    .line 189
    .line 190
    return v3

    .line 191
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-ne p1, v1, :cond_8

    .line 196
    .line 197
    iget-object p1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iget-object p2, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_8

    .line 218
    .line 219
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 222
    .line 223
    .line 224
    return v3

    .line 225
    :cond_5
    const/16 p3, 0x16

    .line 226
    .line 227
    if-ne p2, p3, :cond_8

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-ne p2, v0, :cond_6

    .line 234
    .line 235
    iget-object p1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    iget-object p2, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-ne p1, p2, :cond_8

    .line 256
    .line 257
    iget-object p1, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    iget-object p2, p0, Lha/t8;->g:Landroid/widget/EditText;

    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-ne p1, p2, :cond_8

    .line 278
    .line 279
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 282
    .line 283
    .line 284
    return v3

    .line 285
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    if-ne p2, v2, :cond_7

    .line 290
    .line 291
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    iget-object p2, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-ne p1, p2, :cond_8

    .line 312
    .line 313
    iget-object p1, p0, Lha/t8;->j:Landroid/widget/EditText;

    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    iget-object p2, p0, Lha/t8;->j:Landroid/widget/EditText;

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
    if-ne p1, p2, :cond_8

    .line 334
    .line 335
    iget-object p1, p0, Lha/t8;->l:Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 338
    .line 339
    .line 340
    return v3

    .line 341
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-ne p1, v1, :cond_8

    .line 346
    .line 347
    iget-object p1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    iget-object p2, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 358
    .line 359
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-ne p1, p2, :cond_8

    .line 368
    .line 369
    iget-object p1, p0, Lha/t8;->k:Landroid/widget/EditText;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    iget-object p2, p0, Lha/t8;->k:Landroid/widget/EditText;

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
    if-ne p1, p2, :cond_8

    .line 390
    .line 391
    iget-object p1, p0, Lha/t8;->m:Landroid/widget/TextView;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 394
    .line 395
    .line 396
    return v3

    .line 397
    :catch_0
    :cond_8
    const/4 p1, 0x0

    .line 398
    return p1
.end method
